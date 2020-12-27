Rails.application.routes.draw do
  devise_for :users

  root to: "marks#index"
  resources :marks, only: %i[index new create]
end
