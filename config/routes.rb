Rails.application.routes.draw do

  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }


  get 'welcome/index'

  get '/articles/admin_view', to: 'articles#admin_view'
  resources :articles, :user_groups

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
