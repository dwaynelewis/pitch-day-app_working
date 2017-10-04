Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'landing#index'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  resources :users, except: :index

end
