class Subscription < ApplicationRecord
  belongs_to :box
  belongs_to :user
  validates :duration, presence: true
  # validates_inclusion_of :duration, in: %w( oneoff 3 months 6 months 12 months )
end
