class ArticlesController < ApplicationController
  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'Article successfully created'
      redirect_to article_path(@article)
    else

    end
  end

  def show
  end

  private

  def article_params
    params.permit(:title, :body)
  end
end
