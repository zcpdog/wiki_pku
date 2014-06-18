class CreateWikiPkuEntriesTags < ActiveRecord::Migration
  def change
    create_table :wiki_pku_entries_tags do |t|
      t.references :entry, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end