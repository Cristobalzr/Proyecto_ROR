class RemoveLocationFromPets < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :location, :string
    add_column :pets, :latitude, :float
    add_column :pets, :longitude, :float
  end
end
