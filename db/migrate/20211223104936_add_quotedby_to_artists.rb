class AddQuotedbyToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :quoted_by, :string
  end
end
