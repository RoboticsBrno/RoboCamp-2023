# Multiplayer Grafo
Masivně multiplayerová kooperační hra! Co zvládneš nakreslit ty?

Na adrese [http://grafo.lan](http://grafo.lan) běží stránka, na kterou může kdokoliv kreslit [pomocí radia](../lekce9/index.md):

!!! warning "Proč to nefunguje doma?"
    Stránka je dostupná pouze na Robotickém táboře!


??? info "Domácí verze"
    Pokud chcete hrát doma, můžete si stránku spustit lokálně. Zdrojové kódy najdete na GitHubu [zde](https://github.com/RoboticsBrno/multiplayer_grafo).


![](assets/grafo.png)

## Protokol

Použijte radio **skupinu 12**.

Použijte `radio.sendString` na posílání příkazů.

### Příkazy
* Nastav rychlost pohybu ukazatele: `s <rychlost x> <rychlost y>`
    * Rychlost je v rozmezí od -100 do 100
    * Příklad: `radio.sendString("s 100 50")`
* Nastav barvu kreslení: `c <hex HTML barva>`
    * Barva se specifikuje jako v HTML/CSS, tedy `#FF0000` pro červenou apod. [Vybírátko](https://fffuel.co/cccolor/)
    * Příklad: `radio.sendString("c #EC1CFF")`
* Nastav tloušťku čáry: `t <tloustka>`
    * Tloušťka je v rozmezí od 1 do 10.
    * Příklad: `radio.sendString("t 4")`
* Reset ukazatele: `reset`
    * Resetuje pozici, tloušťku a barvu ukazatele.
    * Příklad: `radio.sendString("reset")`
