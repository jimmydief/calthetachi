class PledgeClass < ActiveRecord::Base
  attr_accessible :semester, :year
  has_many :members
end
