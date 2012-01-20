class Edition < ActiveRecord::Base
  has_many :articles
  
  def self.latest
    Edition.order('number DESC').first
  end
end
