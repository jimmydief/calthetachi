class PostsTakeAuthorsAndDeleteMembers < ActiveRecord::Migration
  def change
    remove_column :posts, :member_id
    add_column :posts, :author, :string, :after => :title
    
    drop_table :members
    drop_table :pledge_classes
  end
end
