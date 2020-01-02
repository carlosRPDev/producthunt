Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new'
  post '/products', to: 'products#create', as: 'new_product'


    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
