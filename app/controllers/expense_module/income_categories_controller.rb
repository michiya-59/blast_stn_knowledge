# frozen_string_literal: true

module ExpenseModule
  class IncomeCategoriesController < ApplicationController
    def index
      @income_categories = combined_categories_for(IncomeCategory, current_user.id)
    end

    def new
      @income_category = IncomeCategory.new
    end

    def edit
      @income_category = IncomeCategory.find(params[:id])
    end

    def create
      @income_category = IncomeCategory.new(income_category_params)
      @income_category.user_id = current_user.id
      @income_category.save!

      if @income_category.save
        redirect_to expense_module_income_categories_path, notice: "収入カテゴリーが作成されました。"
      else
        render :new
      end
    end

    def update
      @income_category = IncomeCategory.find(params[:id])

      if @income_category.user_id == 99_999
        # user_id=99999のデフォルトカテゴリーを複製し、現在のユーザーに関連付ける
        new_category = @income_category.dup
        new_category.user_id = current_user.id
        new_category.save!

        # その複製した新しいカテゴリーを更新する
        if new_category.update(income_category_params)
          redirect_to expense_module_income_categories_path, notice: "収入カテゴリーが更新されました。"
        else
          render :edit
        end
      else
        @income_category.user_id = current_user.id
        @income_category.save!

        if @income_category.update(income_category_params)
          redirect_to expense_module_income_categories_path, notice: "収入カテゴリーが更新されました。"
        else
          render :edit
        end
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
