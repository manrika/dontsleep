class ReleasesController < ApplicationController
  before_action :all_releases, only: [ :index, :editor_index ]
  before_action :find_release, only: [ :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
  end

  def editor_index
  end

  def new
    @release = Release.new
  end

  def create
    @release = Release.new(release_params)
    @release.user = current_user
    if @release.save
      redirect_to editor_releases_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @release.update(release_params)
      redirect_to editor_releases_path
    else
      render :edit
    end
  end

  def destroy
    @release.destroy!
    redirect_to editor_releases_path
  end

  private

  def all_releases
    @releases = Release.all.sort_by(&:id).reverse
  end

  def find_release
    @release = Release.find(params[:id])
  end

  def release_params
    params.require(:release).permit(:track_title, :artist_name, :spotify, :apple, :tidal, :amazon, :photo)
  end
end
