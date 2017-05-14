Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "recipes#index"
  resources :recipes, except: [:destroy] do
    collection do
      get 'search'
    end
    resources :steps, except: [:destroy]
    resources :materials, except: [:destroy]
  end
end
