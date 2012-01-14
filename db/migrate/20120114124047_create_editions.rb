class CreateEditions < ActiveRecord::Migration
  def change
    create_table :editions do |t|
      t.integer :no
      t.string :area
      t.integer :week_no
      t.integer :year
      t.string :url
      t.integer :downloaded
      t.date :publish_date

      t.timestamps
    end
  end
end
