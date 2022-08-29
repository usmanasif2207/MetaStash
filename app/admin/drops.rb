ActiveAdmin.register Drop do
  controller do
    def permitted_params
    params.permit!
    end
    end

  index do
    column :id
    column :reward_type 
    column :reward_amount
    column :is_active
    column :longitude
    column :latitude
    column :time_to_active
    column :city
    column :country
    actions
end

form do |f|
  f.inputs 'Register' do
    
    f.label :country, class: 'l1'
    f.country_select  :country, priority_countries: ["PK"]
    f.label :province, class: 'l1'
    f.input :latitude 
    f.input :longitude 
  end
  f.actions
end
  
end
