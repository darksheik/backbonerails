class SearchController < ApplicationController

  def index
    @favorites = Favorite.all
    @term = params[:term]
    @results = get_results

    respond_to do |format|
      format.html { render 'home/index' }
      format.json { render :json => @results }
    end
  end

  private
  def get_results
    response = HTTParty.get("http://ajax.googleapis.com/ajax/services/search/images?v=1.0&imgsz=small&q=#{CGI.escape(@term)}")
    response['responseData']['results'].map do |r| 
      SearchResult.new(:url => r['unescapedUrl'])
    end
  end

end
