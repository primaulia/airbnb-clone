Rails.application.routes.draw do
  resources :messages
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  devise_for :users , path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  resources :flats, only: [:index]
end
