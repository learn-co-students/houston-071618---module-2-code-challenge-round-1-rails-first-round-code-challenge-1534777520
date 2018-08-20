Rails.application.routes.draw do
  resources :powers
  resources :heroines
  
  resources :heroines do
  collection do 
    get :search, :action => 'search_heroines', :as => 'search_heroines'
    get 'search/:q', :action => 'search', :as => 'search'
  end
end
end
