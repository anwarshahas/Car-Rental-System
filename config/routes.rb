App2::Application.routes.draw do


#  get "bookings/new"
#  get "carinfos/new"
#  get "carinfo/new"
#  get "sessions/new"
	resources :users
	resources :sessions, :only => [:new, :create, :destroy]
	resources :carinfos
	resources :bookings
#  get "users/new"
	match '/bookcar', :to => 'bookings#new', :via => [:get], :as => 'bookcar'
	match '/addcarinfo', :to => 'carinfos#new', :via => [:get], :as => 'addcarinfo'
	match '/carinformation', :to => 'carinfos#index', :via => [:get], :as => 'carinformation'
	match '/signup', :to => 'users#new', :via => [:get], :as => 'signup'
	match '/signin', :to => 'sessions#new', :via => [:get], :as => 'signin'
	match '/signout', :to => 'sessions#destroy', :via => [:delete], :as => 'signout'
	match '/contact', :to => 'pages#contact', :via => [:get], :as => 'contact'
	match '/about', :to => 'pages#about', :via => [:get], :as => 'about'
	match '/help', :to => 'pages#help', :via => [:get], :as => 'help'
	root :to => 'pages#home', :via => [:get], :as => 'root'

#match 'gallery_:id' => 'gallery#show', :via => [:get], :as => 'gallery_show'


#  get "pages/home"
#  get "pages/contact"
#  get "pages/about"
#  get "pages/help"


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
