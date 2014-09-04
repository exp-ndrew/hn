Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


root :to => 'articles#index'

  resources :articles do
    resources :comments, except: [:new, :show]
  end

  resources :comments do
    resources :comments, except: [:new, :show]
  end

  resources :users
  resources :sessions
end
