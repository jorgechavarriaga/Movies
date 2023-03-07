Rails.application.routes.draw do
  devise_for 
  resources :plays do 
    resources :reviews
  end
  root 'plays#index'
end
