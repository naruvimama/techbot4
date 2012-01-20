class Tag < ActiveRecord::Base
  @@tag_cache = {}
  
  def self.add_tag(obj, tg)
    if (@@tag_cache.has_key? tg)
      add_new_obj_to_cache(obj, tg)
      (obj.tags << @@tag_cache[tg].id) if obj.tags.index(@@tag_cache[tg].id) < 0
    else
      tag = Tag.first(tag)
      (tag = Tag.create!(:tag => tg)) if tag.nil?
      (obj.tags << tag.id) if obj.tags.index(tag.id) < 0
    end 
  end
  
  def self.add_new_obj_to_cache(obj, tg)
    (@@tag_cache[tg][obj.class] << obj.id) if @@tag_cache[tg][obj.class].index(tg) < 0
  end
  
  def self.remove_tag(obj, tg)
    if (@@tag_cache.has_key? tg)
      tag_id = @@tag_cache[tg].id 
      remove_obj_from_cache(obj, tg)
    end
    tag=Tag.first(:tag => tg)
    if not tag.empty?
      idx = obj.tags.index(tag_id)
      (obj.tags.del(idx)) if idx >= 0
    end
  end
  
  def remove_obj_from_cache(obj, tg)
    (@@tag_cache[tg][obj.class].del!(obj.id)) if @@tag_cache[tg][obj.class].index(tg) < 0
  end
    
  def self.add_one_tag(obj,tg)
    tg.strip!
    add_tag(obj, tg)
  end

  def self.add_many_tags(obj, tgs)
    tgs.split(',').each do |tg|
      tg.strip!
      add_tag(obj, tg)
    end
  end

  def self.remove_one_tag(obj,tg)
    tg.strip!
    remove_tag(obj, tg)
  end

  def self.remove_many_tags(obj, tgs)
    tgs.split(',').each do |tg|
      tg.strip!
      remove_tag(obj, tg)
    end
  end
end
