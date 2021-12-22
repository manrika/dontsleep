class Release < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  validates :track_title, presence: true, uniqueness: true
end
