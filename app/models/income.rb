# frozen_string_literal: true

class Income < ApplicationRecord
  belongs_to :user
  belongs_to :income_category

  validates :amount, numericality: {greater_than_or_equal_to: 1}
end
