# frozen_string_literal: true

module ExpenseModule
  class IncomeCategoriesController < ApplicationController
    def index
      @income_categories = IncomeCategory.all.all.order(created_at: :asc)
    end

    def new
      @income_category = IncomeCategory.new
    end

    def edit
      @income_category = IncomeCategory.find(params[:id])
    end

    def create
      @income_category = IncomeCategory.new(income_category_params)
      if @income_category.save
        redirect_to expense_module_income_categories_path, notice: "収入カテゴリーが作成されました。"
      else
        render :new
      end
    end

    def update
      @income_category = IncomeCategory.find(params[:id])
      if @income_category.update(income_category_params)
        redirect_to expense_module_income_categories_path, notice: "収入カテゴリーが更新されました。"
      else
        render :edit
      end
    end

    def destroy
      @income_category = IncomeCategory.find(params[:id])
      @income_category.destroy
      redirect_to expense_module_income_categories_path, alert: "収入カテゴリーが削除されました。"
    end

    private

    def income_category_params
      params.require(:income_category).permit(:name)
    end
  end
end
