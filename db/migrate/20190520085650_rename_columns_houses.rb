class RenameColumnsHouses < ActiveRecord::Migration[5.2]
  def change
    rename_column :houses, :first_name, :name
    rename_column :houses, :last_name, :region
    rename_column :houses, :alias, :words
    add_column :houses, :seat, :string
  end
end
