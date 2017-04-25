RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar true
  config.model 'Importexcel' do
     visible false
  end
  config.model 'Smsintegration' do
     visible false
  end
  config.model 'Testme' do
     visible false
  end
  config.model 'Variant' do
     visible false
  end
  config.model 'Order' do
     visible false
  end

  config.model 'Category' do
    list do
      field :name
      field :parent_id
      field :position  
    end
    
    edit do
      field :name
      
      field :children
      field :position 
      exclude_fields :categorizations
      exclude_fields :products
    end
  end
  
  config.model 'Product' do
    
    edit do
      exclude_fields :categorizations
      include_all_fields
       field :image do
          label "Size Chart"
       end
    end
     
     list do
      include_all_fields
         field :image do
            label "Size Chart"
         end

     end
    

  end
  
 
 
  
  
  

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
