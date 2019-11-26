class NeighborhoodCoordinate < ApplicationRecord
  validates_presence_of :geometry_type,
                        :coordinates,
                        :neighborhood

end
