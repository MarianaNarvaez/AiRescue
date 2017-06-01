Rails.application.routes.draw do
  resources :dusts
  resources :nitrogens
  resources :ozones
  resources :carbon_dioxides
  resources :humidities
  resources :carbon_monoxides
  devise_for :users
  resources :temperatures
  resources :nodes
  resources :graphics
  get '/graphics/:id/showDay', to: 'graphics#showDay', :as => :day_graphic
  get '/graphics/:id/showWeek', to: 'graphics#show', :as => :week_graphic
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: 'json'} do
    resources :temperatures, only: [:index, :create, :destroy, :update, :show]
    resources :nodes, only: [:index, :create, :destroy, :update, :show]
    resources :carbon_monoxides, only: [:index, :create, :destroy, :update, :show]
    resources :humidities, only: [:index, :create, :destroy, :update, :show]
    resources :carbon_dioxides, only: [:index, :create, :destroy, :update, :show]
    resources :ozones, only: [:index, :create, :destroy, :update, :show]
    resources :nitrogens, only: [:index, :create, :destroy, :update, :show]
    resources :dusts, only: [:index, :create, :destroy, :update, :show]
  end
  root :to => 'nodes#index'
end
