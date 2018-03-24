class Article < ApplicationRecord
  after_validation :reverse_geocode
  reverse_geocoded_by :latitude, :longitude
  validates_presence_of :title, :body, :categories
  has_many :comments
  has_and_belongs_to_many :categories
  has_one_attached :image
end
