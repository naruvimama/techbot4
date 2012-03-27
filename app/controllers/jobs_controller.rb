class JobsController < ApplicationController
  def index
    @jobs = Job.order("valid_date DESC, updated_at DESC").page(params[:page]).per(5)
  end
  
  def show
    @job = Job.find(params[:id])
  end
end
