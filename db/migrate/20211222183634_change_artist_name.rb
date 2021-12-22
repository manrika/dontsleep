class ChangeArtistName < ActiveRecord::Migration[6.0]
  def change
    rename_column :artists, :artist_name, :name
  end
end
