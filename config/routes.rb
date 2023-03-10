Rails.application.routes.draw do
  resources :users, only: [:show, :edit]
  resources :post_images, only: [:new, :create, :index, :show]
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  devise_for :users
  root :to => 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/homes/about' => 'homes#about' ,as: 'about'
end
