include PgSearch

class Post < ActiveRecord::Base
  attr_accessible :title, :author, :text
  has_many :comments, :dependent => :destroy
  
  validates_presence_of :title, :author, :text
  validates_uniqueness_of :title
  
  acts_as_url :title, :url_attribute => :slug
  
  pg_search_scope :search, :against => [:title, :author, :text]
  
  def to_param
    self.slug
  end
  
end
