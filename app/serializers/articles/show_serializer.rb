class Articles::ShowSerializer < ActiveModel::Serializer
  attributes :title, :body, :image, :categories
  has_many :articles

  def articles
    object.articles.map do |article|
      ArticleSerializer.new(article).as_json
    end
  end
end
