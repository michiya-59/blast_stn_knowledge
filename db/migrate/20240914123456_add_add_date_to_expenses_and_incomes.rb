# frozen_string_literal: true

class AddAddDateToExpensesAndIncomes < ActiveRecord::Migration[7.0]
  def change
    add_column :expenses, :add_date, :timestamp, null: false
    add_column :incomes, :add_date, :timestamp, null: false
  end
end
