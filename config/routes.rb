Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/movies" => "movies#index"
    get "/movies/:id" => "movies#show"
    post "/movies" => "movies#create"
    patch "/movies/:id" => "movies#update"
    delete "/movies/:id" => "movies#destroy"
    get "/actors" => "actore#index"
    get "/actors/:id" => "actore#show"
    post "/actors" => "actore#create"
    patch "/actors/:id" => "actore#update"
    delete "/actors/:id" => "actore#destroy"
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
    post "/movie_genres" => "movie_genres#create"
  end
end
