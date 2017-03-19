class SongsController < ApplicationController


  def index
    @songs = Song.all
  end

  def show
  @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
      song_params =
      params.require(:song).permit(:title, :language, :lenght_in_min, :artist_id)

      @song = Song.new(song_params)

      artist = Artist.find(params[:song][:artist_id])

        if
         @song.save
         redirect_to artist_path(artist)
        else
          flash[:error] = "Addition failed"
        render 'new'
        end
    end

    def destroy
      #song_params =
      #params.require(:song).permit(:title, :language, :lenght_in_min, :artist_id)
      @song = Song.find(params[:id])

      @song.destroy
      redirect_to artists_index_path
      #moet artistpath worden
    end




end
