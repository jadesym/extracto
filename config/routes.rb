Rails.application.routes.draw do
  resources :users do
    get 'reset_api_key', to: "pages#reset_key", as: :reset_api_key
  end
  devise_for :users, path: 'accounts'
  root "pages#home"
end
