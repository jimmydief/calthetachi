class RushRecommendation < ActiveRecord::Base
  attr_accessible :name, :class_year, :phone_number, :email
  
  validates_presence_of :name, :class_year, :phone_number
end
