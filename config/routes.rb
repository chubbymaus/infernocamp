Rails.application.routes.draw do
  get 'favorites/guides'

  get 'favorites/courses'

  get 'mycourses/index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :topics, only: [:index, :show]

  
  resources :courses do
    collection do
      get 'search'
    end  
    member do
      put "like",    to: "courses#upvote"
      put "dislike", to: "courses#downvote"
    end
  end  
  resources :guides do
    collection do
      get 'search'
    end  
  end 
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  root to: 'pages#home'

  get 'mycourses', to: 'mycourses#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
