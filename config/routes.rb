Rails.application.routes.draw do
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
end
