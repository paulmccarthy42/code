Rails.application.routes.draw do
  get "/fortune" => "pages#display_fortune"
  get "/random" => "pages#random_numbers"
  get "/view" => "pages#view_counter"
  get "/bottles" => "pages#display_bottles"
end
