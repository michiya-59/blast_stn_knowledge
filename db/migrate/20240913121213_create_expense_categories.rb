# frozen_string_literal: true

class CreateExpenseCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :expense_categories do |t|
      t.string :name
      t.string :color_code
      t.decimal :expected_amount

      t.timestamps
    end
  end
end
