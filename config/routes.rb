Rails.application.routes.draw do
  root 'time_slots#index'
  resources :time_slots
end
