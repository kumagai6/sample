class AddEmailRemovePass < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :email, :string
    remove_column :users, :pass, :string
  end
end
