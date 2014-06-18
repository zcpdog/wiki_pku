class CreateWikiPkuTabs < ActiveRecord::Migration
  def change
    create_table :wiki_pku_tabs do |t|
      t.string  :name
      t.references :category, index: true
      t.integer :position

      t.timestamps
    end
  end
end
