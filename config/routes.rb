Rails.application.routes.draw do
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  
  post "/users/updateUserPaymentStatus", to:"updatepayment#update"
  post "/users/createFeedback", to:"feedback#create"
  post "/users/castVote", to:"votes#cast"
  get "/users/getFeedback", to:"feedback#index"
  get "/users/getUserInformation", to:"getuserinformation#show"
  get "/users/getDropLocations", to:"drop#show"
  get '/users/getTime', to: "utc#time"
  get '/users/getNGOs', to: "ngo#index"
  
end