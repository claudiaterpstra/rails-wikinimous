class ArticlesController < ApplicationController

before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @articles = Article.new
  end

  def create
    # Create restaurant
    Article.create(article_params)
    # redirect to the index of restaurants
    redirect_to articles_path
  end

  def edit
  end

  def update
    @article.update(articles_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    # Filtering/Whitelisting the params that come in from the form
    params.require(:article).permit(:title, :content)
  end
end
