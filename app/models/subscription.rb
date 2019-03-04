class Subscription < ApplicationRecord
  belongs_to :box
  belongs_to :user
  validates :duration, presence: true
end
