RSpec.describe 'moduuli Debugattava' do
  it "on määritelty oikeassa tiedostossa" do
    expect(File.exists? './debugattava.rb' ).to be true
    require './debugattava.rb'
    expect(Debugattava.class).to eq Module
  end

  it "määrittelee metodin tila" do
    require './debugattava.rb'
    class Testiluokka
        attr_writer :x, :y
        include Debugattava
    end

    t = Testiluokka.new
    t.x = 1
    t.y = 2

    expect {
      t.tila
    }.to output(/x 1/).to_stdout

    expect {
      t.tila
    }.to output(/y 2/).to_stdout

    t.x = 4
    t.y = 3

    expect {
      t.tila
    }.to output(/x 4/).to_stdout

    expect {
      t.tila
    }.to output(/y 3/).to_stdout
  end

  it "metodi tila toimii myös toisella testiluokalla" do
    require './debugattava.rb'
    class Testiluokka
        attr_writer :x, :y, :z, :foo
        include Debugattava
    end

    t = Testiluokka.new
    t.x = "koe"
    t.y = 123
    t.z = 3
    t.foo = "qwerty"

    expect {
      t.tila
    }.to output(/x koe/).to_stdout

    expect {
      t.tila
    }.to output(/y 123/).to_stdout

    expect {
      t.tila
    }.to output(/z 3/).to_stdout

    expect {
      t.tila
    }.to output(/foo qwerty/).to_stdout

    t.z = "xyz"

    expect {
      t.tila
    }.to output(/z xyz/).to_stdout
  end
end
