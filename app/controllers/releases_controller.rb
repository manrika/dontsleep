class ReleasesController < ApplicationController
  before_action :all_releases, only: [ :index, :editor_index ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
  end

  def editor_index
  end

  def edit
    @release = Release.find(params[:id])
  end

  # def update
  #   if @release.update(release_params)
  #     redirect_to editor_releases_path
  #   else
  #     render :edit
  #   end
  # end

  def all_releases
    @releases = Release.all.sort_by(&:id).reverse
  end
end
