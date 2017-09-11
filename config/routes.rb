Rails.application.routes.draw do

  root "pages#home"

  devise_for :users
  resources :photos
  resources :users, only: [:show]
  resources :events, except: [:destroy] do
    resources :registrations, only: [:create]
  end
  resources :categories
  resources :profiles, only: [:new, :edit, :create, :update]

  namespace :api do
    resources :events
    resources :categories
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
