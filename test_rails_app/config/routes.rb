Rails.application.routes.draw do
  get "/test" => "pages#print_hello_world"
  get "/starters" => "pages#list_starters"
  get "/podcasts" => "pages#podcasts"
  get "/movies" => "pages#get_movies"
end
