Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users

  namespace :admin do
    resources :status
  end
end
