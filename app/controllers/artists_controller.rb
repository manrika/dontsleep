class ArtistsController < ApplicationController
  before_action :all_artists, only: [ :index, :editor_index ]
  before_action :rand_color, only: [ :index, :editor_index ]
  before_action :find_artist, only: [ :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @recording_artists = Artist.where(recording: true).sort_by(&:id).reverse
    @managing_artists = Artist.where(manage: true).sort_by(&:id).reverse
  end

  def editor_index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.user = current_user
    if @artist.save
      redirect_to editor_artists_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      redirect_to editor_artists_path
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy!
    redirect_to editor_artists_path
  end

  private

  def all_artists
    @artists = Artist.all.sort_by(&:id).reverse
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end

  def rand_color
    @colors = ["56, 176, 208, 1", "151, 124, 186, 1", "242, 86, 101, 0.79", "112, 198, 171, 1", "246, 192, 48, 1"]
  end

  def artist_params
    params.require(:artist).permit(:name, :quote, :manage, :recording, :spotify, :instagram, :quoted_by, :photo)
  end

end
