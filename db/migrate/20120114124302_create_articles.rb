class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :edition_id
      t.integer :author_id
      t.string :title
      t.text :abstract
      t.datetime :publish_date
      t.text :story
      t.integer :rank
      t.integer :reads
      t.integer :comments_attracted

      t.timestamps
    end
  end
end
