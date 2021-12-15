class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :restaurant_lists
  has_many :bookmarks, through: :restaurant_lists

  has_many :restaurants, through: :bookmarks

  accepts_nested_attributes_for :restaurant_lists
end
