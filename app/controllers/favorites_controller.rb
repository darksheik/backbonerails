class FavoritesController < ApplicationController

  def create
    favorite = Favorite.find_or_create_by(:url => params[:favorite][:url])

    redirect_to request.referrer
  end

  def destroy
    favorite = Favorite.find(params[:id]).destroy

    redirect_to request.referrer
  end

end
