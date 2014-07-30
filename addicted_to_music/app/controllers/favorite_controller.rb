class FavoriteController < ApplicationController
  def test
  end
  def show
  end
  def youtube
    @youtube = {}

    return if params[:search_keys].blank? || params[:search_keys][:name].blank?
    find_all_youtube
  end

  def find_all_youtube
    @keywords = params[:search_keys][:name]
    @keywords = @keywords.gsub(" ", "+").gsub("　", "+")
    @youtube = Youtube.search(@keywords)

  end
end
