# frozen_string_literal: true

class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :expense_category
end
