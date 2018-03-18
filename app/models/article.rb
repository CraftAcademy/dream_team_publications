class Article < ApplicationRecord
  validates_presence_of :title, :body, :categories
  has_many :comments
  has_and_belongs_to_many :categories
end
