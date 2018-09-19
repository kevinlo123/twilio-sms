class Phone < ApplicationRecord
   def send_sms(number, body)
      account_sid = ENV['ACCOUNT_SID']
      auth_token = ENV['AUTH_TOKEN']
      @client = Twilio::REST::Client.new account_sid, auth_token
      message = @client.messages.create({
        :from => "+16179367819",
        :to => number,
        :body => body,
      })
   end
end
