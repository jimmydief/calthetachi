class Member < ActiveRecord::Base
  attr_accessible :active, :admin, :first, :last, :pledge_class_id
end
