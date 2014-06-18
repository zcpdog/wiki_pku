WikiPku::Engine.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, class_name: "WikiPku::User", module: :devise
  resources :tabs
  resources :tags
  resources :ueditor_images, only: [:create]
  resources :categories
  resources :users do
    member do
      get :profile
    end
  end
  resources :entries do
    resources :comments
  end
  get 'search' => 'entries#search'
  root to: "welcome#index"
end
