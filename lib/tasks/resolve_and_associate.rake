require 'pry'

namespace :import do
  desc "Import data from csv file"
  task resolve_naming: :environment do
    Neighborhood.find_by(name: "College View - South Platte").update_column(:name, "College View / South Platte")
    Neighborhood.find_by(name: "Gateway - Green Valley Ranch").update_column(:name, "Gateway / Green Valley Ranch")
    Listing.where(neighborhood_name: "Sloane Lake").update_all(neighborhood_name: "Sloan Lake")
  end

  task assign_neighborhood_ids: :environment do

    neighborhoods = Neighborhood.all
    # listings = Listing.all

    neighborhoods.each do |neighborhood|
      Listing.where(neighborhood_name: neighborhood.name).update_all(neighborhood_id: neighborhood.id)
    end
  end
end

# Neighborhood coordinate data returned the following outliers
# ["Auraria", "Civic Center", "College View - South Platte", "Gateway - Green Valley Ranch", "Sloan Lake", "Union Station"] these were not found in listings data
# does include "College View / South Platte", "Gateway - Green Valley Ranch", "Sloan Lake" these were misspelled or wrongly formatted
# doesnt include "Auraria", "Civic Center", "Union Station" not found in neighborhood and coordinate data
#
# Listing coordinate data returned the following outliers
# ["College View / South Platte", "Gateway / Green Valley Ranch", "Golden Triangle", "LoDo", "Sloane Lake"] these were not found in neighborhoods data
# does include "College View / South Platte", "Gateway - Green Valley Ranch", "Sloan Lake" these were misspelled or wrongly formatted
# doesnt include "Golden Triangle", "LoDo" not found in listings data
#
#
# Formatting errors to be resolved: neighborhood spelling is ... ["College View - South Platte", "Gateway - Green Valley Ranch", "Sloan Lake"]
#                                   listings spelling is ... ["College View / South Platte", "Gateway / Green Valley Ranch", "Sloane Lake"]
#
#
#                                   decided spelling is ... ["College View / South Platte", "Gateway / Green Valley Ranch", "Sloan Lake"]
#                                   update Neighborhoods with ["College View / South Platte", "Gateway / Green Valley Ranch"]
#                                   update Listings with ["Sloan Lake"]
#
# Missing data to be resolved: neighborhoods are missing coordinates/records for ["Golden Triangle", "LoDo"]
#                              listings are missing reviews and listings within  ["Auraria", "Civic Center", "Union Station"]
#
#                              "Union Station" == "LoDo"
