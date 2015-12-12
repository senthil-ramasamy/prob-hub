Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  resources :solns
  resources :vprobs
  resources :probs
  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :probs do
  		resources :vprobs	
  		resources :solns
	end
  resources :solns do
  resources :versions, only: [:destroy] do
      member do
      get :diff, to: 'versions#diff'
      patch :rollback, to: 'versions#rollback'
      end
  end
  end
end