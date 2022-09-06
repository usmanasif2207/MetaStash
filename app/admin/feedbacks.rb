ActiveAdmin.register Feedback do
  actions :index, :show , :edit , :destroy , :update
  
  controller do
    def permitted_params
    params.permit!
    end
    end

    index do
      selectable_column
      column :id
      column :message_heading
      column :message_details
      actions
  end
 
    scope:all
    scope:resolved
    scope:not_resolved

  
end
