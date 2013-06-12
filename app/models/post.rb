class Post < ActiveRecord::Base
  attr_accessible :member_id, :text, :title, :publish_date
  belongs_to :member
  has_many :comments
  
  def display_created_date
    self.created_at.strftime("%B #{ActiveSupport::Inflector.ordinalize(self.created_at.day)}, %Y at %-I:%M %P")
  end
end
