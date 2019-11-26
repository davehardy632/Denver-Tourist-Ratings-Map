require 'rails_helper'

describe NeighborhoodCoordinate, type: :model do
  describe "Validations" do
    it {should validate_presence_of :neighborhood}
    it {should validate_presence_of :coordinates}
  end
end
