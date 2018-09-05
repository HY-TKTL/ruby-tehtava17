require './debugattava.rb'
class Henkilo
include Debugattava

    def initialize(nimi, ika)
        @nimi = nimi
        @ika = ika
    end

    def to_s
        "#{@nimi}, #{@ika} vuotta vanha"
    end
    

end

h = Henkilo.new "Jaakko", 24
h.tila
