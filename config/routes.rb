Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admin_users, ActiveAdmin::Devise.config
  resources :lectures do
    resources :comments
   member do
     put "like", to: 'lectures#upvote'
    post :spam
   end
  
end

  resources :courses
  ActiveAdmin.routes(self)
  #devise_for :users
  #devise_for :users, path: 'users'
  devise_for :users, controllers: { sessions: "users/sessions" , registrations: "users/registrations" }
  resources :courses 
      root 'courses#index'

    
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

