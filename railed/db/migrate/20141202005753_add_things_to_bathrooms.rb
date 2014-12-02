class AddThingsToBathrooms < ActiveRecord::Migration
  def change
    add_column :bathrooms, :cleanliness, :integer
    add_column :bathrooms, :comfort, :integer
    add_column :bathrooms, :smell, :integer
    add_column :bathrooms, :availability, :integer
  end
end
