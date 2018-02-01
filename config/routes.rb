Rails.application.routes.draw do
  devise_for :users
  resources :topics, only: [:index, :show]

  
  resources :courses
  resources :guides
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
