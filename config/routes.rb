Rails.application.routes.draw do
  get 'mycourses/index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :topics, only: [:index, :show]

  
  resources :courses
  resources :guides
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

  get 'mycourses', to: 'mycourses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
