Guestlist::Application.routes.draw do
  resources :types

  resources :guests

  resources :performers

  resources :lists

  resources :venues

  resources :events

  root :to => "home#index"
  # devise_for :users, :controllers => {:registrations => "registrations"}
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "omniauth_callbacks"}

  resources :users
end