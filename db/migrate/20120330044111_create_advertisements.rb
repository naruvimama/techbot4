class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.text :content
      t.date :valid_to
      t.integer :weight

      t.timestamps
    end
  end
end
