class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :designation
      t.string :company
      t.string :oemail
      t.text :brief
      t.integer :user_id
      t.text :profile_text

      t.timestamps
    end
  end
end
