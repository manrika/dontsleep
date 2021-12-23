class Artist < ApplicationRecord
  belongs_to :user
  has_many :releases

  validates :name, presence: true, uniqueness: true
  validates :manage, inclusion: [true, false]
  validates :recording, inclusion: [true, false]
  validates :quote, length: { maximum: 120 }
end
