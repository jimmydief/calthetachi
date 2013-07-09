class Comment < ActiveRecord::Base
  attr_accessible :name, :post_id, :text
  belongs_to :post
  
  validates_presence_of :name, :text
  
  def display_created_date
    self.created_at.strftime("%B #{ActiveSupport::Inflector.ordinalize(self.created_at.day)}, %Y at %-I:%M %P")
  end
end
