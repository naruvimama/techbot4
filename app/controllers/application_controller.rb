class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :new_feedback

  def new_feedback
    @feedback = Feedback.new
  end
end
