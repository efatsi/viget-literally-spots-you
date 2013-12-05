class Alert < ActiveRecord::Base

  validates :status, :number, :presence => true
  validates :status, :inclusion => { :in => ["open", "closed"] }

  scope :open, -> { where(:status => "open") }

  def self.send_notifications
    texter = Texter.new

    open.each do |alert|
      texter.send_to(alert.number, "The parking spot just freed up!")
      alert.update_attribute(:status, "closed")
    end
  end

end
