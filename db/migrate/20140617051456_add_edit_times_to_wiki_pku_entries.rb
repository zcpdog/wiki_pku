class AddEditTimesToWikiPkuEntries < ActiveRecord::Migration
  def change
    add_column :wiki_pku_entries, :edit_times, :integer, default: 0
  end
end
