class ArchivesController < ApplicationController
  def index
    @editions = Edition.published.order("number DESC").page( params[:page] )
  end

end
