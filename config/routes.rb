Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "recipes#index"
  resources :recipes, except: [:edit] do
    collection do
      get 'search'
    end
    resources :steps, only: [:index]
    resources :materials, only: [:index]
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:show, :get_favorite_recipe_ids]
end
