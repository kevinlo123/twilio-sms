class Phone < ApplicationRecord
   def send_sms(number, body)
      account_sid = "ACaac113e551baf5b8606a9b6ccdc71970"
      auth_token = "55a6e3753a1a7509dbbbbb70bf59d3dc"
      @client = Twilio::REST::Client.new account_sid, auth_token
      message = @client.messages.create({
        :from => "+16179367819",
        :to => number,
        :body => body,
      })
   end
end
