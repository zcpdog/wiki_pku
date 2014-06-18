class AddEntryTypeToWikiPkuEntries < ActiveRecord::Migration
  def change
    add_column :wiki_pku_entries, :entry_type, :string
  end
end
