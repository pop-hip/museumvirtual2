Rails.application.routes.draw do
  resources :art_types
  resources :emotions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'emotions#index'
end