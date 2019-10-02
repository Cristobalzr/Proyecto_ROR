class Pet < ApplicationRecord
    has_many :matches
    has_many :users, through: :matches
    has_many :actions, through: :matches
    
end
