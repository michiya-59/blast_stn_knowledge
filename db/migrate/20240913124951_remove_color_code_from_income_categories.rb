# frozen_string_literal: true

class RemoveColorCodeFromIncomeCategories < ActiveRecord::Migration[7.0]
  def change
    remove_column :income_categories, :color_code, :string
  end
end
