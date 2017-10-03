class CreateInfoTexts < ActiveRecord::Migration
  def change
    create_table :info_texts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
