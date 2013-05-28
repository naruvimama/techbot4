ActiveAdmin.register Advertisement do
  form :partial => "form"  

  collection_action :generate_roulette, :method => :get do
    Advertisement.regenerate_current_ads
    redirect_to :action => :index, :notice => "Generated all ads!"
  end
  
end
