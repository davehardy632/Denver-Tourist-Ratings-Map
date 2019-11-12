require 'rails_helper'

describe Listing, type: :model do
  describe "Validations" do
    it {should validate_presence_of :listing_id}
    it {should validate_presence_of :neighborhood}
    it {should validate_presence_of :review_scores_rating}
    it {should validate_presence_of :latitude}
    it {should validate_presence_of :longitude}
  end
end