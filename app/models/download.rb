class Download < ActiveRecord::Base
  attr_accessible :area, :pdf
  mount_uploader :pdf, PdfUploader
end
