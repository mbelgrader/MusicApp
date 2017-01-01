class TracksController < ApplicationController

  def index
    @tracks = Track.all
    render :index
  end

  def show
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to album_url(@track.album_id)
    else
      @album = @track.album
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
  end

  def new
    @track = Track.new(album_id: params[:album_id])
    @album = Album.find(params[:album_id])
    render :new
  end

  def update
  end

  def destroy
  end

  private

  def track_params
    params.require(:track).permit(:name, :album_id, :bonus, :lyrics)
  end
end
