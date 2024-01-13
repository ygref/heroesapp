Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get "/players" => "players#index"
get "/players/:id" => "players#show"

get "/characters" => "characters#index"
get "/characters/:id" => "characters#show"

end
