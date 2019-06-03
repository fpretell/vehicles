Rails.application.routes.draw do
  get 'show' , to: 'maps#show'
  post 'api/v1/gps' , to: 'ubications#create'
end
