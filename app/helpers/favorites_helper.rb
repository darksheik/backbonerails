module FavoritesHelper
  def display_style_for(favorites)
    favorites.any? ? "display: none" : "display: block"
  end
end
