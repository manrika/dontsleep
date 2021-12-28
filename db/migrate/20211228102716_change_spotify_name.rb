class ChangeSpotifyName < ActiveRecord::Migration[6.0]
  def change
    rename_column :releases, :spotify, :spotify_link
  end
end
