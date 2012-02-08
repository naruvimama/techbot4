class RenameCategoryIdToClassifiedCategoryIdInClassifieds < ActiveRecord::Migration
  def up
    rename_column :classifieds, :category_id, :classifed_category_id
  end

  def down
    rename_column :classifieds, :classifed_category_id, :category_id
  end
end
