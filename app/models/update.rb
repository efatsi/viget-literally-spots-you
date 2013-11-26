class Update < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "500x350>" }, :default_url => "http://weknowgifs.com/wp-content/uploads/2013/05/what-no-gif.gif"

  validates :status, :presence => true
  validates :status, :inclusion => { :in => ["taken", "available"] }
end
