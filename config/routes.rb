Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #query parameter
    get "/param_games" => "games#fun_game"
    get "/number_game" => "games#guess_number"

    #segment parameter
    get "/number_game/:guess" =>  'games#guess_number'

    #body parameter
    post "/body_parameter_url" => 'games#body_parameter'

  #   get "/photos" => "photos#index"
  end
end
