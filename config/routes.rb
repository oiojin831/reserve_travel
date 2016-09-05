Rails.application.routes.draw do
  root 'time_slots#index'
  resources :time_slots
  get '/keyboard', to: 'keyboards#callback'
end
