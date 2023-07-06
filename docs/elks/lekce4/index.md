# Lekce 4 - cykly

V této lekci si představíme cykly, což je nástroj který nám umožňuje opakovat kód podle nějakého pravidla.
Máme primárně dva typy cyklů:

- ``` for ``` pro případ kdy víme kolikrát se cyklus má opakovat
- ``` while ``` pro případ kdy neznáme počet opakování

### Cyklus for
Cyklus ``` for ```  můžeme napsat takto:
```ts
for(let i: number = 0; i < 3; i++) {
  // opakovaný kód
}
```
Do kulatých závorek píšeme tři věci:

- proměnou s její výchozí hodnotou
- výraz který určuje počet opakování 
- nakonec jednoduchou operaci která se provede při každém průchodu cyklem jako poslední operace.

Tedy zakládáme proměnou ``` i ``` s výchozí hodnotou ``` 0 ```, následně definujeme výraz ``` i < 3 ``` a na konci cyklu zvýšíme ``` i ``` o jedna.
Při prvním průchodu bude tedy ``` i = 0 ``` při druhém ``` i = 1 ``` a při třetím ``` i = 2 ``` při dalším zvyšování by platilo ``` i = 3 ``` tam ale už nebude pravdivý výraz ``` i < 3 ``` a cyklus se tedy ukončí.
Do složených závorek píšeme vykonávaný kód.

## Zadání A
Ve spojení se znalostmi z minulých lekcí napište program, který po stisku tlačítka vypíše čísla 0 až 9, vždy na samostatný řádek. 
Kod napište tak aby bylo jednoduché ho upravit na výpis jakéhokoli jiného intervalu, např. 0 až 99 nebo 10 až 19.

Příklad řešení:
```ts
for(let i: number = 0; i < 3; i++) {
  console.log(i);
}
```

## Zadání B
Pokud nevíme kolikrát se má cyklus opakovat použijeme místo cyklu ``` for ``` cyklus ``` while ```.
Do kulatých závorek teď píšeme jen výraz který určuje jestli se cyklus vykoná znovu nebo ne. 
Tedy pokud budeme chtít třeba vykonávat nějaký kód dokud máme stisknuté tlačítko uděláme to takto:
<!-- ```ts
while (buttonIsPressed()) {
	// náš kód
}
``` -->
V podobných případech se nám bude často hodit funkce ``` sleep(t) ```, která zařídí že kód posečká zadaný čas (zadaný čas je v ms neboli v tisícinách sekundy).

Napište kód který bude blikat ledkou pokud je stisknuté tlačítko. 

Příklad řešení:
```ts
gpio.on("falling", 0, async () => { // event, který proběhne při stisknutí tlačítka připojeného na pin 0
  while (buttonIsPressed()) {
    rozsvit/zhasni 
    await sleep(1000)
	}
});
```

## Zadání C
Nyní napište kód který do konzole vypíše čtverec složený z hvězdiček (znaku `*`),
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
Stejně jako v zadání C budeme do konzole vykreslovat geometrický obrazec, akorát tentokrát to bude trojúhelník jako tenhle:

```
*
**
***
****
*****
```
