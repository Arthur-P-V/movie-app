Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/benedict" => "actore#benedict"
    get "/allmovies" => "movies#showall"
    get "/scott" => "movies#scott"
    get "/actor" => "actore#actor"
    get "/actorseg/:actor" => "actore#actor"
    post "/actorpost" => "actore#actor"
  end
end
