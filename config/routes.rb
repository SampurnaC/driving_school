Rails.application.routes.draw do
  devise_for :admins
  get "pages/home"
  get "pages/about"
  get "pages/services"
  
  get "up" => "rails/health#show", as: :rails_health_check

  resources :enquiries, only: [:new, :create]

  root "pages#home"
end
