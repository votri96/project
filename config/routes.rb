Rails.application.routes.draw do
  resources :contacts, only: [:new, :create] 
  resources :tags, only: :show
  resources :tins, only: :show do
    resources :comments, except: [:show, :edit]
  end
  resources :category1s, only: :show
  resources :category2s, only: :show
  resources :users, only: %i(create update new edit)
  root "page#index"

  get "/admin", to: "admin#index"

  mount Ckeditor::Engine => '/ckeditor'

  namespace :admin do
    resources :roles
    resources :users
    resources :category2s
    resources :category1s
    resources :tins
    resources :tagdetails
    resources :tags
    resources :contacts
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
