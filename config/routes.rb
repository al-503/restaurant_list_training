Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurant_lists only: [ :index, :show, :new, :create ] do
    resources :bookmarks only: [ :new, :create, :destroy ]
  end
end
