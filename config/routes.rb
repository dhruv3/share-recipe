Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes do
    resources :comments
  end
  resources :tags
end
