class CreateWikiPkuCategoriesEntries < ActiveRecord::Migration
  def change
    create_table :wiki_pku_categories_entries, id: false do |t|
      t.references :category, index: true
      t.references :entry, index: true
    end
  end
end
