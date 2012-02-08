class RenameColumnClassifedCategoryIdToClassifiedCategoryIdInClassifieds < ActiveRecord::Migration
  def up
    rename_column :classifieds, :classifed_category_id, :classified_category_id
  end

  def down
    rename_column :classifieds, :classified_category_id, :classifed_category_id
  end
end
