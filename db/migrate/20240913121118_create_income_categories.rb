# frozen_string_literal: true

class CreateIncomeCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :income_categories do |t|
      t.string :name
      t.string :color_code

      t.timestamps
    end
  end
end
