ActiveAdmin.register Feedback do
  actions :index, :show , :edit , :destroy , :update
  
  controller do
    def permitted_params
    params.permit!
    end
    end
 
    scope:all
    scope:resolved
    scope:not_resolved

  
end
