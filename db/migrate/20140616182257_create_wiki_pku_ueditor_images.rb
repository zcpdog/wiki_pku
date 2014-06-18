class CreateWikiPkuUeditorImages < ActiveRecord::Migration
  def change
    create_table :wiki_pku_ueditor_images do |t|
      t.string :image

      t.timestamps
    end
  end
end
