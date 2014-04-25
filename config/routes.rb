Chargen::Application.routes.draw do
  resources :characters
  root "characters#index"
  devise_for :users
end
