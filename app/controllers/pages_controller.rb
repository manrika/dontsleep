class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :news]

  def home
    @new_artists = Artist.last(4).sort_by(&:id).reverse
  end

  def about
  end

  def news
  end

  def editor_home

  end
end
