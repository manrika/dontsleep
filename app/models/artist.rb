class Artist < ApplicationRecord
  belongs_to :user
  has_many :releases
  has_one_attached :photo
  acts_as_list

  validates :name, presence: true, uniqueness: true
  validates :manage, inclusion: [true, false]
  validates :recording, inclusion: [true, false]
  validates :quote, length: { maximum: 120 }
end
