require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/result') do
  erb(:result)
end
