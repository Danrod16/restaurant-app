Rails.application.routes.draw do
  resources :restaurants, except: :destroy do
    collection do
      get :biggest # restaurants/biggest
    end
    member do
      get :chef # restaurants/:id/chef
    end
  # /restaurants/42/reviews
    resources :reviews, only: :create
  end
    resources :reviews, only: :destroy

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  delete "/restaurants/:id", to: "restaurants#destroy", as: :delete_restaurant
end
