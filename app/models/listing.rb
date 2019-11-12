class Listing < ApplicationRecord
  validates_presence_of :listing_id,
                        :neighborhood,
                        :review_scores_rating,
                        :latitude,
                        :longitude

end
