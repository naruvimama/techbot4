class FeedbacksController < ApplicationController
  def create
    @feedback = Feedback.create(params)
    if current_user
      @feedback.user_id = current_user.id
    end
    
    respond_to do |f|
      if @feedback.save!
        f.json { render :json => {:success => true}}
      else
        f.json { render :json => {:success => false}}
      end
    end
  end
end
