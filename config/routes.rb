Rails.application.routes.draw do
  root to: 'home#index'
  get 'locations', to: 'home#locations', as: 'locations' 
  get 'data', to: 'home#data', as: 'data'
end
