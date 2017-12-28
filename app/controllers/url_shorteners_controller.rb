class UrlShortenersController < ApplicationController

  def index
    @url_shorteners = UrlShortener.all
  end

  def show
    @url_shortener = UrlShortener.find_by_short_url(params[:id])
    redirect_to @url_shortener.long_url
  end

  def new
    @url_shortener = UrlShortener.new
  end

  def create
    @url_shortener = UrlShortener.new(url_shortener_params)
    @url_shortener.save!
    redirect_to root_path
  end

  private
    def url_shortener_params
      params.require(:url_shortener).permit(:long_url)
    end
end
