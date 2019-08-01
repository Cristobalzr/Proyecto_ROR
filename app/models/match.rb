class Match < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  belongs_to :action
end
