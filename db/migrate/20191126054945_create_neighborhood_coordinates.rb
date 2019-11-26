class CreateNeighborhoodCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhood_coordinates do |t|
      t.string :neighborhood
      t.text :coordinates
    end
  end
end
