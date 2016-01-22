require './debugattava.rb'

class Henkilo
  attr_accessor :nimi, :osoite, :ika
  include Debugattava
  def initialize(nimi, osoite, ika)
    @nimi = nimi
    @ika = ika || 0
    @osoite = osoite || nil
  end
end

h = Henkilo.new "Perttu", "Helvetti", 69
h.tila