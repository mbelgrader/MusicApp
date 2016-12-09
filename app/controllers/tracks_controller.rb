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
      redirect_to tracks_url
    else
      render :new
    end
  end

  def new
    @track = Track.new
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
