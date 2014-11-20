class CreateBathrooms < ActiveRecord::Migration
  def change
    create_table :bathrooms do |t|
      t.string :name
      t.string :location
      t.integer :rating

      t.timestamps
    end
  end
end
