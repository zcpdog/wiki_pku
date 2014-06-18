class CreateWikiPkuLikes < ActiveRecord::Migration
  def change
    create_table :wiki_pku_likes do |t|
      t.references :entry, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
