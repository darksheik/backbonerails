class HomeController < ApplicationController
  
  def index
    if request.post?
      redirect_to search_path(:term => params[:search])
    end

    @favorites = Favorite.all
    @term = params[:search]
    @results = []
  end

end
