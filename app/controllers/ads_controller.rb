class AdsController < ApplicationController
  def index
    @ads = Advertisement.weighed.order("updated_at DESC").page(params[:page])
  end


end
