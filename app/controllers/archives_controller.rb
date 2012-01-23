class ArchivesController < ApplicationController
  def index
    @editions = Edition.published.order("number DESC")
  end

end
