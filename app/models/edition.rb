class Edition < ActiveRecord::Base
  attr_accessible :number, :week_no, :publish_date, :year, :publish, :image
  has_many :articles
  mount_uploader :image, ImageUploader  
  scope :published, where(:publish=>true)

  def self.latest
    Edition.published.order('number DESC').first
  end
end
