# frozen_string_literal: true

module ExpenseModule
  class ExpensesController < ApplicationController
    before_action :set_expense, only: %i(edit update destroy)
    before_action :set_users_and_categories, only: %i(new edit create update)
    before_action :set_current_day, only: [:index]

    def index
      # 現在の年月を取得
      current_month_start = Date.current.beginning_of_month
      current_month_end = Date.current.end_of_month

      # 現在のユーザーに紐づく支出の取得
      expenses = Expense.where(user_id: current_user.id, add_date: current_month_start..current_month_end).includes(:expense_category).order(:add_date)
      # 支出と収入の差額、支出合計、収入合計を取得
      @difference_price, @total_expenses_amount, @total_incomes_amount = calculate_difference_price(current_user.id, current_month_start, current_month_end)
      # 日ごとのデータを整理 (add_dateごとにグループ化)
      @expenses_by_date = expenses.group_by(&:add_date)
    end

    def new
      @expense = Expense.new
    end

    def edit; end
    def create
      @expense = Expense.new(expense_params)
      if @expense.save
        redirect_to new_expense_module_expense_path, notice: "支出が追加されました。"
      else
        error = @expense.errors.full_messages.join(", ")
        redirect_to new_expense_module_expense_path, alert: error.to_s
      end
    end

    def update
      if @expense.update(expense_params)
        redirect_to new_expense_module_expense_path, notice: "支出が更新されました。"
      else
        render :edit
      end
    end

    def destroy
      @expense.destroy
      redirect_to new_expense_module_expense_path, notice: "支出が削除されました。"
    end

    private

    def set_expense
      @expense = Expense.find(params[:id])
    end

    def set_users_and_categories
      @expense_categories = combined_categories_for(ExpenseCategory, current_user.id)
    end

    def expense_params
      params.require(:expense).permit(:user_id, :expense_category_id, :amount, :add_date)
    end

    def set_current_day
      @start_of_month = Time.zone.today.beginning_of_month
      @end_of_month = Time.zone.today.end_of_month
    end
  end
end
