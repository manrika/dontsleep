class ChangeArtistFromReleases < ActiveRecord::Migration[6.0]
  def change
    change_column_null :releases, :artist_id, true
  end
end
