class CreateWikiPkuEntries < ActiveRecord::Migration
  def change
    create_table :wiki_pku_entries do |t|
      t.string :name
      t.text   :content
      t.references :user, index: true
      
      t.timestamps
    end
  end
end
