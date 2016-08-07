Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'
  root 'welcome#index'
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
