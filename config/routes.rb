Rails.application.routes.draw do
  devise_for :users
  resources :users, shallow: true do
    resources :notes
    resources :meetings
  end
  # resources :meetings, only: %w[index new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
