class TwilioController < ApplicationController
  def index
  end
  
  def send_sms
    message = params[:message]
    number = params[:number]
    account_sid = 'AC74fb7c846d27f18ea5783c76adf13f5a'
    auth_token = '241044a097f659bda199c07ff9368adc'
    
    @client = Twilio::REST::Client.new account_sid, auth_token
    @message = @client.account.messages.create({:to => "+1"+"#{number.gsub(/[^0-9]/, "")}",
                                      :from => "+17087462076",
                                       :body => "#{message}"})
      redirect_to '/'
  end
  

end
