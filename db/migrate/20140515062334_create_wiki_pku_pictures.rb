class CreateWikiPkuPictures < ActiveRecord::Migration
  def change
    create_table :wiki_pku_pictures do |t|
      t.references :imageable, polymorphic: true ,index: true
      t.string :image

      t.timestamps
    end
  end
end
