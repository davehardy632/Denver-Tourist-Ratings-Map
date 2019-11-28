require 'pry'
require 'json'

namespace :import do
  desc "Import data from csv file"
  task neighborhood_data: :environment do
    geojson_data = JSON.parse(File.read('./data/neighborhood_data.json'))

    geojson_data["features"].each do |data|
      Neighborhood.create(name: data["properties"]["neighbourhood"],
                          coordinates: data["geometry"])
    end
  end
end
