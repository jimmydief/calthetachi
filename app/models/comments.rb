class Comments < ActiveRecord::Base
  attr_accessible :name, :post_id, :text
  belongs_to :post
end
