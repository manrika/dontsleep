class AddPositionToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :position, :integer
  end
end
