class AddPublishToEditions < ActiveRecord::Migration
  def change
    add_column :editions, :publish, :boolean, :default => false
  end
end
