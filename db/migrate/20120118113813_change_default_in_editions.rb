class ChangeDefaultInEditions < ActiveRecord::Migration
  def up
    change_column :editions, :downloaded, :integer, :default=>0
  end

  def down
    change_column :editions, :downloaded, :integer
  end
end
