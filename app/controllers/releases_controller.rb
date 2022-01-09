class ReleasesController < ApplicationController
  before_action :find_release, only: [ :edit, :update, :destroy ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @releases = Release.all.sort_by(&:id).reverse
    @colors = ["56, 176, 208, 1", "151, 124, 186, 1", "242, 86, 101, 0.79", "112, 198, 171, 1", "246, 192, 48, 1"]
  end

  def create
    @release = Release.new(release_params)
    @release.user = current_user
    if @release.save
      redirect_to editor_path
    else
      redirect_to editor_path
    end
  end

  def update
    if @release.update(release_params)
      redirect_to editor_path
    else
      redirect_to editor_path
    end
  end

  def destroy
    @release.destroy!
    redirect_to editor_path
  end

  private

  def find_release
    @release = Release.find(params[:id])
  end

  def release_params
    params.require(:release).permit(:track_title, :artist_name, :spotify, :spotify_embed, :apple, :tidal, :amazon, :photo)
  end
end
