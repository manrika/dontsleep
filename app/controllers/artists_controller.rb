class ArtistsController < ApplicationController
  before_action :all_artists, only: [ :index, :editor_index ]
  before_action :find_artist, only: [ :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
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

  def artist_params
    params.require(:artist).permit(:name, :quote, :manage, :recording, :spotify, :instagram, :quoted_by, :photo)
  end

end
