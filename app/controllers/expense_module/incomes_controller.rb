# frozen_string_literal: true

module ExpenseModule
  class IncomesController < ApplicationController
    before_action :set_income, only: %i(edit update destroy)
    before_action :set_users_and_categories, only: %i(new edit create update)
    before_action :set_current_day, only: [:index]

    def index
      # 現在の年月を取得
      current_month_start = Date.current.beginning_of_month
      current_month_end = Date.current.end_of_month

      # 現在のユーザーに紐づく支出の取得
      incomes = Income.where(user_id: current_user.id, add_date: current_month_start..current_month_end).includes(:income_category).order(:add_date)
      # 支出と収入の差額、支出合計、収入合計を取得
      @difference_price, @total_expenses_amount, @total_incomes_amount = calculate_difference_price(current_user.id, current_month_start, current_month_end)
      # 日ごとのデータを整理 (add_dateごとにグループ化)
      @incomes_by_date = incomes.group_by(&:add_date)
    end

    def new
      @income = Income.new(
        add_date: Time.zone.today,
        amount: 0
      )
    end

    def edit; end
    def create
      @income = Income.new(expense_params)
      if @income.save
        redirect_to new_expense_module_income_path, notice: "支出が追加されました。"
      else
        error = @income.errors.full_messages.join(", ")
        redirect_to new_expense_module_income_path, alert: error.to_s
      end
    end

    def update
      if @income.update(expense_params)
        redirect_to expense_module_incomes_path, notice: "収入が更新されました。"
      else
        error = @income.errors.full_messages.join(", ")
        redirect_to edit_expense_module_income_path, alert: error.to_s
      end
    end

    def destroy
      @income.destroy
      redirect_to new_expense_module_income_path, notice: "支出が削除されました。"
    end

    private

    def set_income
      @income = Income.find(params[:id])
    end

    def set_users_and_categories
      @users = User.all
      @income_categories = combined_categories_for(IncomeCategory, current_user.id)
    end

    def expense_params
      params.require(:income).permit(:user_id, :income_category_id, :amount, :add_date)
    end

    def set_current_day
      @start_of_month = Time.zone.today.beginning_of_month
      @end_of_month = Time.zone.today.end_of_month
    end
  end
end
