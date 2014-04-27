Chargen::Application.routes.draw do
  resources :characters
  resources :races
  root "high_voltage/pages#show", id: 'home'
  devise_for :users
end
