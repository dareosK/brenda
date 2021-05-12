class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def work
    # TODO: order articles and exhibitions by date
    @articles = Article.all
    @exhibitions = Exhibition.all
  end
end
