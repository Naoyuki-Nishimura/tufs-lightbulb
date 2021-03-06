Rails.application.routes.draw do

  
  
  resources :events

  resources :interviews, :only => [:new, :create, :index]

  ActiveAdmin.routes(self)
  
  devise_for :users
  
 
  
  resources :posts, :only => [:index, :show]  
  
  resources :posts do
    resources :feedbacks, only: [:create, :destroy]
  end
  
  
  resources :fileuploads, only: [:create, :new]
  
  get 'home/index'
  
  get 'home/edit_user' => 'home#edit_user'
  
  get 'home/about' => 'home#about'
  
  get 'home/blog' => 'home#blog'
  
  
  
  root 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
