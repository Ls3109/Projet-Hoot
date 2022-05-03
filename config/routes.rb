Rails.application.routes.draw do
  root 'tweets#index'
  
  devise_for :users
  
  
  resources :tweets do
    member do
      put "like", to: "tweets#like"
      put "dislike", to: "tweets#dislike"
    end
  end

  resources :users do
    get 'profile'
  end

end
