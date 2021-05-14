class ExhibitionsController < ApplicationController
  before_action :find_exhibition, only: [:show, :new]

  def new
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
    @exhibition.save

    # no need for app/views/exhibitions/create.html.erb
    redirect_to exhibition_path(@exhibition)
  end

  def show
  end

  private

  def find_exhibition
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:exhibition).permit(:title, :artists, :institution_name, :institution_address, :curated_by, :test, :start_date, :end_date, photos: [])
  end
end
