class CreateTins < ActiveRecord::Migration[5.1]
  def change
    create_table :tins do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :image
      t.string :create_by
      t.string :update_by
      t.integer :viewcount
      t.boolean :showonhome
      t.boolean :tophot
      t.references :category1, foreign_key: true
      t.references :category2, foreign_key: true

      t.timestamps
    end
  end
end
