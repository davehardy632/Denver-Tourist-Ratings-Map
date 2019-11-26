require 'pry'
require 'csv'

namespace :import do
  desc "Import data from csv file"
  task neighborhoods: :environment do
    CSV.foreach('./data/neighborhoods.csv', headers: true) do |row|
      row_data = row.to_h

      Neighborhood.create(name: row_data["neighbourhood"])
    end
  end
end
