class RemoveColumnsFromEditions < ActiveRecord::Migration
  def up
    remove_column :editions, :area
    remove_column :editions, :url
    remove_column :editions, :downloaded
  end

  def down
    add_column :editions, :area, :string
    add_column :editions, :url, :string
    add_column :editions, :downloaded, :integer
  end
end
