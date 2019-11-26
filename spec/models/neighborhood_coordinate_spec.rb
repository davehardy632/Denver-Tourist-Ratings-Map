require 'rails_helper'

describe NeighborhoodCoordinate, type: :model do
  describe "Validations" do
    it {should validate_presence_of :geometry_type}
    it {should validate_presence_of :coordinates}
    it {should validate_presence_of :neighborhood}
  end
end
