Inspyrails::Application.routes.draw do
  resources :item_userdreams

  resources :tag_dreams

  resources :tag_categories

  resources :tag_items

  resources :tag_userdreams

  resources :userdreams do
    resources :tag_userdreams
  end

  resources :categories do
    resources :tag_categories
  end

  resources :tags do
    resources :tag_dreams
    resources :tag_categories
    resources :tag_items
    resources :tag_userdreams
  end

  resources :meta_items

  resources :items do
    resources :meta_items
    resources :tag_items
    resources :item_userdreams
  end
  

  resources :types do
    resources :items
  end

  resources :dreams do
    resources :tag_dreams
    resources :userdreams
  end

  resources :users do
    resources :userdreams
  end

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
    # Canvas App
  resource :canvas, :only => [:show, :create]
  resource :credit, :only => :create
  resources :achievements, :only => [:index, :show, :new, :create]

  # Connect Site
  resource :facebook, :except => :create do
    get :callback, :to => :create
  end
  resource :dashboard, :only => :show
  resource :profile, :only => :show
  resource :timeline, :only => [:show, :create]
  resources :subscriptions, :only => [:index, :show, :create]
  post 'subscriptions/:id', :to => 'subscriptions#update'

  root :to => 'top#index'
end