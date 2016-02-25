Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  #pages
  get 'pages/home'
  get 'pages/about_us'

  #users
  resources :users, only: [:new, :create, :show, :edit, :update] do
    resources :caravans, only: [ :new, :create, :update, :edit, :destroy]
    get 'caravans/:id', to: 'caravans#show_own', as: :own_caravan
    get 'caravans', to: 'caravans#index_own', as: :own_caravans
    resources :rentals, only: [:index, :show]
    # get 'rentals/:id', to: 'rentals#show', as: :user_rental
    # get 'rentals', to: 'rentals#index', as: :user_rentals
  end

  #caravans
  resources :caravans, only: [:show, :index] do
    resources :rentals, only: [:new, :create]
    # get 'rentals/:id', to: 'rentals#show', as: :caravan_rental
    # get 'rentals', to: 'rentals#index', as: :caravan_rentals
  end

  resources :rentals, only: :destroy

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
