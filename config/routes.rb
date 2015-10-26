Rails.application.routes.draw do
  root 'products#index'

  get 'restaurants/', to: 'restaurants#index'

  get 'restaurants/:id', to: 'restaurants#show'

  get 'restaurants/:restaurant_id/products', to: 'restaurants#products'
  get 'restaurants/:restaurant_id/products/pet/:pet', to: 'restaurants#products_for_pet'

  get 'products/', to: 'products#index'
  get 'products/pet/:pet', to: 'products#products_for_pet'

  get 'products/:id', to: 'products#show'
end
