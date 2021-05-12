class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :tagline, :date, :author, :photo)
  end
end
