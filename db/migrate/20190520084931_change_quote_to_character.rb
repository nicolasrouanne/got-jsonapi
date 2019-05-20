class ChangeQuoteToCharacter < ActiveRecord::Migration[5.2]
  def change
    rename_table :quotes, :characters
  end
end
