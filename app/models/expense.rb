# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :expense_category

  validates :amount, numericality: {greater_than_or_equal_to: 1}
  JAPANESE_WEEKDAYS = %w(日 月 火 水 木 金 土).freeze
end
