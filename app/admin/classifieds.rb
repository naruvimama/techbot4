ActiveAdmin.register Classified do
  form :partial => "form"
  
  collection_action :generate_all, :method => :get do
    ClassifiedSpread.trigger_all_classified_spread
    redirect_to :action => :index, :notice => "Generated all !"
  end
  
  member_action :generate_one, :method => :get do
    cs = Classified.find(params[:id]).first 
    ClassifiedSpread.trigger_classified_spread(cs)
    redirect_to :action => :index, :notice => "Generated all !"
  end
end
