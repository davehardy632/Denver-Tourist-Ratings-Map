require 'pry'
require 'json'

namespace :import do
  desc "Import data from csv file"
  task neighborhood_data: :environment do
    geojson_data = JSON.parse(File.read('./data/neighborhood_data.json'))

    geojson_data["features"].each do |data|
      coordinate_string = ""
        data["geometry"]["coordinates"][0][0].each do |coord|
          coordinate_string += "--" + coord.to_s
        end
      Neighborhood.create(name: data["properties"]["neighbourhood"],
                          coordinates: coordinate_string)
    end
  end
end
