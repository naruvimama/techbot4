class Edition < ActiveRecord::Base
  has_many :articles
  
  def self.latest
    Edition.order('no DESC').first
  end
end
