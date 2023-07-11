# Lekce 4 - cykly

V této lekci si představíme cykly, což je nástroj který nám umožňuje opakovat kód podle nějakého pravidla.
Máme primárně dva typy cyklů:

- `#!ts for` pro případ kdy víme kolikrát se cyklus má opakovat
- `#!ts while` pro případ kdy neznáme počet opakování

### Cyklus for
Cyklus `#!ts for`  můžeme napsat takto:
```ts
for(let i: number = 0; i < 3; i++) {
  // opakovaný kód
}
```
Do kulatých závorek píšeme tři věci:

- řídící proměnnou s její výchozí hodnotou
- výraz který určuje počet opakování
- nakonec jednoduchou operaci která se provede při každém průchodu cyklem jako poslední operace

Tedy zakládáme proměnnou `#!ts i` s výchozí hodnotou `#!ts 0`, následně definujeme výraz `#!ts i < 3 ` a na konci cyklu zvýšíme `#!ts i ` o jedna.
Při prvním průchodu bude tedy `#!ts i = 0` při druhém `#!ts i = 1 ` a při třetím `#!ts i = 2 ` při dalším zvyšování by platilo `#!ts i = 3 ` tam ale už nebude pravdivý výraz ` i < 3 ` a cyklus se tedy ukončí.
Do složených závorek píšeme vykonávaný kód.

Kostru na tento úkol najdete [zde](./project4.zip).

## Zadání A
Ve spojení se znalostmi z minulých lekcí napište program, který po stisku tlačítka vypíše čísla 0 až 9 (pomocí `#!ts console.log(cislo)`), vždy na samostatný řádek.
Kod napište tak aby bylo jednoduché ho upravit na výpis jakéhokoli jiného intervalu, např. 0 až 99 nebo 10 až 19.

??? note "Řešení"
    ```ts
	import * as gpio from "gpio";

    const BTN_PIN = 18;

	gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT_PULLUP); // nastaví pin nula jako vstup

	gpio.on("falling", BTN_PIN, () => { // událost, která proběhne při stisknutí tlačítka připojeného na pin 0
		console.log("Stisknuto, začínáme počítat");
		for (let i: number = 0; i < 9; i++) { // vypíšeme čísla od 0 do 8
			console.log(i);
		}
		console.log(""); // oddělíme jednotlivé stisky
	});
    ```

## Cyklus while
Pokud nevíme kolikrát se má cyklus opakovat použijeme místo cyklu `#!ts for ` cyklus `#!ts while `.

Do kulatých závorek teď píšeme jen výraz který určuje jestli se cyklus vykoná znovu nebo ne.
Kód, který se má vykonávat, dokud platí podmínka, vypadá takto:
```ts
while (condition - podmínka) {
	// náš kód
}
```
<!-- V podobných případech se nám bude často hodit funkce `#!ts await sleep(t)`, která zařídí že kód posečká zadaný čas (zadaný čas je v ms neboli v tisícinách sekundy). -->


<!-- Napište kód který bude blikat ledkou pokud je stisknuté tlačítko.
## Zadání C
...

??? note "Řešení"
	```ts
	import { SmartLed, LED_WS2812 } from "smartled";
	import * as colors from "./libs/colors.js"
	import * as gpio from "gpio";

	const LED_PIN = 48;
	const LED_COUNT = 1;
    const BTN_PIN = 18;

	const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

	gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT_PULLUP); // nastaví pin nula jako vstup

	gpio.on("falling", 0, async () => { // event, který proběhne při stisknutí tlačítka připojeného na pin 0
		while (gpio.read(BTN_PIN) == 0) { // dokud je tlačítko stisknuté
			ledStrip.set(0, colors.red);
			ledStrip.show();
			await sleep(500); // nastavíme červenou barvu a počkáme půl sekundy

			ledStrip.set(0, colors.off);
			ledStrip.show();
			await sleep(500); // vypneme LED a počkáme půl sekundy
		}
	});
	```
-->

## Zadání B
Nyní napište kód který do konzole vypíše čtverec složený z hvězdiček (znaku `*`),
např. takto:
```
***
***
***
```
Velikost tohoto čtverce určete pomocí konstanty jejíž hodnota udává počet řádku a sloupců.

Pokud nechceme za vypsanými znaky nový řádek, místo známého `#!ts console.log()` použijeme `#!ts stdout.write`

??? note "Řešení"
	```ts
	import { stdout } from "stdio";

	const SQUARE_SIZE: number = 3; // velikost čtverce

	console.log("Vykreslíme čtverec o velikosti " + SQUARE_SIZE + "x" + SQUARE_SIZE);

	for(let row: number = 0; row < SQUARE_SIZE; row++){ // projdeme všechny řádky
		for(let col: number = 0; col < SQUARE_SIZE; col++){ // projdeme všechny sloupce
			stdout.write("*"); // vypíšeme hvězdičku
		}
		stdout.write("\n"); // přesuneme se na další řádek
	}
	```


## Zadání výstupního úkolu V1
Napište kod který který vypíše čísla od 9 do 0.
Nápověda, zadání je velmi podobné jako zadání A jen jdou čísla sestupně namísto vzestupně.

## Zadání výstupního úkolu V2
Stejně jako v zadání B budeme do konzole vykreslovat geometrický obrazec, akorát tentokrát to bude trojúhelník jako tenhle:

```
*
**
***
****
*****
```

!!! tip "Pro dobrovolníky"

    - Zkuste kreslit různé tvary, a různé typy: např. trojuhelník, který je uvnitř dutý, stromeček, nebo kruh
