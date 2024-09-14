# frozen_string_literal: true

require "line_notifier"
require "active_support/core_ext/numeric/conversions"

class ApplicationController < ActionController::Base
  include(SessionsHelper)
  include(OrganizationsHelper)
  before_action :authenticate_user, :redirect_not_logged_in, :redirect_not_session, :set_session_expiration
  around_action :catch_exception if Rails.env.production?

  # ログインされていない場合またはURLが直接操作されてた場合の処理
  def authenticate_user
    return if logged_in? && valid_referrer?
    return if request.original_url.include?("tmp_member_infos")

    reset_session
    flash[:logout] = "不正なアクセスがありました。<br>再度ログインをしてください。"
    redirect_to login_path
  end

  # ログインされていない場合は、ログイン画面にリダイレクトさせる処理
  def redirect_not_logged_in
    return if current_user
    return if request.original_url.include?("tmp_member_infos")

    reset_session
    flash[:logout] = "ログインされてません。ログインしてください。"
    redirect_to login_path
  end

  # 60分でセッションが切れて、ログアウトする処理
  def redirect_not_session
    return unless session[:expires_at]
    return if request.original_url.include?("tmp_member_infos")

    # session[:expires_at] を Time オブジェクトとして読み込み
    expires_at = Time.zone.parse(session[:expires_at].to_s)
    # 現在の時間との差を比較
    session_out_time = Time.zone.now - expires_at

    return unless session_out_time > 0

    reset_session
    flash[:logout] = "セッションが切れました<br>（60分間ご利用でない場合、または不正アクセスのため）"
    redirect_to login_path
  end

  # 操作時間の60set_search_date分前の時間を格納
  def set_session_expiration
    session[:expires_at] = 60.minutes.from_now
  end

  # URLが直接操作されているかどうかの確認
  def valid_referrer?
    request.referer.present? && request.referer.include?(request.base_url)
  end

  def set_search_date params, search_seminars_year, search_seminars_month
    if search_seminars_year.present? && search_seminars_month.present?
      search_year = search_seminars_year
      search_month = search_seminars_month
    elsif params[:search_year].present?
      search_year = params[:search_year]
      search_month = params[:search_month]
    else
      search_year = Time.zone.today.year
      search_month = Time.zone.today.month
    end
    [search_year, search_month]
  end

  def validete_uniq? value, type
    if type == "login_id"
      uniq_value = User.find_by(login_id: value)
    elsif type == "email"
      uniq_value = User.find_by(email: value)
    end

    uniq_value.present?
  end

  def render_404
    respond_to do |format|
      format.html{render "errors/not_found", status: :not_found}
      format.json{render json: {error: "Not found"}, status: :not_found}
      format.any{head :not_found}
    end
  end

  private

  def catch_exception
    yield
  rescue ActiveRecord::RecordNotFound, ActionController::RoutingError => e
    render_404(e)
  rescue StandardError => e
    notify_and_render_exception(e)
  end

  def render_500 exception
    LineNotifier.notify_error(exception)
    logger.error "Internal Server Error: #{exception.message}"
    render "errors/internal_server_error", status: :internal_server_error
  end

  # 通知してから例外を再発生させるメソッド
  def notify_and_render_exception exception
    case exception
    when ActiveRecord::RecordNotFound, ActionController::RoutingError
      render_404(exception)
    else
      render_500(exception)
    end
  end
end
