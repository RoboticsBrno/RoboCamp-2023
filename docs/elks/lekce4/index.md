# Lekce 4 - cykly

V této lekci si představíme cikly, což je nástroj který nám umožňuje opakovat kod podle nějakého pravidla.
Máme primárně dva typy cyklů, ``` for ``` pro případ kdy víme kolikrát se cyklus má zopakovat a ``` While ``` pro případ kdy to nevíme.

## Zadání A
Cyklus ``` for ```  můžeme napsat takto:
```
for(let i = 0; i < 3; i++) {
  // opakovaný kod
}
```
Do kulatých závorek píšeme nejprve řídící proměnou s její výchozí hodnotou, následně výraz který určuje počet opakování a nakonec jednoduchou operaci která se provede při každém průchodu ciklem jako poslední operace.
Tedy zakládáme proměnou ``` i ``` s výchozí hodnotou ``` 0 ```, následně definujeme výraz ``` i < 3 ``` a na konci ciklu zvýšíme ``` i ``` o jedna.
Při prvním průchodu bude tedy ``` i = 0 ``` při druhém ``` i = 1 ``` a při třetím ``` i = 2 ``` při dalším zvyšování by platilo ``` i = 3 ``` tam ale už nebude pravdiví výraz ``` i < 3 ``` a cyklus se tedy ukončí.
Do složených závorek píšeme vykonávaný kod.

Ve spojení se znalostmi z minulých lekcí napište program která po stisku tlačítka vypíše čísla 0 až 9, vždy na samostatný řádek. 
Kod napište tak aby bylo jednoduché ho upravit na výpis jakéhokoli jiného intervalu, např. 0 až 99 nebo 10 až 19.

Příklad řešení:
```
for(let i = 0; i < 3; i++) {
  console.log(i);
}
```

## Zadání B
Pokud nevíme kolikrát ce má cyklus zopakovat použijeme místo ciklu ``` for ``` cyklus ``` while ```.
Do kulatých závorek teď píšeme jen výraz který určuje jestli se cyklus vykoná znovu nebo ne. 
Tedy pokud budeme chtít třeba vykonávat nějaký kod dokud máme stisknuté tlačítko udělíme to takto:
```
while (buttonIsPressed()) {
	// náš kod
}
```
V podobných případech se nám bude často hodit funkce ``` sleep(t) ```, která zařídí že kod posečká zadaný čas (zadaný čas je v ms neboli v tisícinách sekundy).

Napište kod který bude blikat ledkou pokud je stisknuté tlačítko. 

Příklad řešení:
```
gpio.on("falling", 0, () => { // event, který proběhne při stisknutí tlačítka připojeného na pin 0
    rozsvit/zhasni 
	sleep(1000)
});
```

## Zadání C
Nyní napište kod který do konzole vypíše čtverec složený z hvězdiček (znaku `*`),
např. takto:
```
***
***
***
```
Velikost tohoto čtverce určete pomocí konstanty jejíž hodnota udává počet řádku a sloupců.

Příklad řešení:
```
const 
```

## Zadání výstupního úkolu V1
Stejně jako v zadání C budeme do konzole vykreslovat geometrický obrazec akorát tentokrát to bude trojúhelník jako tenhle:

```
*
**
***
****
*****
```
