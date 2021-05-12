class ExhibitionsController < ApplicationController
  def show
    @exhibition = Exhibition.find(params[:id])
  end

  private

  def article_params
    params.require(:exhibition).permit(:title, :artists, :institution_name, :institution_address, :curated_by, :test, :start_date, :end_date, photos: [])
  end
end
