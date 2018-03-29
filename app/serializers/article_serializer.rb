class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :body, :image
end
