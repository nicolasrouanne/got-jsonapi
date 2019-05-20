class RenameColumnsCharacters < ActiveRecord::Migration[5.2]
  def change
    rename_column :characters, :title, :name
    remove_column :characters, :content, :string
    add_column :characters, :died, :boolean
    rename_column :characters, :author_id, :house_id
  end
end
