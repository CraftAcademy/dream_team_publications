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

  def show
    @article = Article.find_by(id: params[:id])
  end

  def destroy
    article = Article.find_by(id: params[:id])
    article.destroy
    flash[:success] = "#{article.title} has been deleted"
    redirect_to root_path
  end

  def update
    @article = Article.find_by(id: params[:id])
    @article.update(article_params) ? (redirect_to article_path(@article)) : (render 'edit')
  end

  def edit
    @article = Article.find_by(id: params[:id])
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
