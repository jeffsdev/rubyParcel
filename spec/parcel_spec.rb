require('rspec')
require('parcel')

describe("Parcel#parcel") do
  it("will find the volume of Parcel") do
    expect(Parcel.new(2,4,5,10).volume).to(eq(40))
  end
  it("will find the cost to ship the Parcel") do
    expect(Parcel.new(2,4,5,10).cost_to_ship).to(eq(11.67))
  end
end
