w = 30
(1..w).each do |x|
  x2 = x*x
  (x..w).each do |y|
    z2 = x2 + y*y
    z = Integer.sqrt(z2)
    if z2 == z*z
      puts "x=#{x} y=#{y} z=#{z}"
    end
  end
end
