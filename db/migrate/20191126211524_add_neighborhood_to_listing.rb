class AddNeighborhoodToListing < ActiveRecord::Migration[5.2]
  def change
    add_reference :listings, :neighborhood, foreign_key: true
  end
end
