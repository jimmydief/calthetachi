class CreateRushRecommendations < ActiveRecord::Migration
  def change
    create_table :rush_recommendations do |t|
      t.string :name
      t.string :class_year
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
