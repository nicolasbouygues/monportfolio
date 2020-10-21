Rails.application.routes.draw do
  root to: 'pages#home'
  get 'projects', to: 'projects#index'
  get "projects/new", to: "projects#new"
  get 'projects/:id', to: 'projects#show', as: :project
  post "projects", to: "projects#create"
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
