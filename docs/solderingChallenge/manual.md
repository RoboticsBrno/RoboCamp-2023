# Manuál

## Jak postupovat?

- **vždy pájej pouze jednu úroveň najednou!**
- jelikož malé součástky na sobě nemají popisky, choď si pro součástky po jedné.
  Vždy si dones jednu součástku, tu zapájej a až pak si běž pro další.
- začni připájením integrovaného obvodu - na něj potřebuješ nejvíce prostoru. U
  integrovaného obvodu si pohlídej jeho orientaci. Pokud si nejsi jistý, zeptej
  se lektora.
- pak můžeš zapájet ostatní součástky. U kondenzátorů a rezistorů nezáleží na
  orientaci. U LED diody ano - lektor ti ukáže, jak má být správně otočena.
- Jakmile máš zapájeno, nalep zespodu USB konektoru podložku (opět ti ji vydá
  lektor) a může obvod vyzkoušet!

## Co kam patří?

### Úroveň 0

![L0](assets/labels-L0.png)

!!! Pozor danger
    Pozor, u kondenzátoru 4.7u záleží na polaritě. Popisek kondenzátoru
    musí směřovat <span style="color:red">**dovnitř**</span> desky. Zeptej se lektora, pokud si nejsi jistý.

### Úroveň 1

![L1](assets/labels-L1.png)

!!! Pozor danger
    Pozor, u kondenzátoru 4.7u záleží na polaritě. Popisek kondenzátoru
    musí směřovat <span style="color:red">**ven**</span> z desky (obráceně než u L0). Zeptej se lektora, pokud si nejsi jistý.


### Úroveň 2

![L2](assets/labels-L2.png)

### Úroveň 3

![L3](assets/labels-L3.png)

### Úroveň 4

![L4](assets/labels-L4.png)

<!--- V roce 2022 není L5

### Úroveň 5

![L5](assets/labels-L5.png)
--->


## Jak to funguje?

Pokud tě zajímá, jak funguje obvod, který jsi právě zapájel, podívej se např. na
[tento web](https://www.mylms.cz/zapojeni-casovace-555/). Tam se dočteš, jak
funguje integrovaný obvod 555. V naší pájecí výzvě používáme takzvané *astabilní
zapojení* neboli *multivibrátor*, který je na výše zmíněné stránce vysvětlen.
