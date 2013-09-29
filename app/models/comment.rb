class Comment < ActiveRecord::Base
  include Humanizer

  attr_accessible :name, :post_id, :text, :humanizer_answer, :humanizer_question_id
  belongs_to :post
  
  validates_presence_of :name, :text
  require_human_on :create
  
end
