class ClassifiedObserver < ActiveRecord::Observer
  observe :classified

  def after_create(classified)
    ClassifiedSpread.trigger_classified_spread(classified)
  end
  
  def after_update(classified)
    ClassifiedSpread.trigger_classified_spread(classified)
  end
  
  def after_save(classified)
    ClassifiedSpread.trigger_classified_spread(classified)
  end
  
  def after_destroy(classified)
    ClassifiedSpread.trigger_classified_spread(classified)
  end

end
