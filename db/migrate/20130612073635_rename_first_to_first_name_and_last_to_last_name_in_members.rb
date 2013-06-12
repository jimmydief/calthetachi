class RenameFirstToFirstNameAndLastToLastNameInMembers < ActiveRecord::Migration
  def change
    
    rename_column :members, :first, :first_name
    rename_column :members, :last, :last_name
    
  end
end
