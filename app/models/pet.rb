class Pet < ApplicationRecord
  validates :name, :description, :photo, :latitude, :longitude, presence: true
    has_many :matches
    has_many :users, through: :matches
    has_many :actions, through: :matches
    mount_uploader :photo, ImageUploader
end
