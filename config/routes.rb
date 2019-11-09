Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
      registrations: 'users/registrations'
  }


  get 'welcome/index'

  resources :articles, :user_groups

  namespace :admin do
    get 'championships/admin_view', to: 'championships#admin_view', as: :championships_admin_view
    resources :championship_types, :championships
  end

  root 'welcome#index'
end
