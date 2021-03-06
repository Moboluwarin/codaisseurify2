class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def index
    @artist=Artist.find(params[:id])
    @songs = @artist.songs
  end

  def show; end

   def new

     @song =Song.new

   end

  def create
     @song = Song.new(params[:Song])

    if @song.save
      redirect_to @song, notice: "Song Saved"
    else
      render :new
    end
  end

  def edit; end

  def update
    if @song.update(song_params)
      redirect_to @song, notice: "Song updated"
    else
      render :edit
    end
  end

  def destroy
    @song=Song.find(params[:id])
    @song.destroy
    redirect_to :back
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params
      .require(:song)
      .permit(
        :title, :song_url,:artist_id
      )
  end
end
