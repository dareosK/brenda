class ExhibitionsController < ApplicationController
  # Don't need this cause of friendly Id URLS but maybe in the future you will.
  # before_action :find_exhibition, only: [:show]

  def show
    @exhibition = Exhibition.friendly.find(params[:id])
  end

  def new
    @exhibition = Exhibition.new
  end

  def create
    @exhibition = Exhibition.new(exhibition_params)
    @exhibition.user = current_user
    if @exhibition.save!
    # no need for app/views/exhibitions/create.html.erb
    redirect_to exhibition_path(@exhibition)
    else
      render "pages/dashboard"
    end
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  def update
    @exhibition = Exhibition.find(params[:id])
    @exhibition.update(exhibition_params)

    # no need for app/views/exhibitions/update.html.erb
    redirect_to exhibition_path(@exhibition)
  end

  def destroy
    @exhibition = Exhibition.find(params[:id])
    @exhibition.destroy

    # no need for app/views/exhibitions/destroy.html.erb
    redirect_to exhibitions_path
  end

  private

  def find_exhibition
    @exhibition = Exhibition.find(params[:id])
  end

  def exhibition_params
    params.require(:exhibition).permit(:title, :artists, :institution_name, :institution_address, :curated_by, :text, :start_date, :end_date, photos: [])
  end
end
