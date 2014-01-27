class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :title
      t.text :descritption
      t.string :image_path
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
