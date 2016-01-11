require('rspec')
require('parcel')

describe("Parcel#parcel") do
  it("will find the volume of Parcel") do
    expect(Parcel.new(2,4,5,10).volume).to(eq(40))
  end
  it("will find the cost to ship the Parcel") do
    expect(Parcel.new(2,4,5,10).cost_to_ship(false)).to(eq(11.67))
  end
  it("will find the surface area of the Parcel") do
    expect(Parcel.new(2,4,5,10).surface_area).to(eq(76))
  end
end
