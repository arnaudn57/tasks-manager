Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
    resources :companies do
        resources :customers do
            resources :projects do
                resources :tasks
            end
        end
    end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
