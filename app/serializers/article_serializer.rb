class ArticleSerializer < ActiveModel::Serializer
  attributes :title, :body, :image

def link
  Rails.application.routes.url_helpers.api_v0_article_path(object)
end
end
