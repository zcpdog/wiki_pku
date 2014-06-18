class AddAbstractToWikiPkuEntries < ActiveRecord::Migration
  def change
    add_column :wiki_pku_entries, :abstract, :text
  end
end
