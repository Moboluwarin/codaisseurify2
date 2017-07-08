class ArtistsController < ApplicationController

  def show
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params
      .require(:artist)
      .permit(
        :name, :image_url)
  end

end
