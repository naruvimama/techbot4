class AddColumnListingContentToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :listing_content, :text

  end
end
