# Lekce 7 - ADC - joystick, potenciometry

V této lekci se naučíme pracovat s ADC převodníkem a zpracovávat data, které nám dává.

ADC převodník měří napětí, a tento takzvaně analogový signál převádí na digitální, tedy číslo, v našem případě od 0-1023.
To využijeme pro čtení dat z potenciometrů a joysticku.

## Zadání A

Nejprve si napíšeme program, který nám bude číst data z potenciometru a vypisovat je do konzole.

```ts
import * as adc from "adc";

const INPUT_PIN = 10;

adc.configure(INPUT_PIN); // nejdříve musíme konfigurovat pin, ze kterého chceme data číst

setInterval(() => { // každých 100 ms vyčteme data a vypíšeme je do konzole
    const value = adc.read(INPUT_PIN); // pomocí funkce read čteme data z INPUT_PIN
    console.log(value); //vypisujeme hodnotu do konzole
}, 100);
```

## Zadání B

Data už jsme vyčetli, ale většinou je budeme muset ještě upravit.
Ve většině využití totiž nemůžeme použít číslo od 0-1023.
Proto musíme data takzvaně namapovat na jiný číselný rozsah, k čemuž si napíšeme funkci.

??? note "Řešení"
    ```ts
    import * as adc from "adc";

    // naše nová funkce, jako parametry má velikost nového rozsahu a číslo, které chceme převést
    function mapADC(targetRange: number, num: number): number{ 
        let result: number = (num / (1023/targetRange)); // vypočítame převod na nový rozsah
        return Math.round(result); // výsledek nám často vyjde jako desetinné číslo, proto ho zaokrouhlíme
    }
    const INPUT_PIN = 10;

    adc.configure(INPUT_PIN); 

    setInterval(() => {
        const value = mapADC(255, adc.read(INPUT_PIN)); // pomocí naší funkce si namapujeme data na rozsah 0-255
        console.log(value);
    }, 100);
    ```

## Zadání C

Napíšeme program, který bude pomocí dat z potenciometru měnit jas RGB ledky na ESP.

??? note "Řešení"
    ```ts
    import * as adc from "adc";
    import { Neopixel } from "neopixel";

    function mapADC(targetRange: number, num: number): number{
        let result: number = (num / (1023/targetRange));
        return Math.round(result);
    }

    const INPUT_PIN = 2;
    const LED_PIN = 48;
    const LED_COUNT = 1;

    adc.configure(INPUT_PIN);
    const ledStrip = new Neopixel(LED_PIN, LED_COUNT);

    setInterval(() => {
        const value = mapADC(255, adc.read(INPUT_PIN));
        ledStrip.set(0, {r: value, g: 0, b:0})
        ledStrip.show();
    }, 10);
    ```

## Zadání D

Napíšeme program, který bude číst obě osy joysticku, jedna osa bude ovládat počet svítících ledek na LED pásku, druhá osa jejich barvu.

??? note "Řešení"
    ```ts
    import * as adc from "adc";
    import { SmartLed } from "smartled";
    import * as colors from "./colors.js"

    function mapADC(targetRange: number, num: number): number{
        let result: number = (num / (1023/targetRange));
        return Math.round(result);
    }

    const JOY_X = 10;
    const JOY_Y = 9;
    const LED_PIN = 21;
    const LED_COUNT = 8;

    adc.configure(JOY_X);
    adc.configure(JOY_Y);
    const ledStrip = new SmartLed(LED_PIN, LED_COUNT);

    setInterval(() => {
        const lenght = mapADC(7, adc.read(JOY_X));
        const ledColor = mapADC(360, adc.read(JOY_Y));
        ledStrip.clear();
        for (let i: number = 0; i <= lenght; i++){
            ledStrip.set(i, colors.rainbow(ledColor))
        }
        ledStrip.show();
    }, 10);
    ```

## Výstupní úkol V1

Napíšeme program, který bude pomocí dat ze dvou potenciometrů měnit pozici svítící ledky na LED pásku a její barvu.
Využijeme funkci colors.rainbow(). 
<!-- 
??? note "Řešení"
```ts
import * as adc from "adc";
import { smartled } from "smartled";
import * as colors from "./colors.js"

function mapADC(targetRange: number, num: number): number{
    let result: number = (num / (1023/targetRange));
    return Math.round(result);
}

const POT0 = 2;
const POT1 = 1;
const LED_PIN = 21;
const LED_COUNT = 8;

adc.configure(POT0);
adc.configure(POT1);
const ledStrip = new smartled(LED_PIN, LED_COUNT);

setInterval(() => {
    const ledPos = mapADC(7, adc.read(POT0));
    const ledColor = mapADC(360, adc.read(POT1));
    ledStrip.clear();
    ledStrip.set(ledPos, colors.rainbow(ledColor))
    ledStrip.show();
}, 10);
``` -->












