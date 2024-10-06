# frozen_string_literal: true

class Income < ApplicationRecord
  belongs_to :user
  belongs_to :income_category

  validates :amount, numericality: {greater_than_or_equal_to: 1}

  def self.total_income_by_category user_id, current_month_start, current_month_end
    # income_categoryと結合し、current_user.idでフィルタリング
    Income.joins(:income_category)
      .where(user_id:, add_date: current_month_start..current_month_end)
      .group("income_categories.id", "income_categories.name")
      .sum(:amount)
  end
end
