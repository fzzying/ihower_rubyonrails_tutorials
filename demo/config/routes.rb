Rails.application.routes.draw do
  resources :people

  resources :events do
    collection do
      get :search
      post :search
    end

    member do
      get :dashboard
    end
  end

  resources :events do
    resource :state, :controller => 'event_states'
    resources :attendees, :controller => 'event_attendees'
    resource :location, :controller => 'event_locations'
  end

  get "welcome/say_hello" => "welcome#say"
  get "welcome" => "welcome#index"
  root :to => "welcome#index"

  #So the below routing helper will be admin_events_path or admin_event_path(event)
  namespace :admin do
    resources :events
  end
end
