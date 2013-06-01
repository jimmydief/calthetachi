class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first
      t.string :last
      t.integer :pledge_class_id
      t.boolean :active
      t.boolean :admin

      t.timestamps
    end
  end
end
