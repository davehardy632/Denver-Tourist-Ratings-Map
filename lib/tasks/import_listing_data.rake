require 'pry'
require 'csv'

namespace :import do
  desc "Import data from csv file"
  task listing_data: :environment do
    CSV.foreach('./listings.csv', headers: true) do |row|
      row_data = row.to_h

      Listing.create(listing_id: row_data["id"],
                     neighborhood: row_data["neighbourhood"],
                     review_scores_rating: row_data["review_scores_rating"].to_i,
                     latitude: row_data["latitude"].to_f,
                     longitude: row_data["longitude"].to_f)
    end
  end
end
