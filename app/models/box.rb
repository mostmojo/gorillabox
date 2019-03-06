class Box < ApplicationRecord
  has_many :reviews
  has_many :subscriptions
  has_many :users, through: :subscriptions
  validates :title, presence: true
  validates :description, presence: true
  monetize :price_cents
end
