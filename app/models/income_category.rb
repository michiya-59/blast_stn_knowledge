# frozen_string_literal: true

class IncomeCategory < ApplicationRecord
  has_many :incomes, dependent: :destroy
end
