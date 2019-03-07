class Subscription < ApplicationRecord
  belongs_to :box, optional: true
  belongs_to :user
  monetize :amount_cents
  validates :duration, presence: true
  validates :quantity, presence: true
  validates :delivery_address, presence: true
  validates :amount, presence: true
  # validates_inclusion_of :duration, in: %w( oneoff 3 months 6 months 12 months )
end
