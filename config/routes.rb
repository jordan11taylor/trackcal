Trackcal::Application.routes.draw do
  devise_for :users
  root to: "trackdays#index"

  resources :trackdays, only: [:index, :show]

  namespace :admin do
    root to: "trackdays#index"

    resources :trackdays
  end

  match '/:id' => 'high_voltage/pages#show', :as => :static, :via => :get
end
