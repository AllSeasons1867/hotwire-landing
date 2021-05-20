Rails.application.routes.draw do
  resources :welcomes
  get '/', to: 'greetings#index'
  resources :greetings
end
