Rails.application.routes.draw do

root :to => 'articles#index'

  resources :articles do
    resources :comments, except: [:new, :show]
  end

  resources :comments do
    resources :comments, except: [:new, :show]
  end
end
