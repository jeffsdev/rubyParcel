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
  @wrapped = params.fetch("wrapped")
  @parcel = Parcel.new(@h,@w,@d,@weight)

  @vol_result = @parcel.volume.to_s + " inches squared."
  @cost_result = "$" + @parcel.cost_to_ship(@wrapped == "Yes").to_s

        binding.pry
  erb(:result)
end
