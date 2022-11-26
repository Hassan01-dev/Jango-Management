Rails.application.routes.draw do
  root "home#index"

  devise_for :users

  resources :users, only: [] do
    get :profile, on: :member
  end

  resources :groups do
    get :member_index, on: :member
    get :non_member_index, on: :member
    # Must update this method to patch type
    get 'add_member/:user_id', action: :add_member, on: :member, as: :add_member 
  end
end
