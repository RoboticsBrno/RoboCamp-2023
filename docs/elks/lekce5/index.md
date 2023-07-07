# Lekce 5 - funkce

## Funkce - Co to je?
Funkce je část programu, kterou můžeme volat (spouštět) jinými částmi programu.
Rozdělení programu na funkce ho výrazně zpřehledňuje a umožňuje nám opakovaně používat jeden kus kódu.

## Vytvoření a zavolání funkce
```ts
function sayHello(): void {
    console.log("Ahoj");
    console.log("z funkce");
}
```

Funkci zavoláme následujícím způsobem:
```ts
sayHello();
```

??? info "Kód nám vypíše:"
    ```bash
    info:    Device: Starting machine
    Ahoj
    z funkce
    ```

## Předávání argumentů
Funkcím můžeme při volání předávat argumenty. Abychom to mohli udělat, musíme k tomu přizpůsobit deklaraci. Parametry je taky potřeba vhodně otypovat.
```ts
function getSquare(num: number): void {
    let square: number = num * num;
    console.log("Druhá mocnina zadaného čísla je:");
    console.log(square);
}
```

Funckci zavoláme následujícím způsobem:
```ts
getSquare(5);
```

??? info "To by nám mělo vypsat:"
    ```bash
    info:    Device: Starting machine
    Druhá mocnina zadaného čísla je:
    25
    ```

## Vracení hodnot
Z funkce je možné také hodnotu vrátit.
Hodnoty vracíme pomocí klíčového slova `#!ts return`. Podobně jako v případě parametrů musíme specifikovat **typ** vracené hodnoty.

```ts
function getAverage(num1: number, num2: number): number {
    let sum: number = num1 + num2; // Součet dvou čísel
    return sum / 2; // Vrátíme průměr dvou čísel jako návratovou hodnotu
}
```

Funkci použijeme následujícím způsobem:
```ts
let average: number = getAverage(5, 10);

console.log("Průměr je:");
console.log(average);
```

??? info "Výstup programu"
    ```bash
    info:    Device: Starting machine
    Průměr je:
    7.5
    ```


??? warning "Nedosažitelný kód"
    Použitím klíčového slova `#!ts return` ukončíme vykonávání současné funkce a vrátíme se zpátky do funkce která ji zavolala.
    Z toho vyplývá, že to co napíšeme za `#!ts return` se již nikdy nevykoná.
    ```ts
    function getSquare(num: number): number { // Druhá mocnina
        return num * num;
        console.log("Toto se nikdy nevypíše");
    }
    ```

<!-- ## Asynchronní funkce
Když zavoláme běžnou funkci, tato funkce se vykoná a program potom pokračuje dál.
V následujícím programu se nejdřív vykoná ```timeConsumingFunc``` a až poté co dokončí svoji práci se zavolá funkce ```somethingElse```.
```ts

    function timeConsumingFunc() {
        // Neco velmi casove narocneho zde
    }

    timeConsumingFunc();
    somethingElse();
```


??? tip "Co znamená asynchronní vykonávání funkce? "
    Když zavoláme asynchronní funkci, řízení se nepředá výhradně volané funkci, ale asynchronní zavolaná funkce a původní funkce se začnou střídat v řízení. -->


## Zadání A

Vytvoř funkci, která vypíše pozdrav tvým jménem. Jméno předávej jako parametr.
??? note "Řešení"
    ```ts
    function greet(name: string) : void { // funkce bere jeden parametr typu string a nevrací žádnou hodnotu
        console.log("Ahoj " + name);
    }

    greet("Franto"); // výstup: Ahoj Franto
    ```

## Zadání B

Funkce která bere 2 argumenty a vykreslí obdélník o daných rozměrech
??? note "Řešení"
    ```ts
    import { stdout } from "stdio";

    function drawRectangle(cols: number, rows: number): void { // funkce, která vykreslí obdélník (počet sloupců, počet řádků)
        for (let row: number = 0; row < rows; row++) { // projdeme všechny řádky
            for (let col: number = 0; col < cols; col++) { // projdeme všechny sloupce
                stdout.write("*"); // vypíšeme hvězdičku
            }
            stdout.write("\n"); // přesuneme se na další řádek
        }
    }

    drawRectangle(5, 2); // vypíše obdélník o velikosti 5x2
    ```

## Zadání C

Vytvoř
předám 3 parametry na nastavení RGB LED a poté X a Y
nastavím blok ledek mezi X a Y


## Zadání výstupního úkolu V1

funkce gradient - začátek a konec v RGB - objekt
