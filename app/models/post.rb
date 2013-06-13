class Post < ActiveRecord::Base
  attr_accessible :author, :text, :title, :publish_date
  has_many :comments
  
  def display_text
    self.text.gsub(/\n/, '</p><p>').html_safe
  end
  
  def display_created_date
    self.created_at.strftime("%B #{ActiveSupport::Inflector.ordinalize(self.created_at.day)}, %Y at %-I:%M %P")
  end
end
