class ChangesAdminDataType < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :admin, :string
  end
end
