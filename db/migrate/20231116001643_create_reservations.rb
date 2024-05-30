# frozen_string_literal: true

class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true, comment: "予約を行ったユーザーの一意識別子"
      t.references :seminar, null: false, foreign_key: true, comment: "予約された講義の一意識別子"
      t.integer :join_status, null: false, default: 1, comment: "1: 未参加, 9: 参加済み"

      t.timestamps
    end
  end
end
