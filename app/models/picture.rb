class Picture < ActiveRecord::Base
  attr_accessible :label, :image
  mount_uploader :image, ImageUploader
end
