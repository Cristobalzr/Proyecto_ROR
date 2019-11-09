class Publication < ApplicationRecord
  validates :name, :description, :photo, :latitude, :longitude, presence: true
    belongs_to :user
    mount_uploader :photo, ImageUploader
end
