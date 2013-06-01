class Post < ActiveRecord::Base
  attr_accessible :member_id, :text, :title
end
