# frozen_string_literal: true

class AddOutsourcingFlgToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :outsourcing_flg, :boolean, default: false, null: false
  end
end
