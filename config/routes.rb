Rails.application.routes.draw do
  # get 'powers/index'
  #
  # get 'powers/show'
  #
  # get 'powers/new'
  #
  # get 'powers/edit'
  #
  # get 'index/show'
  #
  # get 'index/new'
  #
  # get 'index/edit'
  #
  # get 'heroines/index'
  #
  # get 'heroines/show'
  #
  # get 'heroines/new'
  #
  # get 'heroines/edit'

  resources :powers
  resources :heroines
end
