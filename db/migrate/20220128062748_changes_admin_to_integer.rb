class ChangesAdminToInteger < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :number, :integer
    remove_column :users, :admin
    rename_column :users, :number, :admin
  end
end
