ActiveAdmin.register Poll do

  form do |f|
    f.inputs 'Register' do
      f.input :ngo_id_1_id
      f.input :ngo_id_2_id
      f.input :ngo_id_3_id
      f.input :ngo_id_4_id
    end
    f.actions
  end
  
end
