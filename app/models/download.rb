class Download < ActiveRecord::Base
  belongs_to :edition
  attr_accessible :area, :edition_id, :pdf
  mount_uploader :pdf, PdfUploader
end
