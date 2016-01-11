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

  define_method(:cost_to_ship) do |isWrapped|
      gift_wrapped_cost = (isWrapped) ? (surface_area / 24).to_i : 0
    return ( ( volume.to_f / 12) * 0.5 + @weight + gift_wrapped_cost ).round(2)
  end

  define_method(:surface_area) do
    lh = (@depth * @height) * 2
    wh = (@width * @height) * 2
    lw = (@width * @depth) * 2
    return ( lh + wh + lw ).to_i
  end

end
