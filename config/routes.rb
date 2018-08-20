Rails.application.routes.draw do
  resources :powers#, only: [:index] YEAH RIGHT! WE WANT IT ALL!
  resources :heroines#, only: [:index]
end
