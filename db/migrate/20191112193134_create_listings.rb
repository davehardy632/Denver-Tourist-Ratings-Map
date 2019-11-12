class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :listing_id
      t.string :neighborhood
      t.integer :review_scores_rating
      t.float :latitude
      t.float :longitude
    end
  end
end
