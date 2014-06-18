class AddStateToWikiPkuEntries < ActiveRecord::Migration
  def change
    add_column :wiki_pku_entries, :state, :string
  end
end
