module Messenger
   def send_sms(number)
      account_sid = ENV['ACCOUNT_SID']
      auth_token = ENV['AUTH_TOKEN']
      
      @client = Twilio::REST::Client.new account_sid, auth_token
      
      message = @client.messages.create({
        :from => "+16179367819",
        :to => number,
        :body => 'Work hard, do good',
      })
   end
end