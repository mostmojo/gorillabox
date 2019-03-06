class Subscription < ApplicationRecord
  belongs_to :box, optional: true
  belongs_to :user
  validates :duration, presence: true
  monetize :amount_cents
end
