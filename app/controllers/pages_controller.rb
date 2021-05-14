class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:dashboard]

  def home
  end

  def work
    # TODO: order articles and exhibitions by date
    @articles = Article.all
    @exhibitions = Exhibition.all
  end

  def dashboard
    @user = current_user
    @articles = Article.all.where(user: current_user)
    @exhibitions = Exhibition.all.where(user: current_user)
  end
end
