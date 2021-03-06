class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about, :news, :create]
  before_action :all_artists, only: [ :home, :editor_home ]

  def home
    @colors = ["56, 176, 208, 1", "151, 124, 186, 1", "242, 86, 101, 0.79", "112, 198, 171, 1", "246, 192, 48, 1"]
  end

  def about
    @subscriber = Subscriber.new
    @sucess  = params[:format] ? true : false
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to about_path(@subscriber)
    else
      render :about
    end
  end

  def destroy
    @subscriber = Subscriber.find(params[:id])
    @subscriber.destroy!
    redirect_to editor_path
  end

  def news
  end

  def editor_home
    @admin = current_user.admin
    if @admin == false
      redirect_to about_path
    end
    @releases = Release.all.sort_by(&:id).reverse
    @artist = Artist.new
    @release = Release.new
    @subscribers = Subscriber.all
    @last_subscribed_date = Subscriber.last.created_at
  end

  private

  def all_artists
    @artists = Artist.all
  end

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
