class Action < ApplicationRecord
    has_many :matches
    has_many :pets, through: :matches
    has_many :users, through: :matches
end
