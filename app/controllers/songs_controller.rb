class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
      @song = Song.new
    end

  def create
      @song = Song.new(song_params)

        if @song.save
          redirect_to @artist
        else
          redirect_to root
        end
    end

    private

  def song_params
    params.require(:song).permit(:title, :language, :lenght_in_min, :artist_id)
  end
end
