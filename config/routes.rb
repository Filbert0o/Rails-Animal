Rails.application.routes.draw do

  root "campsites#index"

  resources :campsites, only: [:index, :show, :new, :create] do
    resources :villagers, only: [:new, :create]
  end
end
