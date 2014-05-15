WikiPku::Engine.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, class_name: "WikiPku::User", module: :devise
  root to: "welcome#index"
end
