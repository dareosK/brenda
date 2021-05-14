class ArticlesController < ApplicationController
  before_action :find_article, only: [:show, :new, :create, :edit, :update]

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

  def edit
  end

  def update
    @article.update(article_params)

    # no need for app/views/articles/update.html.erb
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    # no need for app/views/articles/destroy.html.erb
    redirect_to articles_path
  end

  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :tagline, :date, :author, :photo)
  end
end
