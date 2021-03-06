class Neighborhood < ApplicationRecord
  validates_presence_of :name,
                        :coordinates

  has_many :listings

  # ruby method to convert coordinate string into an array of arrays
  # arr = []
  # string.split("--").each do |coord|
  #   new_coord = []
  #   if !coord.empty?
  #     new_coord << coord.delete(coord[0]).delete(coord.last).split(", ")[0].to_f
  #     new_coord << coord.split(", ")[1].delete(coord.last).to_f
  #     arr << new_coord
  #   end
  # end
  # arr

  # All neighborhoods are Features with a type of MultiPolygon
end
