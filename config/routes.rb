Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/coordinates', to: 'coordinates#index'
      get '/weather', to: 'weather#index'
      get '/location_results', to: 'location_results#index'
    end
  end
  get '/', to: 'home#index'
end
