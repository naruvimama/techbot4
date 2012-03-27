class ClassifiedSpread < ActiveRecord::Base
  belongs_to :edition
  
  def self.trigger_all_classified_spread
    Classified.select("DISTINCT area, edition_id").each do |classified|
      self.trigger_classified_spread(classified)
    end
  end
  
  def self.trigger_classified_spread(classified)
    that_spread = ClassifiedSpread.where({ :area => classified.area, :edition_id=> classified.edition_id}).first || ClassifiedSpread.new({ :area => classified.area, :edition_id=> classified.edition_id})
    spread_items = Classified.where({:area => classified.area, :edition_id=> classified.edition_id})
    spread_items_hash = {}
    spread_items.each do |sp|
      if spread_items_hash.has_key? sp.classified_category.category
        spread_items_hash[sp.classified_category.category].push( sp.content )
      else
        spread_items_hash[sp.classified_category.category]= [sp.content]
      end
    end
    output_stuff = []
    spread_items_hash.keys.sort.each do |ke|
      output_stuff.push (self.generate_classified_strs ke, spread_items_hash[ke])
    end
    that_spread.content_spread = output_stuff.join(' ')
    that_spread.save
  end
  def self.generate_classified_strs(ke, items)
    opt =  ''
    items.each do |i|
      opt.concat( "<span>#{i}</span>") 
    end
    "<li class='cl-head'><a href='#' data-cl-items='#{opt}'>#{ke.titleize}</a></li>"
  end
end

