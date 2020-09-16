Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %w[show edit update]do
    resources :notes
    resources :meetings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
