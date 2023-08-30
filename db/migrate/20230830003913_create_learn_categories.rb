class CreateLearnCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :learn_categories do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
