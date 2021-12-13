class RestaurantList < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :restaurants, through: :bookmarks
end
