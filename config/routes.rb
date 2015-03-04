Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :products
  resources :purchase_orders
  resources :purchase_order_items, only: [:create, :update, :destroy]
  resources :categories

  root :to => 'welcomes#index'

end
