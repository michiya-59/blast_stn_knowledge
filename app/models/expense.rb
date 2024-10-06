# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :expense_category

  validates :amount, numericality: {greater_than_or_equal_to: 1}
  JAPANESE_WEEKDAYS = %w(日 月 火 水 木 金 土).freeze

  def self.total_expenses_by_category user_id, current_month_start, current_month_end
    Expense.joins(:expense_category)
      .where("expenses.user_id = ? AND (expense_categories.user_id = ? OR expense_categories.user_id = ?)", user_id, user_id, 99_999)
      .where(expenses: {add_date: current_month_start..current_month_end})
      .group("expense_categories.id", "expense_categories.name", "expense_categories.expected_amount")
      .select("expense_categories.name, SUM(expenses.amount) AS total_amount, expense_categories.expected_amount")
  end
end
