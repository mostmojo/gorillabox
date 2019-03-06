class Box < ApplicationRecord
  has_many :reviews
  has_many :subscriptions
  has_many :users, through: :subscriptions
  validates :title, presence: true
  validates :description, presence: true
  validates :contents, presence: true
end
