# Lekce 3 - proměnné a podmínky

V imperativním programování si držíme stav pomocí **proměnných**. Proměnné jsou pojmenované hodnoty,
které mají nějakou hodnotu, můžeme je měnit, a opakovaně používat v různých částech kódu.

Proměnná má svůj typ, který určuje, jaké hodnoty může proměnná mít. Proměnnou vytvoříme pomocí
klíčového slova `let`
Každý jazyk má několik základních typů, zatím nám budou stačit dvě:
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

Abychom na základě hodnot proměnných mohli měnit chování programu, potřebujeme **podmínky**.

Podmínka `if` na základě pravdivostní hodnoty rozhodne, zda se vykoná daný kus kódu. Pokud proměnná
`condition` je typu bool, potom po vykonání následujícího kódu:
```ts
let result : number = 10;
if (condition) {
  result = 20;
}
```

bude `result` mít hodnotu `20`, pokud `condition` má hodnotu `true`, a `10`, pokud má hodnotu `false`.

Rovněž se můžeme v podmínce rozhodovat na základě porovnávání číselných hodnot.

```ts
let first : number;
let second : number;
/* ... */
if (first == second) {
  /* ... */
}
```
To, zda jsou dvě čísla stejná, zjistíme pomocí `==`, zda je jedno větší než druhé zjišťujeme pomocí `<` a `>`.

Pokud se chceme zachovat dvěma různými způsoby, použijeme konstrukci `if (podmínka) { a } else { b }`. Pokud
podmínka platí, vykoná se kód `a`, pokud neplatí, vykoná se kód `b`.

Za použití proměnných a podmínek budeme rozsvícet světlo na naší desce různými barvami.

Barevné světlo vytváříme ze tří základních barev: červená (RED), zelená (GREEN), a modrá (BLUE).
Tyto barvy mícháme v různých poměrech od 0 do 255, a vytváříme tak různé barvy:
- První hodnota (r) nám dává množství červené (tedy např. hodnoty 100, 0, 0) rozsvítí LEDku červeně
- Druhá (g) dává množství zelené
- Třetí (b) dává množství modré

Ve výchozím stavu je LED vypnutá (barvy (0, 0, 0)), a nejsilnější bílé světlo získáme použitím všech
barev na maximum (barvy (255, 255, 255)).

Alternativně můžeme barvy reprezentovat pomocí odstínu, sytosti barvy, a světlosti. Mezi jednotlivými
reprezentacemi umíme převádět podle potřeby.

## Zadání A

Pomocí jedné proměnné se stavem a podmínky každou sekudnu buď rozsvítíme, nebo zhasneme LED na desce.

??? Řešení
  ```ts
  import * from "./colors.js"
  import { Neopixel } from "neopixel";

  const ledStrip = new Neopixel(48, 1);  // připojí pásek na pin 48, s 1 ledkou

  var on : bool = false; // LED je vypnutá

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

Pomocí výrazu `colors.rainbow` budeme procházet duhu. Jde o funkci, která dostane číslo od 0 do 360,
a na základě toho vrátí barvu na barevném spektru. V daném intervalu (např. 100 ms) budeme postupně
a nastavujte barvu LEDky na `colors.rainbow(cislo)`. Pokud naše číslo přesáhne hodnotu `360`, musíme ho
opět nastavit na `0`.

??? Řešení
  ```ts
  import { Color, rainbow } from "./colors.js"
  import { Neopixel } from "neopixel";

  const ledStrip = new Neopixel(48, 1);  // připojí pásek na pin 48, s 1 ledkou

  var shade = 0; // Držíme si stav s aktuálním odstínem

  setInterval(() => {
      ledStrip.set(0, rainbow(shade)); // Nastavíme LED na aktuální odstín
      ledStrip.show(); // Zobrazíme vybranou barvu
      shade = shade + 1; // Zvedneme odstín
      if (shade > 360) {
          shade = 0;
      }
  }, 100);
  ```

## Zadání C

Tentokrát budeme reagovat na stisk tlačítka. Do desky si zapojíme pásku 8 světel, a vybranou barvou
je budeme rozsvěcet. Po stisku tlačítka zhasneme aktuální LEDku, a rozsvítíme tu další. Pokud při stisku
tlačítka svítí poslední LED, zhasneme ji, a rozsvítíme opět první LED.

// TODO řešení

## Výstupní úkol V1

Knightrider - LED pásek se rozsvítí a zhasíná od kraje k kraji
mám index který svítí, a posouvám ho doprava a doleva podle podmínky - bool - směr

## Bonusy
- změna barvy
- táhnoucí se stopa

FILIP F


