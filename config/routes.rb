Rails.application.routes.draw do

  root to: 'emails#index'
  resources :emails
  get 'mail/:id' => 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
