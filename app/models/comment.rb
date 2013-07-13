class Comment < ActiveRecord::Base
  attr_accessible :name, :post_id, :text
  belongs_to :post
  
  validates_presence_of :name, :text
  
end
