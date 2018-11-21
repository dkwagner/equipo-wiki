Rails.application.routes.draw do
  devise_for :admins
  get 'users/new'
  get 'home/index'
  resources :images
  resources :articles
  mount Ckeditor::Engine => "/ckeditor"

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
