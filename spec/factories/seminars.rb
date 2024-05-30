# frozen_string_literal: true

FactoryBot.define do
  factory :seminar do
    year{Time.zone.now.year.to_i}
    month{Time.zone.now.month.to_i}
    day{Time.zone.now.day.to_i}
    start_time{"23:00"}
    end_time{"23:50"}
    title{"テスト講義"}
    teacher{"テスト教授"}
  end
end
