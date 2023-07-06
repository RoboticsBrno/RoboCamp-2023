# Lekce 3 - proměnné a podmínky

V imperativním programování si držíme stav pomocí **proměnných**. Proměnné jsou pojmenované hodnoty,
které mají nějakou hodnotu, můžeme je měnit, a opakovaně používat v různých částech kódu.

Proměnná má svůj typ, který určuje, jaké hodnoty může proměnná mít. Proměnnou vytvoříme pomocí
klíčového slova `let`.
Každý jazyk má několik základních typů, zatím nám budou stačit dva:

- **number**: základní číselný typ, může nabývat např. hodnot: `1`, `2`, `10`, `-5`, `0.5`
- **bool**: základní pravdivostní typ, který nabývá hodnot `true` a `false`

Hodnoty přiřazujeme do proměnných pomocí operátoru `=`. Příklad použití:

```ts
let first : number; // Vytvoří proměnnou se jménem first, a typem number
first = 10; // Přiřadí do proměnné hodnotu 10
first = 15; // Změní hodnotu proměnné na 15
let second : number = 20; // Vytváření a přiřazení můžeme zkombinovat
let truth : bool = true; // Vytvoří proměnnou typu bool, která reprezentuje pravdu
```

S proměnnými stejně jako s čísly můžeme provádět základní operace.

```ts
let a : number = 10;
let b : number = 5;
let c : number = a + b;
let d : number = b - a;
```

Abychom na základě hodnot proměnných mohli měnit chování programu, potřebujeme **podmínky**.

Podmínka `if` na základě pravdivostní hodnoty rozhodne, zda se vykoná daný kus kódu. Pokud proměnná
`condition` je typu bool, potom po vykonání následujícího kódu:
```ts
let result : number = 10;
if (condition) {
  result = 20;
}
```

Pokud `condition` má hodnotu `true`, bude v `result` 20, pokud má `condition` hodnotu `false`, bude v `result` 10.

Rovněž se můžeme v podmínce rozhodovat na základě porovnávání číselných hodnot.

```ts
let first : number;
let second : number;
...
if (first == second) {
  ...
}
```

To, zda jsou dvě čísla stejná, zjistíme pomocí `==`, zda je jedno větší než druhé zjišťujeme pomocí `<` a `>`, případně `<=` a `>=`.

Pokud se chceme zachovat dvěma různými způsoby, použijeme konstrukci

```ts
if (podmínka) {
  a 
} else { 
  b 
}
```

Pokud podmínka platí, vykoná se kód `a`, pokud neplatí, vykoná se kód `b`.

Za použití proměnných a podmínek rozsvítíme světlo na naší desce různými barvami.

Barevné světlo vytváříme ze tří základních barev: červená (RED), zelená (GREEN), a modrá (BLUE).
Tyto barvy mícháme v různých poměrech od 0 do 255, a vytváříme tak různé barvy:

- První hodnota (r) nám dává množství červené (tedy např. hodnoty 100, 0, 0) rozsvítí LEDku červeně
- Druhá (g) dává množství zelené
- Třetí (b) dává množství modré

Ve výchozím stavu je LED vypnutá (hodnoty `(0, 0, 0)`), a nejsilnější bílé světlo získáme použitím všech
barev na maximum (hodnoty `(255, 255, 255)`).

## Zadání A

Pomocí jedné proměnné se stavem a podmínky každou sekundu buď rozsvítíme, nebo zhasneme LED na desce.

??? note "Řešení"
  ```ts
  import * from "./colors.js"
  import { Neopixel } from "neopixel";

  const ledStrip = new Neopixel(48, 1);  // připojí pásek na pin 48, s 1 ledkou

  let on : bool = false; // LED je vypnutá

  setInterval(() => {
    if(on){ // Pokud je LED zapnutá
      ledStrip.set(0, colors.off); // Vypneme LED
      ledStrip.show(); // Zobrazíme změny
      on = false;
    } else {
      ledStrip.set(0, colors.green); // Rozsvítíme LED zelenou barvou
      ledStrip.show(); // Zobrazíme změny
      on = true
    }
  }, 1000);
  ```

## Zadání B

Pomocí funkce `colors.rainbow` budeme procházet duhu. Jde o funkci, která dostane číslo od 0 do 360,
a na základě toho vrátí barvu na barevném spektru. V daném intervalu (např. 100 ms) budeme postupně zvyšovat číslo a nastavovat barvu LEDky na `colors.rainbow(cislo)`. Pokud naše číslo přesáhne hodnotu `360`, musíme ho
opět nastavit na `0`.

??? note "Řešení"
  ```ts
  import * from "./colors.js"
  import { Neopixel } from "neopixel";

  const ledStrip = new Neopixel(48, 1);  // připojí pásek na pin 48, s 1 ledkou

  let shade = 0; // Držíme si stav s aktuálním odstínem

  setInterval(() => {
      ledStrip.set(0, colors.rainbow(shade)); // Nastavíme LED na aktuální odstín
      ledStrip.show(); // Zobrazíme vybranou barvu
      shade = shade + 1; // Zvedneme odstín
      if (shade > 360) {
          shade = 0;
      }
  }, 100);
  ```

## Zadání C

Tentokrát budeme reagovat na stisk tlačítka.
Do desky si zapojíme pásku 8 světel, a vybranou barvou je budeme rozsvěcet.
Po stisku tlačítka zhasneme aktuální LEDku, a rozsvítíme tu další.
Pokud při stisku tlačítka svítí poslední LED, zhasneme ji, a rozsvítíme opět první LED.

??? note "Řešení"
  ```ts
  import * as colors from "./colors.js"
  import { Neopixel, Rgb } from "neopixel";
  import * as gpio from "gpio";

  gpio.pinMode(0, gpio.PinMode.INPUT_PULLUP); // Nastavíme tlačítko
  const ledStrip = new Neopixel(14, 8);  // Připojíme LED pásek na pin 14

  let index : number = 0;
  let color : Rgb = colors.light_blue; // Vybereme si barvu
  ledStrip.set(0, color); // Rozsvítíme první LED

  gpio.on("falling", 0, () => {
      ledStrip.set(index, colors.off); // Vypneme předchozí LED
      index = index + 1; // Zvedneme index
      if(index > 7){ // Pokud jsme mimo rozsah pásku, vrátíme se na začátek
          index = 0;
      }
      ledStrip.set(index, color); // Nastavíme aktuální LED
      ledStrip.show();
  });
  ```

## Výstupní úkol V1

Knightrider: svítící LED "běhá" s danou rychlostí od začátku do konce pásky.
Jakmile dorazí na konec, změní směr, a posouvá se opačným směrem.

## Pro dobrovolníky

- Jezdec může při běhu měnit barvy (např. pomocí funkce rainbow)

- Jezdec může zanechávat stopu: barva nezmizí hned, ale až s odstupem. Barva může "mizet" postupně: intenzita stopy se časem snižuje.
