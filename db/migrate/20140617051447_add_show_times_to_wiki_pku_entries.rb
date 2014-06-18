class AddShowTimesToWikiPkuEntries < ActiveRecord::Migration
  def change
    add_column :wiki_pku_entries, :show_times, :integer, default: 0
  end
end
