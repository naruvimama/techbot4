class ClassifiedspreadsController < ApplicationController
  def index
    @spitems = ClassifiedSpread.order("edition_id DESC, area DESC") 
  end
  def show
    @spitem = ClassifiedSpread.find(params[:id])
  end
end
