class AddTabIdToWikiPkuCategories < ActiveRecord::Migration
  def change
    add_reference :wiki_pku_categories, :wiki_pku_tab, index: true
  end
end
