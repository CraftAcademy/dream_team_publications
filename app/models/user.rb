class User < ApplicationRecord
  after_validation :reverse_geocode
  reverse_geocoded_by :latitude, :longitude
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
