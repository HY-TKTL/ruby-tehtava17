require './debugattava.rb'

class Testiluokka
  attr_writer :x, :y
  include Debugattava
end

t = Testiluokka.new
t.x = 1
t.y = 2

puts t.tila
