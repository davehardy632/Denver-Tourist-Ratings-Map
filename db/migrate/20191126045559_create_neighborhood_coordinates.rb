class CreateNeighborhoodCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :neighborhood_coordinates do |t|
      t.string :geometry_type
      t.text :coordinates
      t.string :neighborhood
    end
  end
end
