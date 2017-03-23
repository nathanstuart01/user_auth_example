Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :cars

  get 'about_us', to: 'home#about'
  get 'pricing', to: 'home#pricing'
  get 'contact_us', to: 'home#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
