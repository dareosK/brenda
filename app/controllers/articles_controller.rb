class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :new]

  def new
  end

  def show
  end

  def create
    @article = Article.new(article_params)
    @article.save

    # no need for app/views/articles/create.html.erb
    redirect_to article_path(@article)
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :tagline, :date, :author, :photo)
  end
end
