Rails.application.routes.draw do

  root "pages#home"

  devise_for :users

  resources :users, only: [:show]
  resources :events, except: [:destroy]
  resources :categories
  resources :profiles, only: [:new, :edit, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
