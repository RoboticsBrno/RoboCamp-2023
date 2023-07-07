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

## Předávání argumentů
Funkcím můžeme při volání předávat argumenty. Abychom to mohli udělat, musíme k tomu přizpůsobit deklaraci. Parametry je taky potřeba vhodně otypovat.
```ts
function getSquare(num: number): void {
    let square: number = num * num;
    console.log("Druhá mocnina zadaného čísla je:");
    console.log(square);
}
```

## Vracení hodnot
Hodnoty vracíme pomocí klíčového slova ``` return ```. Podobně jako v případě parametrů musíme specifikovat typ vracené hodnoty.
```ts
function getAverage(num1: number, num2: number): number {
    let sum: number = num1 + num2;
    return sum / 2;
}
```


??? warning "Nedosažitelný kód" 
    Použitím klíčového slova ``` return ``` ukončíme vykonávání současné funkce a vrátíme se zpátky do funkce která ji zavolala. Z toho vyplývá, že co je za ``` return ``` se nikdy nevykoná.
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

Vytvoř funkci, která vypíše pozdrav tvým jménem - argument jméno
??? note "Řešení"
    ```ts
    function greet(name: string) {
        con
    }
    ```

## Zadání B

Funkce která bere 2 argumenty a vykreslí obdélník o daných rozměrech
??? note "Řešení"
    ```ts
    import { stdout } from "stdio";
    function drawRectangle(width: number, height: number) {
        for(let y = 0; y < height; y++) {
            for(let x = 0; x < width; x++) {
            stdout.write("*");
            }
            stdout.write("\n");
        }
    }
    ```

## Zadání C
předám 3 parametry na nastavení RGB LED a poté X a Y
nastavím blok ledek mezi X a Y


## Zadání výstupního úkolu V1

funkce gradient - začátek a konec v RGB - objekt
