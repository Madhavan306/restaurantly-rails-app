require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it "should not create Restaurant without name" do
     restaurant = Restaurant.new(name: nil, address: nil)
     expect(restaurant.valid?).to be_falsey
  end
end
