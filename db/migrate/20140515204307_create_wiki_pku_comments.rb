class CreateWikiPkuComments < ActiveRecord::Migration
  def change
    create_table :wiki_pku_comments do |t|
      t.text :content
      t.references :entry, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
