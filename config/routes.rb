Rails.application.routes.draw do

  devise_for :admirals
  root to: 'homes#top'
  resources :ship_images, only: [:new, :create, :index, :show, :destroy]  

end
