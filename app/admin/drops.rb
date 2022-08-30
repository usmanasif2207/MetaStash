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
    column :country_name
    actions
    
end

form do |f|
  f.inputs 'Register' do
    f.label :country, class: 'l1'
    f.country_select  :country, priority_countries: ["PK"]
    
    @province = CS.states( :pk)
    @provinces= @province.map{|k,v| v}
    f.label :province, class: 'l1'
    f.select :province, @provinces
    @cities = CS.cities(:pb, :pk)
    f.label :city, class: 'l2'
    f.select :city, @cities
    f.input :latitude 
    f.input :longitude 
    f.input :is_active, as: :select, collection: [["Yes", true], ["No", false]], required: true
  end
    
    f.actions
  end
end

ActiveAdmin.register Drop , as: "Add Bulk Drops" do
  # menu false
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
    column :country_name
    actions
end

  form do |f|
f.inputs 'Upload Drop Locations as Bulk' do
  f.input :bulk_file, as: :file 
      end
      f.actions 
  end
end