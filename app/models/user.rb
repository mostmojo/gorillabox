class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :subscriptions
  has_many :challenges
  has_many :reviews
  has_many :boxes, through: :subscriptions
  mount_uploader :photo, PhotoUploader
end
