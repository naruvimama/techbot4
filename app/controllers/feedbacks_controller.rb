class FeedbacksController < ApplicationController
  def create
    @feedback = Feedback.create(params[:feedback])
    if current_user
      @feedback.user_id = current_user.id
    end
    @feedback.save
    respond_to do |f|
      f.json { render :json => {:success => true}}
    end
  end
end
