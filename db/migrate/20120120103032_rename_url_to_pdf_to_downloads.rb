class RenameUrlToPdfToDownloads < ActiveRecord::Migration
  def up
    rename_column :downloads, :url, :pdf
  end

  def down
    rename_column :downloads, :pdf, :url
  end
end
