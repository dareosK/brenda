class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def works
    @articles = Article.all
    @exhibitions = Exhibition.all
  end
end
