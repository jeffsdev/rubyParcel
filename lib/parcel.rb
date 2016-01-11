require('pry')
class Parcel
  define_method(:initialize)  do |h, w, d, weight|
    @height = h.to_i
    @width = w.to_i
    @depth = d.to_i
    @weight = weight.to_f
  end
  define_method(:volume) do
    return @height * @width * @depth
  end
  define_method(:cost_to_ship) do
    return ( ( volume.to_f / 12) * 0.5 + @weight ).round(2)
  end


end
