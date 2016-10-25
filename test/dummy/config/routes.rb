Rails.application.routes.draw do
  resources :products
  mount Optimizable::Engine => "/optimizable"
end
