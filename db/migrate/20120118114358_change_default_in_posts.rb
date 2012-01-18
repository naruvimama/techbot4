class ChangeDefaultInPosts < ActiveRecord::Migration
  def up
    change_column :comments, :flagged, :boolean, :default => false
  end

  def down
    change_column :comments, :flagged, :boolean
  end
end
