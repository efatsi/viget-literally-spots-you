class Texter

  def send_to(number, message)
    client.account.messages.create({
      :from => "+14693384438",
      :to   => number,
      :body => message
    })
  end

  private

  def client
    @client ||= Twilio::REST::Client.new(ENV["TWILIO_ACCOUNT_SID"], ENV["TWILIO_AUTH_TOKEN"])
  end

end
