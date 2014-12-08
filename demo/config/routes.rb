Rails.application.routes.draw do
  resources :people
  resources :events do
    resources :attendees, :controller => 'event_attendees'
    resource :location, :controller => 'event_locations'
  end

  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  root :to => "welcome#index"
end
