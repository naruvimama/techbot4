class AddTagsToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :tags, :text
  end
end
