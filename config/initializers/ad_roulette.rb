if ActiveRecord::Base.connection.table_exists? 'advertisements'
  Advertisement.regenerate_current_ads
end
