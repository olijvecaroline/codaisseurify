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
         render 'show'
        else
          flash[:error] = "This title is already in the list"
      render 'new'
        end
    end

    def destroy
      song_params =
      params.require(:song).permit(:title, :language, :lenght_in_min, :artist_id)

      @song = Song.new(song_params)

      artist = Artist.find(params[:song][:artist_id])

        if
          @song.destroy
          redirect_to @artists_path
        else
          flash[:error] = "deletion fails"
      render 'new'
        end
    end

end
