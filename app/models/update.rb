class Update < ActiveRecord::Base
  has_attached_file :image,       :styles => { :medium => "500x350>" }, :default_url => "http://weknowgifs.com/wp-content/uploads/2013/05/what-no-gif.gif"
  has_attached_file :canny_image, :styles => { :medium => "500x350>" }, :default_url => "http://weknowgifs.com/wp-content/uploads/2013/05/what-no-gif.gif"

  validates :status, :presence => true
  validates :status, :inclusion => { :in => ["taken", "available"] }

  def taken?
    status == "taken"
  end

  def available?
    status == "available"
  end

  def notify_if_necessary
    if available? && previous_update.taken?
      Alert.send_notifications
    end
  end

  private

  def previous_update
    Update.find(id - 1)
  end

end
