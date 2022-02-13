class Subscriber < ApplicationRecord
  validates :email, uniqueness: { case_sensitive: false, message: ": You have already subscribed with this email!" }, format: { with: /([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})/, message: ": Please enter a valid email" }
end
