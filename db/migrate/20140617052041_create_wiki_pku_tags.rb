class CreateWikiPkuTags < ActiveRecord::Migration
  def change
    create_table :wiki_pku_tags do |t|
      t.string :name

      t.timestamps
    end
    add_index :wiki_pku_tags, :name
  end
end
