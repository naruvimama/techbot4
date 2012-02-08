class Classified < ActiveRecord::Base
  belongs_to :classified_category
  belongs_to :edition
end
