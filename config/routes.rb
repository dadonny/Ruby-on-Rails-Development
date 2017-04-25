Rails.application.routes.draw do
  
  
  resources :productdiscounts
  resources :middleimages
  resources :smsintegrations
  resources :importexcels
  resources :custom_designs
  resources :testmes
  resources :custom_mesurments
  resources :shipping_addresses
  resources :cart_items
  resources :orders
  resources :carts
  resources :paytms
  resources :blogs
  resources :banners
  resources :categories
  resources :products
  mount RailsAdmin::Engine => '/buclos_admin', as: 'rails_admin'
  
 
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks",registrations: 'registrations' }

  delete "cartsmesu/:id"=>"carts#cartsmesu"
  get 'stati/about'
  get  'category_wise_product/:id'=>"productdiscounts#category_wise_product"
  get 'stati/privacy_policy' 
  get 'stati/contact'
  post 'subscribe_newsletter'=>"stati#subscribe_newsletter"
  post 'contact_us'=>"stati#contact_us"
  get 'keyword/:id'=>"stati#keyword" 
  get 'keyword_image/:id'=>"stati#keyword_image" 
  get 'search_product_for_disco'=>"productdiscounts#search_product_for_disco" 
  get 'cart_show'=>"carts#show" 
  get "show_scroll/:id"=>"categories#show_scroll"
  get "customization"=>"stati#customization"
  post 'paytmreturn'=>"paytms#paytmreturn"
  post "user_ship_address"=>"shipping_addresses#create_shipping_address"
  patch "user_ship_address"=>"shipping_addresses#update_shipping_address"
  post "custome_user_mesurement"=>"custom_mesurments#create_mesurement"
  patch "custome_user_mesurement"=>"custom_mesurments#update_mesurement"
  get "custome_user_mesurement"=>"custom_mesurments#create_mesurement"
  patch "custome_user_mesurement/:id"=>"custom_mesurments#update_mesurement"
  get "custome_user_mesurement/:id"=>"custom_mesurments#create_mesurement"
  post "custome_user_mesurement/:id"=>"custom_mesurments#create_mesurement"
  get 'order_mesurement_summary/:id'=>"orders#order_mesurement_summary" 
  get 'order_shipping_address/:id'=>"orders#order_shipping_address" 
  get 'my_orders'=>"orders#my_orders" 
  get 'your_orders'=>"orders#your_orders" 
  get 'order_complete'=>"orders#order_complete" 
  get 'save_percentage'=>"productdiscounts#save_percentage"
  get 'proceed'=>"carts#checkout" 
  post 'shippingpayment'=>"shipping_addresses#create" 
  patch 'shippingpayment'=>"shipping_addresses#create" 
  get 'payment'=>"carts#payment" 
  post 'apply_coupon_code'=>"paytms#apply_coupon_code" 
  get 'stati/coming_soon'
  get 'stati/secure'
  root 'stati#home'
  post "add_to_cart"=>"carts#add_to_cart"

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
