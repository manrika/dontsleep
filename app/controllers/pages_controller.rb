class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :news]

  def home
    @new_artists = Artist.last(4).sort_by(&:id).reverse
    @colors = ["56, 176, 208, 1", "151, 124, 186, 1", "242, 86, 101, 0.79", "112, 198, 171, 1", "246, 192, 48, 1"]
  end

  def about
  end

  def news
  end

  def editor_home
    @artists = Artist.all.sort_by(&:id).reverse
    @releases = Release.all.sort_by(&:id).reverse
  end
end
