class AlbumsController < ApplicationController

  def index
    @albums = Album.all
    render :index
  end

  def show
    @tracks = Track.all.where(album_id: params[:id])
    render :show
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to album_url(@album)
    else
      render :new
    end
  end

  def new
    @album = Album.new
    @bands = Band.all
    render :new
  end

  def update
  end

  def destroy
  end

  private

  def album_params
    params.require(:album).permit(:name, :band_id, :year, :live)
  end
end
