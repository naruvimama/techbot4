class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :label
      t.integer :dim_x
      t.integer :dim_y
      t.string :image

      t.timestamps
    end
  end
end
