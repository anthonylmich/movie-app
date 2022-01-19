class AddEnglishToMovie < ActiveRecord::Migration[7.0]
  def change
    change_column :movies, :english, :boolean
    change_column_null :movies, :name, false
    change_column :movies, :english, from: 
  end
end
