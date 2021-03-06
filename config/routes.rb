ThorPlatform::Application.routes.draw do
require 'domains'

  constraints(LuxuryBuilder) do 
    get'/', to: 'lbd_pages#all' 
  end

  constraints(DefaultDomain) do 
    get '/', to: 'static_pages#home'
    root 'static_pages#home'
  end

  get '/all',     to: 'lbd_pages#all'
  get '/help',    to: 'static_pages#help'
  get '/signup',  to: 'users#new'
  get '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users do
    resources :companies, shallow: true do 
      resource :lbd_page
        #post '/lbd_page/new', to: 'lbd_pages#create'
    end
  end
  
    

  
  # Trying to get luxurybuilderdirectory path to work:
  



  

  #get "static_pages/home"
  #get "static_pages/help"
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
