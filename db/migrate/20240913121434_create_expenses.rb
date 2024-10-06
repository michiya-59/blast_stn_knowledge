# frozen_string_literal: true

class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :expense_category, null: false, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
