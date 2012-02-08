class RenameTypeToReactionInFeedbacks < ActiveRecord::Migration
  def up
    rename_column :feedbacks, :type, :reaction
  end

  def down
    rename_column :feedbacks, :reaction, :type
  end
end
