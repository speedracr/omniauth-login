Rails.application.routes.draw do
  root 'home#index'
  get 'home/profile'
  get 'auth/:provider/callback', to: "sessions#create"
  get 'sign_out', to: "sessions#destroy", as: 'sign_out'
end
