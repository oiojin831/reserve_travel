Rails.application.routes.draw do
  root 'time_slots#index'
  resources :time_slots
  get '/keyboard', to: 'webhooks#keyboard'
  post '/message', to: 'webhooks#message'
end
