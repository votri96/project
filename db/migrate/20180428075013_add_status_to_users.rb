class AddStatusToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :status, :boolean, default: 0
  end
end
