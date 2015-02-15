Rails.application.routes.draw do
  root 'twilio#index'
  post '/send_sms' => 'twilio#send_sms'

end
