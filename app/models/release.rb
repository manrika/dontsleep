class Release < ApplicationRecord
  belongs_to :user
  belongs_to :artist, optional: true

  validates :track_title, presence: true, uniqueness: true
  validates :artist_name, presence: true
end
