require './debugattava.rb'
class Testiluokka

  def initialize
    @x = 8
    @y = 5
  end

  include Debugattava

  def testimetodi
    "moidmosdfmfdko"
  end

end

t = Testiluokka.new
t.tila