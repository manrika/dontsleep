class AddSpotifyEmbedToReleases < ActiveRecord::Migration[6.0]
  def change
    add_column :releases, :spotify_embed, :text
  end
end
