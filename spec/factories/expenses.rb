# frozen_string_literal: true

FactoryBot.define do
  factory :expense do
    user{nil}
    expense_category{nil}
    amount{"9.99"}
  end
end
