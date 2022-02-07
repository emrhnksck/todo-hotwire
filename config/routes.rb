Rails.application.routes.draw do
  resources :todos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to:"todos#index"
  get "/completed/:id" ,to: "completed#update", as: "update_completed"
  # Defines the root path route ("/")
  # root "articles#index"
end
