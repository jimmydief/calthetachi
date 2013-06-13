class RemovePublishDateFromPosts < ActiveRecord::Migration
  def end
    remove_column :posts, :publish_date
  end
end
