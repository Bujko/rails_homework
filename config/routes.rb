Rails.application.routes.draw do

  resources :outfits
  resources :cloths
  resources :users
	root 'application#start'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
