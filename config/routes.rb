Optimizable::Engine.routes.draw do
  resources :optimizations
end

Rails.application.routes.draw do
  resources :optimizations

end