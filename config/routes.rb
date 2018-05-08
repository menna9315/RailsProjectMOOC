Rails.application.routes.draw do
  resources :lectures do
    resources :comments
  
   member do
     put "like", to: 'lectures#upvote'
   end
  
end

  resources :courses
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  #devise_for :users
  #devise_for :users, path: 'users'
  devise_for :users, controllers: { sessions: "users/sessions" , registrations: "users/registrations" }
  resources :courses 
      root 'courses#index'

    
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

