Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'passengers#home'

  resources :passengers do
      get :social, on: :member
      get :comment, on: :member
      post :print, on: :member
  end
end
