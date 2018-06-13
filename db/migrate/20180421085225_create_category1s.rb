class CreateCategory1s < ActiveRecord::Migration[5.1]
  def change
    create_table :category1s do |t|
      t.string :name
      t.boolean :showonhome
      t.integer :displayorder
      t.timestamps
    end
  end
end
