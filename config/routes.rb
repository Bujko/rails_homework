Rails.application.routes.draw do

  get 'users/new', to: 'users#new', as: 'register'
  post 'users/create'

  get 'users/edit/:id', to: 'useres#edit', as: 'edit_profile'
  put 'users/update/:id', to: 'users#update', as: 'update_profile'

  get 'users/forgotten'
  post 'users/send_forgotten'

  delete 'users/destroy'

  get 'users/show/:id', to: 'users#show', as: 'profile'

  post 'sessions/create', to: 'sessions#create', as: 'login'
  get 'sessions/destroy', to: 'sessions#destroy', as: 'logout'

  # post 'outfits/set_checked', to: 'outfits#set_checked', as: 'verify'
  resources :outfits do
    post 'set_checked', to: 'outfits#set_checked' , on: :collection, as: 'verify'
  end
  resources :cloths
  resources :users
	root 'staticpages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
