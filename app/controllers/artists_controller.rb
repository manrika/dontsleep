class ArtistsController < ApplicationController
  before_action :find_artist, only: [ :edit, :update, :destroy, :move ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @artists = Artist.all.sort_by(&:id).reverse
    @recording_artists = Artist.where(recording: true).sort_by(&:id).reverse
    @managing_artists = Artist.where(manage: true).sort_by(&:id).reverse
    @colors = ["56, 176, 208, 1", "151, 124, 186, 1", "242, 86, 101, 0.79", "112, 198, 171, 1", "246, 192, 48, 1"]
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.user = current_user
    if @artist.save
      redirect_to editor_path
    else
      redirect_to editor_path
    end
  end

  def update
    if @artist.update(artist_params)
      redirect_to editor_path
    else
      redirect_to editor_path
    end
  end

  def move
    @artist.insert_at(params[:position].to_i)
    head :ok
  end

  def destroy
    @artist.destroy!
    redirect_to editor_path
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :quote, :manage, :recording, :spotify, :instagram, :quoted_by, :photo)
  end
end
