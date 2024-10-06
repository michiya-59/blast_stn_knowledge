# frozen_string_literal: true

module ExpenseModule
  class ExpenseCategoriesController < ApplicationController
    def index
      @expense_categories = combined_categories_for(ExpenseCategory, current_user.id)

      # 合計expected_amountの計算
      @total_expected_amount = @expense_categories.sum{|category| category.expected_amount || 0}
    end

    def new
      @expense_category = ExpenseCategory.new
    end

    def edit
      @expense_category = ExpenseCategory.find(params[:id])
    end

    def create
      @expense_category = ExpenseCategory.new(expense_category_params)

      @expense_category.user_id = current_user.id
      @expense_category.save!
      if @expense_category.save
        redirect_to expense_module_expense_categories_path, notice: "支出カテゴリーが作成されました。"
      else
        render :new
      end
    end

    def update
      @expense_category = ExpenseCategory.find(params[:id])

      if @expense_category.user_id == 99_999
        # user_id=99999のデフォルトカテゴリーを複製し、現在のユーザーに関連付ける
        new_category = @expense_category.dup
        new_category.user_id = current_user.id
        new_category.save!

        # その複製した新しいカテゴリーを更新する
        if new_category.update(expense_category_params)
          redirect_to expense_module_expense_categories_path, notice: "カテゴリーが更新されました。"
        else
          render :edit
        end
      else
        @expense_category.user_id = current_user.id
        @expense_category.save!

        if @expense_category.update(expense_category_params)
          redirect_to expense_module_expense_categories_path, notice: "支出カテゴリーが更新されました。"
        else
          render :edit
        end
      end
    end

    def destroy
      @expense_category = ExpenseCategory.find(params[:id])

      if @expense_category.user_id == 99_999
        # デフォルトカテゴリーは削除できないため、警告メッセージを表示
        redirect_to expense_module_expense_categories_path, alert: "デフォルトカテゴリーは削除できません。"
      else
        # ユーザー専用のカテゴリーを削除
        @expense_category.destroy
        redirect_to expense_module_expense_categories_path, notice: "カテゴリーが削除されました。"
      end
    end

    private

    def expense_category_params
      params.require(:expense_category).permit(:name, :color_code, :expected_amount)
    end
  end
end
