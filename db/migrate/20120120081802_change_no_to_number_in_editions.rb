class ChangeNoToNumberInEditions < ActiveRecord::Migration
  def up
    rename_column :editions, :no, :number
  end

  def down
    rename_column :editions, :number, :no
  end
end
