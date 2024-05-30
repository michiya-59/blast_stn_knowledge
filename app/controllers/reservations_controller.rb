# frozen_string_literal: true

class ReservationsController < ApplicationController
  before_action :seminar_load_data
  before_action :set_date, only: %i(index reserved_list update member_reservation_list)

  def index; end

  def create
    @seminar = Reservation.new(reserve_params)
    if @seminar.save
      flash[:success] = "講義に予約しました。"
      redirect_to reservations_path
    else
      render :index
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
  end

  def reserve_confirm
    @seminar = Seminar.find(params[:id])
    @reservation = Reservation.new
  end

  def reserved_list
    @seminars = if session[:search_seminars_year].present? && session[:search_seminars_month].present?
                  Seminar.find_user_seminars current_user&.id, session[:search_seminars_year].to_i, session[:search_seminars_month].to_i, @join_status
                else
                  Seminar.find_user_seminars current_user&.id, Time.zone.now.year.to_i, Time.zone.now.month.to_i, @join_status
                end
    update_join_status_if_necessary @seminars
  end

  def reserved_confirmation
    @reservation = Reservation.get_cancel_target_seminar params[:id].to_i
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    flash[:success] = "講義をキャンセルしました。"
    redirect_to reserved_list_reservations_path
  end

  def member_reservation_list; end

  def member_reservation_list_detail
    # 選択肢した講義の情報を取得
    @chose_serminar = Seminar.find params[:id]
    # 現在ログインしているユーザから派生している全ユーザのユーザIDを取得
    descendants = Relationship.find_descendants params[:parent_id]
    # 現在ログインしているユーザから派生している全ユーザが予約している予約情報を取得
    child_account_reservations = Reservation.get_child_accounts_reservations descendants
    # 選択した講義情報を取得する
    @chose_serminars = child_account_reservations.select{|child_account_reservation| child_account_reservation.seminar_id == @chose_serminar&.id}
  end

  private

  def seminar_load_data
    session[:search_seminars_year] = params[:search_year] if params[:search_year].present?
    session[:search_seminars_month] = params[:search_month] if params[:search_month].present?
    session[:search_join_status] = (params[:join_status].presence || "")

    @seminars = if session[:search_seminars_year].present? && session[:search_seminars_month].present?
                  Seminar.search_by_year_and_month(session[:search_seminars_year].to_i, session[:search_seminars_month].to_i)
                else
                  Seminar.find_seminars
                end
  end

  def set_date
    @search_year, @search_month = set_search_date params, session[:search_seminars_year], session[:search_seminars_month]
    @join_status = session[:search_join_status]
  end

  def reserve_params
    params.require(:reservation).permit(:user_id, :seminar_id, :join_status)
  end

  # 講義実施時間が現在時刻より後の場合にjoin_statusを更新
  def update_join_status_if_necessary seminars
    seminars.each do |seminar|
      next unless seminar.join_status == 9

      # start_timeから時と分を抽出して整数に変換
      start_hour, start_minute = seminar.start_time.split(":").map(&:to_i)
      # 講義実施時間をDateTimeオブジェクトに変換
      seminar_time = Time.zone.local(seminar.year, seminar.month, seminar.day, start_hour, start_minute)

      # 現在時刻より後の場合にjoin_statusを1に更新
      if seminar_time <= Time.current
        Reservation.where(id: seminar.reservation_id).update(join_status: 1)
      end
    end
  end
end
