# frozen_string_literal: true

module ExpenseModule
  class ExpenseCategoriesController < ApplicationController
    def index
      @expense_categories = ExpenseCategory.all.order(created_at: :asc)
      @total_expected_amount = ExpenseCategory.sum(:expected_amount)
    end

    def new
      @expense_category = ExpenseCategory.new
    end

    def edit
      @expense_category = ExpenseCategory.find(params[:id])
    end

    def create
      @expense_category = ExpenseCategory.new(expense_category_params)
      if @expense_category.save
        redirect_to expense_module_expense_categories_path, notice: "支出カテゴリーが作成されました。"
      else
        render :new
      end
    end

    def update
      @expense_category = ExpenseCategory.find(params[:id])
      if @expense_category.update(expense_category_params)
        redirect_to expense_module_expense_categories_path, notice: "支出カテゴリーが更新されました。"
      else
        render :edit
      end
    end

    def destroy
      @expense_category = ExpenseCategory.find(params[:id])
      @expense_category.destroy
      redirect_to expense_module_expense_categories_path, alert: "カテゴリーが削除されました。"
    end

    private

    def expense_category_params
      params.require(:expense_category).permit(:name, :color_code, :expected_amount)
    end
  end
end
