Rails.application.routes.draw do

  root to: 'welcome#index'
  get '/strava' => 'strava#original_call'
  get '/token_exchange' => 'strava#token_exchange'

  devise_for :users
end
