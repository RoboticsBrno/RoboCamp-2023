# Lekce 2 - RGB LED + tlačítko + události

V této lekci si ukážeme ovládání RGB LED umístěné na ESP32 a práci s událostmi řízenými tlačítkem nebo časem. 

Jelikož je TypeScript (JavaScript) imperativní, vykonávájí se příkazy v takovém pořadí, v jakém jsou zapsány.

## Zadání A

Rozsvítíme RGB LED na ESP32 (GPIO 48) jednou barvou (například červenou). 

Na začátku tohoto úkolu si stáhneme nový [zip]() soubor obsahující prázdný projekt. Po stažení složku rozbalíme a otevřeme ve Visual Studio Code.

??? note "Řešení"
    ```ts 
    import { Neopixel } from "neopixel";

    const LED_PIN = 48;
    const LED_COUNT = 1;

    const ledStrip = new Neopixel(LED_PIN, LED_COUNT);  // připojí pásek na pin 48, s 1 ledkou

    ledStrip.set(0, {r: 255, g: 0, b: 0}); // nastaví barvu nulté LED na červenou (RGB 255 0 0)
    ledStrip.show(); // zobrazí nastavení na LED
    ```

## Co je to událost v programování?

Událost, která je programem rozpoznávána (například stisknutí nebo puštění tlačítka nebo uplynutí nějakého času).

Po zaznamenání události se vykoná kód, který je k ní přiřazen.¨

## Zadání B

Pomocí událostí rozsvítíme při stisknutí tlačítka (GPIO 0) RGB LED na ESP32 (GPIO 48) a při puštění ho opět zhasneme.

??? note "Řešení"
    ```ts 
    import * as gpio from "gpio";
    import { Neopixel } from "neopixel";

    const LED_PIN = 48;
    const LED_COUNT = 1;
    const BTN_PIN = 0;

    const ledStrip = new Neopixel(LED_PIN, LED_COUNT);  // připojí pásek na pin 48, s 1 ledkou

    gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT_PULLUP); // nastaví pin nula jako vstup

    gpio.on("falling", BTN_PIN, () => { // událost, která proběhne při stisknutí tlačítka připojeného na pin 0
        ledStrip.set(0, {r: 255, g: 0, b: 0}); // nastaví barvu nulté LED na červenou (RGB 255 0 0)
        ledStrip.show(); // zobrazí nastavení na LED
    });

    gpio.on("rising", BTN_PIN, () => { // událost, která proběhne při puštění tlačítka připojeného na pin 0
        ledStrip.set(0, {r: 0, g: 0, b: 0}); // nastaví nultou LED na zhasnutou (RGB 0 0 0)
        ledStrip.show(); // zobrazí nastavení na LED
    });
    ```

## Zadání C

Dvakrát za sekundu vypíšeme stav zmáčnutí tlačítka (0 nebo 1). Opakování dosáhneme pomocí `setInterval()`.

??? note "Řešení"
    ```ts
    import * as gpio from "gpio";

    const BTN_PIN = 0;

    gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT_PULLUP); // nastaví pin nula jako vstup

    setInterval(() => { // pravidelně vyvolává událost
        console.log(gpio.read(BTN_PIN)); // načte a vypíše stav tlačítka připojeného na pin 0
    }, 500); // čas opakování se udává v milisekundách (500 ms je 0,5 sekundy)
    ```

## Zadání výstupního úkolu V1

Při stisknutí tlačítka (GPIO 0) vypíšeme pozdrav.

## Zadání výstupního úkolu V2

Při stisknutí tlačítka (GPIO 0) rozsvítíme RGB LED na ESP32 (GPIO 48) jednou barvou a při puštění barvu změníme na jinou.
