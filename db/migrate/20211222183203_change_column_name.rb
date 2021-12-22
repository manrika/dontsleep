class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :artists, :name, :artist_name
  end
end
