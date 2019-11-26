require 'rails_helper'

describe Neighborhood, type: :model do
  describe "Validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :coordinates}
  end

  describe "Relationships" do
    it {should have_many :listings}
  end
end
