class Challenge < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :details, presence: true
  validates :completed, presence: true, default: false
end
