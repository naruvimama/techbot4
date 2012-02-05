class CreateClassifiedSpreads < ActiveRecord::Migration
  def change
    create_table :classified_spreads do |t|
      t.integer :edition_id
      t.string :area
      t.text :content_spread

      t.timestamps
    end
  end
end
