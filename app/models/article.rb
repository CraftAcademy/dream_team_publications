class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :categories, presence: true
  has_many :comments
  has_and_belongs_to_many :categories
end
