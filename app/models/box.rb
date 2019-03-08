class Box < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :users, through: :subscriptions
  validates :title, presence: true
  validates :description, presence: true
  monetize :price_cents
  validates :contents, presence: true
end
