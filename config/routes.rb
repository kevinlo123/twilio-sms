Rails.application.routes.draw do
   root 'twilio#index'      
   post '/twilio/create', to: 'twilio#create', as: 'create'
end
