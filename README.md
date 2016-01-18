Tee moduuli `Debugattava` joka määrittelee metodin `tila`. Metodi tulostaa olion jokaisen oliomuuttujan nimen ja arvon.

Esim. liität moduulin luokkaan `Henkilo`, ja kutsut metodia metodia henkilöoliolle seuraavassa tilanteessa
tulostaa olion jokaisen oliomuuttujan nimen ja arvon.

``` ruby
class Henkilo
  include Debugattava
  # ...

end

h = Henkilo.new 'Chang', 'Alppila'
h.tila

```
tulostuu
```
nimi Chang
osoite Alppila
ika 0
```
Rubyn luokka [Object](http://ruby-doc.org/core-2.3.0/Object.html), jonka kaikki luokat perivät tarjoavat sopivat metodit, joiden avulla
oliomuuttujiin ja niiden arvoihin pääsee käsiksi. Ks. [http://ruby-doc.org/core-2.3.0/Object.html](http://ruby-doc.org/core-2.3.0/Object.html)