class CreateClassifiedCategories < ActiveRecord::Migration
  def change
    create_table :classified_categories do |t|
      t.string :category

      t.timestamps
    end
  end
end
