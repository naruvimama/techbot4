class Article < ActiveRecord::Base
  has_many :comments
  belongs_to :author
  belongs_to :edition
  belongs_to :picture
end
