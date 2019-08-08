class User < ApplicationRecord
  has_many :matches
  has_many :pets, through: :matches
  has_many :actions, through: :matches
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:admin, :visit, :natural, :foundation, :veterinary]
end
