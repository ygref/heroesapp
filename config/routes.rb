Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
get "/players" => "players#index"
get "/players/:id" => "players#show"
post "/players" => "players#create"

get "/characters" => "characters#index"
get "/characters/:id" => "characters#show"
post "/characters" => "characters#create"
delete "characters/:id" => "characters#destroy"
end
