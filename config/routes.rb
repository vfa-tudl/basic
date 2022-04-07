Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "articles#index"
  get "/articles", to: "articles#index"
  get '/about', to: "root#about" 
  
end
