# frozen_string_literal: true

module ReservationsHelper
  require "date"

  def weekday_conversion year, month, day
    # 日本語の曜日の配列
    japanese_weekdays = %w(日 月 火 水 木 金 土)

    # seminar.year, seminar.month, seminar.day を Date オブジェクトに変換
    date = Date.new(year.to_i, month.to_i, day.to_i)

    # 曜日のインデックスを取得し、日本語の曜日に変換
    japanese_weekdays[date.wday]
  end

  def is_seminar_expired? year, month, day
    date = Date.new(year.to_i, month.to_i, day.to_i)
    # 現在の日付よりも未来であるかどうかをチェック
    date >= Time.zone.today
  end

  def is_seminar_reserved? seminar_id, user_id
    reservation = Reservation.find_by(user_id:, seminar_id:)
    reservation.present?
  end

  def is_previous_day? year, month, day, _start_time
    # 講義の日付を設定
    seminar_date = Date.new(year.to_i, month.to_i, day.to_i)

    # 現在の日付を取得
    current_date = Time.zone.today

    seminar_date <= current_date || seminar_date == current_date + 1.day
  end
end
