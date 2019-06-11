Rails.application.routes.draw do
  # get 'eqpt_type/index'
  # get 'eqpt_type/show'
  # get 'eqpt_type/new'
  # get 'eqpt_type/create'
  # get 'eqpt_type/edit'
  # get 'eqpt_type/update'
  # get 'eqpt_type/delete'
  # get 'eqpt_model/index'
  # get 'eqpt_model/show'
  # get 'eqpt_model/new'
  # get 'eqpt_model/create'
  # get 'eqpt_model/edit'
  # get 'eqpt_model/update'
  # get 'eqpt_model/delete'
  # get 'eqpt_function/index'
  # get 'eqpt_function/show'
  # get 'eqpt_function/new'
  # get 'eqpt_function/create'
  # get 'eqpt_function/edit'
  # get 'eqpt_function/update'
  # get 'eqpt_function/delete'
  devise_for :users, :controllers => { registrations: 'registrations' }
  get 'page/index'
  
  resources :equipment
  resources :eqpt_type
  resources :eqpt_function
  resources :eqpt_model
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end