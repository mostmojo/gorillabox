class Subscription < ApplicationRecord
  belongs_to :box, optional: true
  belongs_to :user
  validates :duration, presence: true
  monetize :amount_cents
  # validates_inclusion_of :duration, in: %w( oneoff 3 months 6 months 12 months )
end
