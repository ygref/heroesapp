Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :players do
    resources :players_characters, only: [:index, :show]
  end

  resources :characters do
    resources :players_characters, only: [:index, :show]
  end

get "/players" => "players#index"
get "/players/:id" => "players#show"
post "/players" => "players#create"

get "/characters" => "characters#index"
get "/characters/:id" => "characters#show"
post "/characters" => "characters#create"
delete "characters/:id" => "characters#destroy"

get "players_characters" => "players_characters#index"
get "players_characters/:id" => "players_characters#show"
end
