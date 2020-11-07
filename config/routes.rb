Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'articles/new'

  resources :articles do
    resources :comments
  end 

  root 'welcome#index'
end
