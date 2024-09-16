# frozen_string_literal: true

module ExpenseModule
  class HomeController < ApplicationController
    def index
      # 現在の年月を取得
      current_month_start = Date.current.beginning_of_month
      current_month_end = Date.current.end_of_month
      @current_time = Time.current

      @selected_month = params[:month].present? ? params[:month].to_i : Time.current

      expense_categories = combined_categories_for(ExpenseCategory, current_user.id)
      # 予想支出の合計
      @total_expected_amount = expense_categories.sum{|category| category.expected_amount || 0}

      # 支出の合計・収入の合計
      _, @total_expenses_amount, @total_incomes_amount = calculate_difference_price current_user.id, current_month_start, current_month_end
    end

    def search
      @current_time = Time.current
      selected_month = params[:month].to_i
      selected_year = @current_time.year

      @selected_month = if params[:month].present?
        if params[:month].to_i == @current_time.month
          # 現在の月であれば、日にちを現在の日にちにする
          Time.zone.local(@current_time.year, params[:month].to_i, @current_time.day)
        else
          # 現在の月でなければ、1日にする
          Time.zone.local(@current_time.year, params[:month].to_i, 1)
        end
      else
        # params[:month]がない場合は現在の時刻を使う
        @current_time
      end

      expense_categories = combined_categories_for(ExpenseCategory, current_user.id)
      # 予想支出の合計
      @total_expected_amount = expense_categories.sum{|category| category.expected_amount || 0}

      current_month_start = Date.new(selected_year, selected_month, 1).beginning_of_month
      current_month_end = current_month_start.end_of_month

      _, @total_expenses_amount, @total_incomes_amount = calculate_difference_price(current_user.id, current_month_start, current_month_end)

      render :index
    end

    def export_pdf; end
  end
end
