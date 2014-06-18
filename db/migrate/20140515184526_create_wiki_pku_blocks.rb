class CreateWikiPkuBlocks < ActiveRecord::Migration
  def change
    create_table :wiki_pku_blocks do |t|
      t.references :category, index: true

      t.timestamps
    end
  end
end
