class ChangeDefaultInArticles < ActiveRecord::Migration
  def up
    change_column :articles, :reads, :integer, :default => 0
    change_column :articles, :comments_attracted, :integer, :default => 0
  end

  def down
    change_column :articles, :reads, :integer
    change_column :articles, :comments_attracted
  end
end
