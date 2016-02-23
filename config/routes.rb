Rails.application.routes.draw do
  
  root 'customers#index'

  #resources :users do
    resources :customers
  #end
  
end
