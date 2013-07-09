include PgSearch

class Post < ActiveRecord::Base
  attr_accessible :title, :author, :text
  has_many :comments, :dependent => :destroy
  
  validates_presence_of :title, :author, :text
  validates_uniqueness_of :title
  
  acts_as_url :title, :url_attribute => :slug
  
  pg_search_scope :search, :against => [:title, :author, :text]
  
  def display_created_date
    self.created_at.strftime("%B #{ActiveSupport::Inflector.ordinalize(self.created_at.day)}, %Y at %-I:%M %P")
  end
  
  def to_param
    self.slug
  end
  
end
