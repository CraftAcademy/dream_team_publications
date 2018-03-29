class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :body, :image
  has_many :categories
end
