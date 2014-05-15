class CreateWikiPkuCategories < ActiveRecord::Migration
  def change
    create_table :wiki_pku_categories do |t|
      t.string  :name
      t.integer :position
      t.string  :ancestry

      t.timestamps
    end
    add_index :wiki_pku_categories, :position
    add_index :wiki_pku_categories, :ancestry
  end
end
