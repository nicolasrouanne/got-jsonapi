class ChangeAuthorToHouse < ActiveRecord::Migration[5.2]
  def change
    rename_table :authors, :houses
  end
end
