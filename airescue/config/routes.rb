Rails.application.routes.draw do
  resources :carbon_dioxides
  resources :humidities
  resources :carbon_monoxides
  devise_for :users
  resources :temperatures
  resources :nodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: 'json'} do
    resources :temperatures, only: [:index, :create, :destroy, :update, :show]
    resources :nodes, only: [:index, :create, :destroy, :update, :show]
    resources :carbon_monoxides, only: [:index, :create, :destroy, :update, :show]
    resources :humidities, only: [:index, :create, :destroy, :update, :show]
  end
  root :to => 'nodes#index'
end
