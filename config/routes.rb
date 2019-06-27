Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/param_games" => "games#fun_game"
    get "/number_game" => "games#guess_number"

    #segment parameter
    get "/segment_parameter_url/:guess" =>  'games#url_segment_method'
  #   get "/photos" => "photos#index"
  end
end
