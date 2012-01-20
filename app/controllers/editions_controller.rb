class EditionsController < ApplicationController
  
  def latest
    @edition = Edition.latest
    @articles = @edition.articles.published.order("rank ASC")
    render :show
  end
  
  def show
    @edition = Edition.find(params[:id])
    if @edition
      @articles = @edition.articles.order("rank ASC")
    else
      flash.now.notice = "The Edition that you were looking for can not be found."
      redirect_to :latest 
    end
  end

end
