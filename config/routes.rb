Rails.application.routes.draw do
  get 'about-us', to: 'about#index', as: :about

  get 'password', to: 'password#edit', as: :edit_password
  patch 'password', to: 'password#update'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy', as: 'logout'

  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'

  get 'password/reset/edit', to: 'password_reset#edit', as: 'password_reset_edit'
  patch 'password/reset/edit', to: 'password_reset#update'

  root to: 'main#index'
end
