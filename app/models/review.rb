class Review < ApplicationRecord
  belongs_to :user
  belongs_to :box
  validates :stars, presence: true, default: null
end
