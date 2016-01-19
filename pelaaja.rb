require './debugattava.rb'

class Pelaaja
  include Debugattava
  attr_reader :nimi
  attr_accessor :pituus

  def initialize(nimi, pituus)
    @pituus = pituus
    @nimi = nimi
    @maalimaara = 0
  end

  def maaleja
    @maalimaara
  end

  def lisaa_maali
    @maalimaara += 1
  end

  def to_s
    "#{@nimi} (#{@pituus} cm) maaleja #{@maalimaara}"
  end
end

p = Pelaaja.new("jossu", 160)
puts p.tila
