class CreateDownloads < ActiveRecord::Migration
  def change
    create_table :downloads do |t|
      t.integer :edition_id
      t.string :area
      t.string :url
      t.integer :downloaded, :default => 0

      t.timestamps
    end
  end
end
