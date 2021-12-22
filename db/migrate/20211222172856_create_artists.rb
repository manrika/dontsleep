class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :quote
      t.boolean :manage
      t.boolean :record
      t.text :spotify
      t.text :instagram
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
