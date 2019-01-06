Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/coordinates', to: 'coordinates#index'
      get '/weather', to: 'weather#index'
      get '/results', to: 'results#index'
    end
  end
end
