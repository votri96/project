class CreateContactus < ActiveRecord::Migration[5.1]
  def change
    create_table :contactus do |t|
      t.string :name
      t.string :email
      t.text :content
      t.boolean :status

      t.timestamps
    end
  end
end
