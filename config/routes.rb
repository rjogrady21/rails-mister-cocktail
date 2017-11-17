Rails.application.routes.draw do
  get 'ingredients/index'

  resources :cocktails do
    resources :doses, only: [:new, :create, :show]
  end
  resources :doses, only: [:destroy]
  resources :ingredients, only: [:index]
  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
