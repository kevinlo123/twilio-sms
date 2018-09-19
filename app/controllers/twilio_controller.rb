class TwilioController < ApplicationController
   def index
      @phone = Phone.new
   end
   def create
      @phone = Phone.new(phone_params)
      # @phone.save //currently going to leave this out since this is PI     
      @cleaned = self.class.clean_number(@phone.number)
      @phone.send_sms(@cleaned,@phone.body)
      redirect_to root_path
   end
   def self.clean_number(number)      
      number = number.scan(/\d+/).join()
      number[0] == "1" ? number[0] = "" : number 
      return number
   end
   private 
      def phone_params
               params.require(:phone).permit(:number,:body)
      end
end
