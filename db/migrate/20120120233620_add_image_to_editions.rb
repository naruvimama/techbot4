class AddImageToEditions < ActiveRecord::Migration
  def change
    add_column :editions, :image, :string
  end
end
