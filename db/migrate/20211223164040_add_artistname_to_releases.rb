class AddArtistnameToReleases < ActiveRecord::Migration[6.0]
  def change
    add_column :releases, :artist_name, :string
  end
end
