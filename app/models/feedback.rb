class Feedback < ActiveRecord::Base
  attr_accessible :info, :reaction, :user_id
end
