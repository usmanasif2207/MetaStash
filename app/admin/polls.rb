ActiveAdmin.register Poll do
  actions :index, :show
  controller do
    def permitted_params
    params.permit!
    end
  end

  index do
    selectable_column
    column :id
    column  "Ngo 1", :ngo_id_1.name 
    column :ngo_1_votes
    column "Ngo 2",:ngo_id_2.name
    column :ngo_2_votes
    column "Ngo 3",:ngo_id_3.name
    column :ngo_3_votes
    column "Ngo 4",:ngo_id_4.name
    column :ngo_4_votes
    column :is_active
    column :created_at  
end

  form url:"/admin/create/polls" , method: :post do |f|
    f.inputs 'Register' do
      f.input :ngo_id_1_id
      f.input :ngo_id_2_id , required: true
      f.input :ngo_id_3_id
      f.input :ngo_id_4_id
      f.input :is_active, as: :select, collection: [["Yes", true], ["No", false]], required: true
    end
    f.actions
  end
  
end
