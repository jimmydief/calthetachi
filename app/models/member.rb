class Member < ActiveRecord::Base
  attr_accessible :active, :admin, :first, :last, :pledge_class_id
  has_many :posts
  belongs_to :pledge_class
  
  def display_name
    "#{ self.first_name } #{ self.last_name }"
  end
end
