Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"
  get "/benders", to: "benders#index"
  get "/benders/new", to: "benders#new"
  get "/benders/:id", to: "benders#show"
  get "/nations", to: "nations#index"
  get "/nations/new", to: 'nations#new'
  get "/nations/:id", to: "nations#show"
  get "/nations/:nation_id/benders", to: "nation_benders#index"
  post "/nations", to: 'nations#create'
  get '/nations/:id/edit', to: 'nations#edit'
  patch '/nations/:id', to: 'nations#update'
  get '/nations/:nation_id/benders/new', to: "nation_benders#new"
  post "/nations/:nation_id/benders", to: "benders#create"
end
