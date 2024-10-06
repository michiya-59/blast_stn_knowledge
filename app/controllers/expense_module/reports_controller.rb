# frozen_string_literal: true

module ExpenseModule
  class ReportsController < ApplicationController
    before_action :set_current_day, only: %i(index budget)

    def index
      expense_categories = combined_categories_for(ExpenseCategory, current_user.id)
      # 予想支出の合計
      @total_expected_amount = expense_categories.sum{|category| category.expected_amount || 0}

      # 支出と収入の差額、支出合計、収入合計を取得
      @difference_price, @total_expenses_amount, @total_incomes_amount = calculate_difference_price(current_user.id, @start_of_month, @end_of_month)

      # カテゴリーごとの支出額と色を取得
      @chart_data, @chart_colors = category_expenses_with_colors(current_user.id, @start_of_month, @end_of_month)
    end

    def budget
      # 現在の月の範囲を取得
      current_month_start = Date.current.beginning_of_month
      current_month_end = Date.current.end_of_month

      expense_categories = combined_categories_for(ExpenseCategory, current_user.id)

      # 各カテゴリに紐づく支出の合計額を取得
      @expense_data = expense_categories.map do |category|
        {
          category:,
          total_amount: Expense.where(expense_category_id: category.id, user_id: current_user.id)
            .where(add_date: current_month_start..current_month_end)
            .sum(:amount),
          expected_amount: category.expected_amount || 0  # カテゴリーの予算 (expected_amount)
        }
      end
    end

    def set_current_day
      # 現在の年月を取得
      @start_of_month = Time.zone.today.beginning_of_month
      @end_of_month = Time.zone.today.end_of_month
    end
  end
end
