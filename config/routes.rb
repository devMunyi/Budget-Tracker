Rails.application.routes.draw do
  devise_for :users
  
  root "categories#index"

  resources :categories, only: [:index, :new, :create] do
    resources :expenses, only: [:new, :create, :index]
  end
end
