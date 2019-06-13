Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'page/index'
  
  resources :equipment
  resources :eqpt_types
  resources :eqpt_functions
  resources :eqpt_models
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end