Rails.application.routes.draw do
  get 'main/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#home'

  get 'about', to: 'main#about'

  resources :articles, only: [:show, :index, :new, :create]
end
