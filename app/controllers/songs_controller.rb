class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]
  before_action :authenticate_artist!, except: [:show]

  def index
    @songs = current_artist.songs
  end

  def show; end

  def new
    @song = current_artist.songs.build
  end

  def create
    @song = current_artist.songs.build(song_params)

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

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params
      .require(:song)
      .permit(
        :title, :song_url
      )
  end
end
