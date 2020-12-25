Rails.application.routes.draw do
  devise_for :users

  root to: "marks#index"
  resources :marks do
    collection do
      post :mark_time
    end
  end
end
