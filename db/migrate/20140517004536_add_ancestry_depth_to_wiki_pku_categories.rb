class AddAncestryDepthToWikiPkuCategories < ActiveRecord::Migration
  def change
    add_column :wiki_pku_categories, :ancestry_depth, :integer
  end
end
