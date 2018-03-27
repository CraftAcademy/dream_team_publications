class ArticlesController < ApplicationController
  before_action :find_article_and_category, except: [:create]

  def new
    @article = Article.new
    authorize @article
  end

  def show
    @categories = Category.all
    authorize @article
  end


  def create
    params[:article][:categories].shift
    @article = Article.new(article_params)
    authorize @article
    @article.image.attach(params[:article][:image])
    add_categories_to_article
    if @article.save
      flash[:success] = 'Article successfully created'
      redirect_to article_path(@article)
    else
      flash[:error] = error_message(@article)
      redirect_to new_article_path
    end
  end

  def destroy
    authorize @article
    @article.destroy
    flash[:success] = "#{@article.title} has been deleted"
    redirect_to root_path
  end

  def update
    authorize @article
    params[:article][:categories].shift
    @article.image.attach(params[:article][:image]) if params[:article][:image]
    add_categories_to_article
    if @article.update(article_params)
      flash[:success] = 'Article successfully updated'
      redirect_to article_path(@article)
    else
      flash[:error] = error_message(@article)
      render 'edit'
     end
  end

  private

  def add_categories_to_article
    categories = params[:article][:categories]
    categories.each do |category_id|
      category = Category.find_by(id: category_id)
      @article.categories.include?(category) ? next : @article.categories << category
    end
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def find_article_and_category
    @article = Article.find_by(id: params[:id])
    @categories = Category.all
  end

  def error_message(article)
    output = ''
    article.errors.full_messages.each do |error|
      output += "#{error} "
    end
    output
  end
end
