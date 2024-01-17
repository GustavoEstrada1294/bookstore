Rails.application.routes.draw do
  resources :sells
  resources :books
  root 'dashboard#index'
 
end
