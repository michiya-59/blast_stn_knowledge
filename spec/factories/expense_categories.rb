# frozen_string_literal: true

FactoryBot.define do
  factory :expense_category do
    name{"MyString"}
    color_code{"MyString"}
    expected_amount{"9.99"}
  end
end
