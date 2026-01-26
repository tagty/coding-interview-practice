n = 10000
n.downto(3) do |c|
  c2 = c*c
  (c - 1).downto(2).each do |b|
    b2 = b*b
    a2 = c2 - b2
    break if a2 >= b2
    a = Integer.sqrt(a2)
    next if a >= b
    if a*a == a2
      puts "[#{a}, #{b}, #{c}]"
      exit
    end
  end
end
puts 'nil'
