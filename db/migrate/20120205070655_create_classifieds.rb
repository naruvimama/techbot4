class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.integer :edition_id
      t.string :area
      t.integer :category_id
      t.text :content

      t.timestamps
    end
  end
end
