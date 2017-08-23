Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes do
    resources :comments
  end
  resources :tags
  resources :chefs

  resources :author_sessions, only: [ :new, :create, :destroy ]
  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
end
