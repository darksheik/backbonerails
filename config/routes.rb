ImageThingy::Application.routes.draw do
  root :to => 'home#index'

  resources :favorites

  get '/search/:term' => 'search#index', :as => :search
end
