class ReleasesController < ApplicationController
  before_action :all_releases, only: [ :index, :editor_index ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
  end

  def editor_index
  end

  def edit
    @release = Release.find(params[:id])
    @artist_names = [].sort

    Artist.all.each do |artist|
      @artist_names << artist.name
    end
  end

  def update
    @release = Release.find(params[:id])
    if @release.update(release_params)
      redirect_to editor_releases_path
    else
      render :edit
    end
  end

  def all_releases
    @releases = Release.all.sort_by(&:id).reverse
  end


  def release_params
    params.require(:release).permit(:track_title, :artist_name, :spotify, :apple, :tidal, :amazon)
  end
end
