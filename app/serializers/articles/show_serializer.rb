class Articles::ShowSerializer < ActiveModel::Serializer
  attributes :title, :body, :image, :categories
end
