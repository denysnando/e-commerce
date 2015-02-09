Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :products
  resources :purchase_orders

  root :to => 'welcomes#index'

end
