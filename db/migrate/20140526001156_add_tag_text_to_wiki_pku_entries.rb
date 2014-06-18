class AddTagTextToWikiPkuEntries < ActiveRecord::Migration
  def change
    add_column :wiki_pku_entries, :tag_text, :string
  end
end
