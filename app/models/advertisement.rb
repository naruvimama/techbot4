class Advertisement < ActiveRecord::Base
  scope :valid, lambda{where("valid_to >=?", Date.today )}
  scope :weighed, order("weight DESC")
  @@current_ads = Object.new
  @@roulette = []
  @@roulette_counter = 0
  
  def self.regenerate_current_ads
    @@current_ads = self.valid.weighed.all
    total_weight = @@current_ads.reduce(0){|sum, ad|
      sum + ad.weight
    }
    temp = 0
    weight_lower = []
    weight_higher = []
    @@current_ads.each do |ad|
      weight_lower << temp
      weight_higher << temp + ad.weight
      temp += ad.weight
    end
    temp_roulette = []
    (1..1000).each do |i|
      d = rand(total_weight)
      (0..(weight_lower.length-1)).each do |j|
        if weight_lower[j]< d && weight_higher[j] > d
          temp_roulette << j
          break
        end
      end
    end
    @@roulette_counter = 0
    @@roulette = temp_roulette
  end
  
  def self.show_ad
    current_ad = @@current_ads[@@roulette[@@roulette_counter]]
    if @@roulette_counter == 1000
      @@roulette_counter = 0
    else
      @@roulette_counter+=1
    end
    current_ad
  end

end
