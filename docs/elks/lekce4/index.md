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

## Cyklus while
Pokud nevíme kolikrát se má cyklus opakovat použijeme místo cyklu ``` for ``` cyklus ``` while ```.
Do kulatých závorek teď píšeme jen výraz který určuje jestli se cyklus vykoná znovu nebo ne. 
Tedy pokud budeme chtít třeba vykonávat nějaký kód dokud máme stisknuté tlačítko uděláme to takto:
<!-- ```ts
while (buttonIsPressed()) {
	// náš kód
}
``` -->
V podobných případech se nám bude často hodit funkce `await sleep(t)`, která zařídí že kód posečká zadaný čas (zadaný čas je v ms neboli v tisícinách sekundy).

## Zadání B
Napište kód který bude blikat ledkou pokud je stisknuté tlačítko. 

Příklad řešení:
```ts
import * from "./colors.js"
import { Neopixel } from "neopixel";

const ledStrip = new Neopixel(48, 1);  // připojí pásek na pin 48, s 1 ledkou

gpio.on("falling", 0, async () => { // event, který proběhne při stisknutí tlačítka připojeného na pin 0
	while (buttonIsPressed()) {
		ledStrip.set(0, colors.on);
		ledStrip.show();
		await sleep(1000);
		ledStrip.set(0, colors.off);
		ledStrip.show();
		await sleep(1000);
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
```ts
import { stdout } from stdio;
const N: number;

for(let a: number; a < N; a++){
	for(iet b: number; b < N; b++){
		stdio("*"); // vypíše hvězdičku, toď vše  
	}
	stdio("\n"); // ukončí řádek
}

```

## Zadání výstupního úkolu V1
Napište kod který který vypíše čísla od 9 do 0.
Nápověda, zadání je velmi podobné jako zadání A jen jdou čísla sestupně namísto vzestupně.

## Zadání výstupního úkolu V2
Stejně jako v zadání C budeme do konzole vykreslovat geometrický obrazec, akorát tentokrát to bude trojúhelník jako tenhle:

```
*
**
***
****
*****
```
