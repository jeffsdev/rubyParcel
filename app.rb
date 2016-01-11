require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  @h = params.fetch("h")
  @w = params.fetch("w")
  @d = params.fetch("d")
  @weight = params.fetch("weight")
  @parcel = Parcel.new(@h,@w,@d,@weight)

  @vol_result = @parcel.volume
  @cost_result = @parcel.cost_to_ship

  erb(:result)
end
