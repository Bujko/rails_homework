Rails.application.routes.draw do


  post 'sessions/create', to: 'sessions#create', as: 'login'
  get 'sessions/destroy', to: 'sessions#destroy', as: 'logout'
  resources :outfits
  resources :cloths
  resources :users
	root 'staticpages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
