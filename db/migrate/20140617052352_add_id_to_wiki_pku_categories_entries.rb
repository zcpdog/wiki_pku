class AddIdToWikiPkuCategoriesEntries < ActiveRecord::Migration
  def change
    add_column :wiki_pku_categories_entries, :id, :primary_key
  end
end
