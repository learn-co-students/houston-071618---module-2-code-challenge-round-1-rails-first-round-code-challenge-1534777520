Rails.application.routes.draw do
  get '/search', to: 'heroines#index'
  resources :powers
  resources :heroines
end
