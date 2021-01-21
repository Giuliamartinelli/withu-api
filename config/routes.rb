Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :angels, only: [ :create, :update, :destroy, :index ]
      resources :verifications, only: [ :create, :index ]
      #get '/user', to: 'api#user'
      post '/create_location', to: 'methods#create_location'
      post '/call_angels', to: 'methods#call_angels'
      post '/send_location_sms', to: 'methods#send_location_sms'
      post '/send_verification', to: 'methods#send_verification'
      post '/verify_number', to: 'methods#verify_phone_number'
    end
  end

end
