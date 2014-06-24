Guestlist::Application.routes.draw do
  resources :eventguests

  resources :types

  resources :performers

  resources :venues

  resources :events

  root :to => "home#index"
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}, controllers: {omniauth_callbacks: "users/omniauth_callbacks", :registrations => 'registrations' }

  resources :users
end