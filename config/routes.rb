Rails.application.routes.draw do
  get 'orders/generate_report' => 'orders#generate_report'

  resources :orders
  resources :customers
  resources :categories
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "orders#index"
  
  post 'orders/update_order_status'
end
