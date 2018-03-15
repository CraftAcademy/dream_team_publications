class ArticlesController < ApplicationController

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = 'Article successfully created'
      redirect_to article_path(@article)
    else
      flash[:error] = error_message(@article)
      redirect_to new_article_path
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end


  def error_message(article)
    output = ''
    article.errors.full_messages.each do |error|
      output += "#{error} "
    end
    output
  end
end
