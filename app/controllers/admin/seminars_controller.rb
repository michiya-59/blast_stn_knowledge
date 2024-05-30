# frozen_string_literal: true

module Admin
  class SeminarsController < ApplicationController
    before_action :seminar_load_data, only: %i(index new edit update)

    def index
      @admin_seminar = Seminar.new
      @search_year, @search_month = set_search_date params, session[:search_seminars_year], session[:search_seminars_month]
    end

    def new; end

    def edit; end

    def create
      @admin_seminar = Seminar.new(seminars_params)
      @admin_seminar = convert_datatime params, @admin_seminar
      if @admin_seminar.save
        flash[:success] = "講義情報の作成が完了しました。"
      else
        flash[:form_error] = @admin_seminar.errors.full_messages
      end
      redirect_to admin_seminars_path
    end

    def update
      @seminar = convert_datatime params, @seminar

      if @seminar.update(seminars_params)
        flash[:success] = "講義情報の更新が完了しました。"
        if session[:admin_seminars_page].present? && session[:search_seminars_year] && session[:search_seminars_month]
          redirect_to admin_seminars_path(page: session[:admin_seminars_page], search_month: session[:search_seminars_month], search_year: session[:search_seminars_year])
        else
          redirect_to admin_seminars_path
        end
      else
        flash[:form_error] = @seminar.errors.full_messages
        redirect_to edit_admin_seminar_path(params[:id])
      end
    end

    def destroy
      @seminar = Seminar.find(params[:id])
      if @seminar.destroy
        flash[:delete_success] = "講義情報が削除されました。"
        if session[:admin_seminars_page].present? && session[:search_seminars_year] && session[:search_seminars_month]
          redirect_to admin_seminars_path(page: session[:admin_seminars_page], search_month: session[:search_seminars_month], search_year: session[:search_seminars_year])
        else
          redirect_to admin_seminars_path
        end
      else
        flash[:error] = "講義情報の削除に失敗しました。"
        redirect_to admin_seminars_path
      end
    end

    private

    def seminar_load_data
      @seminar = params[:id].present? ? Seminar.find(params[:id]) : Seminar.new
      session[:search_seminars_year] = params[:search_year] if params[:search_year].present?
      session[:search_seminars_month] = params[:search_month] if params[:search_month].present?
      session[:admin_seminars_page] = params[:page] if params[:page].present?

      @seminar_info_all = if session[:search_seminars_year].present? && session[:search_seminars_month].present?
                            Seminar.search_by_year_and_month(session[:search_seminars_year].to_i, session[:search_seminars_month].to_i)
                          else
                            Seminar.find_seminars
                          end

      @seminar_infos = Kaminari.paginate_array(@seminar_info_all).page(params[:page]).per(10)
    end

    def seminars_params
      params.require(:seminar).permit(:title, :year, :month, :day, :start_time, :end_time, :teacher, :seminar_type)
    end

    def convert_datatime params, seminar_info
      if params[:seminar].present? && (params[:seminar][:year].present? && params[:seminar][:month].present? && params[:seminar][:day].present?)
        seminar_info.year = params[:seminar][:year].to_i
        seminar_info.month = params[:seminar][:month].to_i
        seminar_info.day = params[:seminar][:day].to_i
      end
      seminar_info
    end
  end
end
