class Article < ActiveRecord::Base
  has_many :comments
  belongs_to :author
  belongs_to :edition
  belongs_to :picture
  serialize :tags
  
  def add_tags(str)
    str.split(",").each do |tg|
      tag_id = Tag.add(tg.strip!)
      add_tags_if_not_present(tag_id)
    end
  end
  
  protected
  def after_initialize
    self.tags ||= [] 
  end
end
