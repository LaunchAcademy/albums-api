Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :albums, only: [:index]
    end
  end

  resources :albums, only: [:index]

  root "albums#index"
end
