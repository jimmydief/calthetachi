class CreatePledgeClasses < ActiveRecord::Migration
  def change
    create_table :pledge_classes do |t|
      t.string :semester
      t.integer :year

      t.timestamps
    end
  end
end
