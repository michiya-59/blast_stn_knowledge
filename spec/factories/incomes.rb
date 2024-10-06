# frozen_string_literal: true

FactoryBot.define do
  factory :income do
    user{nil}
    income_category{nil}
    amount{"9.99"}
  end
end
