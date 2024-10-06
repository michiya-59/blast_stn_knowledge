# frozen_string_literal: true

class AddUserIdToIncomeAndExpenseCategories < ActiveRecord::Migration[7.0]
  def up
    add_column :income_categories, :user_id, :integer, foreign_key: true, null: true
    add_column :expense_categories, :user_id, :integer, foreign_key: true, null: true
  end

  def down
    # user_id カラムを削除
    remove_column :income_categories, :user_id
    remove_column :expense_categories, :user_id
  end
end
