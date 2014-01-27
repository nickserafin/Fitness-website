class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :FirstName
      t.string :LastName
      t.integer :Height
      t.integer :Weight
      t.integer :ActivityLevel
      t.date :JoinDate

      t.timestamps
    end
  end
end
