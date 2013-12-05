class TwilioController < ApplicationController

  def process_sms
    @update = Update.last

    if params[:Body].downcase.include?("alert") && @update.taken?
      Alert.create(:status => "open", :number => params["From"])
      render :nothing => true
    else
      render 'process_sms.xml.erb', :content_type => 'text/xml'
    end
  end

end
