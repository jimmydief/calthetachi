include PgSearch

class Post < ActiveRecord::Base
  attr_accessible :author, :text, :title, :publish_date
  has_many :comments, :dependent => :destroy
  
  pg_search_scope :search, :against => [:author, :title, :text]
  
  def display_created_date
    self.created_at.strftime("%B #{ActiveSupport::Inflector.ordinalize(self.created_at.day)}, %Y at %-I:%M %P")
  end
end
