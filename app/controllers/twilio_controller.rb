class TwilioController < ApplicationController

  def process_sms
    @update = Update.last

    render 'process_sms.xml.erb', :content_type => 'text/xml'
  end

end
