Trackcal::Application.routes.draw do
  root to: "trackdays#index"

  resources :trackdays
end
