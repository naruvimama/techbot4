class AddPictureToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :picture_id, :integer
  end
end
