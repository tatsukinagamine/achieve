Rails.application.routes.draw do

  devise_for :users
 resources :blogs, only: [:edit, :update, :index, :destroy, :new, :create] do
  collection do
    post :confirm
  end
 end
 
 resources :contacts, only: [:new, :create] do
   collection do
     post :confirm
   end
 end
 
 root 'top#index'
 
end
