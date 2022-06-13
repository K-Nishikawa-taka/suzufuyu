Rails.application.routes.draw do

  get 'admirals/show'
  devise_for :admirals
  root to: 'homes#top'
  resources :ship_images, only: [:new, :create, :index, :show, :destroy]  do
    resources :ship_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :admirals, only: [:show]
  
end
