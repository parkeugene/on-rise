Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :posts
  resources :projects
  get 'welcome/index'
  root 'welcome#index'

  # get 'projects/write'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
