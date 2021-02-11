# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  # About
  get "about", to: "about#index"

  # Registration
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  #Session
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  # Passwords - Only works on signed in users
  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  root to: "main#index"
end
