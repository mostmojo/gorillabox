class Challenge < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :details, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
