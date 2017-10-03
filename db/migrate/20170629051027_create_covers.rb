class CreateCovers < ActiveRecord::Migration
  def change
    create_table :covers do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
