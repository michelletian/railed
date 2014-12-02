class CreateBathooms < ActiveRecord::Migration
  def change
    create_table :bathooms do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.integer :cleanliness
      t.integer :comfort
      t.integer :smell
      t.integer :availability

      t.timestamps
    end
  end
end
