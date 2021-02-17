Rails.application.routes.draw do
  get 'rooms/index'
  get 'rooms/new'
  get 'rooms/create'
  get 'rooms/show'
  get 'rooms/edit'
  get 'rooms/update'
  get 'rooms/destroy'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "rooms#index"
  resources :rooms
  resource :users, only: :show
end
