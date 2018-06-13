class CreateTagdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :tagdetails do |t|
      t.references :tag, foreign_key: true
      t.references :tin, foreign_key: true

      t.timestamps
    end
  end
end
