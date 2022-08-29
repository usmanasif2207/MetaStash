ActiveAdmin.register User do
  controller do
    def permitted_params
    params.permit!
    end
    end
    
    index do
      column :id
      column :name 
      column :email
      column :city
      column :role
      column :payment_status
      column :payment_date
      actions
  end


  form do |f|
    f.inputs 'Register' do
      f.input :name, :as => :string
      f.input :email, :as => :string
      f.input :password, :as => :password
      f.input :password_confirmation, :as => :password
      f.input :city, :as => :string
      f.input :country, :as => :string
    end
    f.actions
  end
  
  
end
