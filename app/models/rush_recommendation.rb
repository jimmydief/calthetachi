class RushRecommendation < ActiveRecord::Base
  attr_accessible :name, :class_year, :phone_number, :email
  
  validates_presence_of :name, :class_year, :phone_number, :email
  
  before_validation do
    self.phone_number = phone_number.gsub(/[^\d]/, "") if attribute_present?("phone_number")
  end  
  
  validates_format_of :class_year, :with => /\d{4}/
  validates_format_of :phone_number, :with => /\d{10,11}/
  validates_format_of :email, :with => /^\S+@\S+\.[a-z]+$/i
end
