require "rails_helper"

RSpec.describe Census, type: :model do
  describe "name fetching" do
    it "can fetch all information related to a census" do
      name = Census.create!(name: "Mary", year: "2014", gender: "F", occurrences: 13)

      expect(name.name).to eq("Mary")
      expect(name.year).to eq(2014)
      expect(name.gender).to eq("F")
      expect(name.occurrences).to eq("13")
    end
  end
end
