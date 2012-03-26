class ClassifiedspreadsController < ApplicationController

  def index
    @spitems = ClassifiedSpread.order("edition_id DESC, area DESC").page(params[:page]).per(1)
  end

end
