class ArtistsController < ApplicationController
  before_action :all_artists, only: [ :index, :editor_index ]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
  end

  def editor_index
  end

  def all_artists
    @artists = Artist.all.sort_by(&:id).reverse
  end

end
