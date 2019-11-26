class Listing < ApplicationRecord
  validates_presence_of :listing_id,
                        :neighborhood_name,
                        :review_scores_rating,
                        :latitude,
                        :longitude

  belongs_to :neighborhood, optional: true
  # sql query for average ratings per neighborhood
  # select listings.neighborhood as neighborhood, avg(listings.review_scores_rating) as average_rating from listings group by neighborhood order by average_rating desc;
end
