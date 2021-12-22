class Artist < ApplicationRecord
  belongs_to :user
  has_many :releases

  validates :name, presence: true, uniqueness: true
  validates :manage, presence: true
  validates :record, presence: true
  validates :quote, length: { maximum: 120 }
end
