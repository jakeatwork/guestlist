Guestlist::Application.routes.draw do
  resources :guests_lists

  resources :types

  resources :guests

  resources :performers

  resources :lists

  resources :venues

  resources :events

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end