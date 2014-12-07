Rails.application.routes.draw do
  resources :people
  resources :events

  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  root :to => "welcome#index"
end
