class Picture < ActiveRecord::Base
  attr_accessible :label, :image
  mount_uploader :image, ImageUploader
  has_many :articles
end
