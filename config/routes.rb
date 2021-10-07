Rails.application.routes.draw do
  resources :departments
  resources :projects
  resources :reviews
  resources :products
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
#  devise_for :users, controllers: {
#    sessions: "users/sessions",
#    registrations: 'users/registrations'
#  }
  resources :users, only: [:index, :show]
  resources :homes, only: [:index]
  root to: "tops#index"
  post '/tops/guest_sign_in', to: 'tops#guest_sign_in'
  resources :documents
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
