class Release < ApplicationRecord
  belongs_to :user
  belongs_to :artist, optional: true
  has_one_attached :photo

  validates :track_title, presence: true, uniqueness: true
  validates :artist_name, presence: true
end
