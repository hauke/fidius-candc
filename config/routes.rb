CommandAndControl::Application.routes.draw do
  #resources :services
  #resources :hosts

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

  resources :hosts do
    collection do 
      get 'graph'
      get 'svg_graph'
      get 'clear'
      get 'status'
    end
    member do
      get 'nvd_entries'
      get 'info'
      get 'exploits'
    end
  end

  resources :exploits do
    member do
      get 'pick'
    end
  end

  resources :tasks do
    collection do
      post 'scan'
      post 'addroutetosession'
      post 'execreconnaissance'
      post 'installpersistence'
      post 'startbrowserautopwn'
      get 'clean'
    end
  end

  resources :prelude_events do

  end

  resources :actions do
    collection do 
      get 'update_all'
      get 'dialog_closed'
      get 'attack_host'
      get 'reconnaissance'
      post 'scan'
      post 'rate_host'
      get 'next_target'
      get 'clean_hosts'
      post 'start_file_autopwn'
      post 'start_browser_autopwn'
    end
  end

  resources :events do
    collection do
      get :fetch_next_event
      get :user_response
    end
  end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "hosts#graph"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
