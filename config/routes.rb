Trackcal::Application.routes.draw do
  root to: "trackdays#index"

  resources :trackdays, only: [:index]

  namespace :admin do
    root to: "trackdays#index"

    resources :trackdays
  end
end
