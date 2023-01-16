Rails.application.routes.draw do
  root  'duty#top'
  resources :histories
  get '/', to: "duty#top"
  get '/startday', to: "duty#edit"
  post '/startday', to: "duty#new"
  get '/startday/:id' ,to: "duty#update"
  post '/startday/:id' ,to: "duty#update!"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
