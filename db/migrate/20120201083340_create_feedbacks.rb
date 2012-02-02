class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :type
      t.text :info
      t.boolean :read
      t.integer :user_id

      t.timestamps
    end
  end
end
