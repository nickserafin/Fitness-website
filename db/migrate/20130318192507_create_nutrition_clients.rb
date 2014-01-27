class CreateNutritionClients < ActiveRecord::Migration
  def change
    create_table :nutrition_clients do |t|
      t.string :FirstName
      t.string :LastName
      t.integer :Height
      t.integer :Weight
      t.integer :DailyCalories
      t.date :JoinDate

      t.timestamps
    end
  end
end
