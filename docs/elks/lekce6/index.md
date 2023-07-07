# Lekce 6 - pole a řetězce

Řetězec neboli `string` slouží k uložení textu.

- řetězec je vždy uzavřený do uvozovek `""` nebo `''`
    ```ts
    let str : string = "ahoj";  // vytvoří řetězec
    ```
- řetězce můžeme spojovat pomocí `+`
    ```ts
    let str : string = "ahoj" + " " + "jak se máš?";  // vytvoří řetězec "ahoj jak se máš?"

    let answer : string = "dobře";

    let str2 : string = "ahoj " + answer;  // ahoj dobře

    //! pozor jiné uvozovky 
    let str3 : string = `ahoj ${answer}`;  // ahoj dobře

    let str4 : string = answer + " " + 5;  // dobře 5
    ```




??? info "Ukázka práce s řetězcem s readline"
    ```ts

    import { stdout } from "stdio";
    import { readline } from "./readline.js";

    //* řetězce
    async function echo() {
        stdout.write("Napiš nějaký text a stiskni enter.\n");
        const rl = new readline(false);  // vytvoří novou instanci třídy readline
        while (true) {  // opakuje se donekonečna
            const line = await rl.read();  // přečte řádek z konzole
            stdout.write("Zadal jsi: " + line + "\n");  // vypíše řádek na konzoli
            stdout.write(`Druhá možnost výpisu: Zadal jsi: ${line}\n`);  // vypíše řádek na konzoli

            if (line == "konec") {  // pokud je řádek roven "konec"
                stdout.write("Ukončuji.\n");  // vypíše text na konzoli
                break;  // ukončí cyklus
            }
        }
        rl.close();  // ukončí čtení z konzole
    }

    echo();  // zavolá funkci echo
    ```

Pole neboli `array` slouží k uložení více hodnot stejného typu.

- pole vytvoříme pomocí hranatých závorek
    ```ts
    let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
    ```
- jak se dostaneme k jednotlivém prvkům pole?
    - pomocí indexu
        ```ts
        let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
        let num : number = arr[2];  // 
        ```
    - indexování začíná od 0
        ```ts
        let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
        let num : number = arr[0];  // do proměnné num uložíme hodnotu na indexu 0
        ```
    - index můžeme použít i pro změnu hodnoty
        ```ts
        let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
        arr[2] = 10;  // změní hodnotu na indexu 2
        ``` 
- jak zjistíme délku pole?
    ```ts
    let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
    stdout.write("Pole arr: " + arr + "\n");  // vypíše pole na konzoli
    stdout.write("délka pole je: " + arr.length + "\n");  // vypíše délku pole
    ```
- jak přidáme hodnotu na konec pole?
    ```ts

    let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
    arr.push(6);  // přidá hodnotu na konec pole
    ```
- jak odebíráme hodnotu z konce pole?
    ```ts

    let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
    let num : number = arr.pop();  // odebere hodnotu z konce pole
    ```
- jak přidáme hodnotu na začátek pole?
    ```ts

    let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
    arr.unshift(0);  // přidá hodnotu na začátek pole
    ```
- jak odebíráme hodnotu z začátku pole?
    ```ts

    let arr : number[] = [1, 2, 3, 4, 5];  // vytvoří pole
    let num : number = arr.shift();  // odebere hodnotu z začátku pole
    ```




## Zadání A

Spočítat slova v textu.

??? help "Nápověda"
    ```md

    nad proměnnou můžeme použít metody:
    - split() - rozdělí text na pole
    - .length - vrátí délku pole
    ```

??? note "Řešení"
    ```ts
    import { stdout } from "stdio";

    let text : string = "Toto je nějaký text, který bude rozdělen na slova.";

    let words : string[] = text.split(" ");  // rozdělí text na slova

    stdout.write("Počet slov v textu je: " + words.length + "\n");  // vypíše počet slov
    ``` 

## Zadání B

Vypsat zadané slova v opačném pořadí.

??? help "Nápověda"
    ```md

    nad proměnnou můžeme použít metody:
    - split() - rozdělí text na pole
    - .reverse() - obrátí pořadí prvků v poli
    - .join() - spojí prvky pole do textu
    ```
??? note "Řešení"
    ```ts

    import { stdout } from "stdio";
    import { readline } from "./readline.js";
    
    function reverseWords(text : string) : string {
        // using for loop
        let invert : string[] = [];
        let words : string[] = text.split(" ");
        for (let i : number = words.length - 1; i >= 0; i--) {
            invert.push(words[i]);
        }
        return invert.join(" ");
    }
    
    async function invertWords() {
        const rl = new readline(false);  // vytvoří novou instanci třídy readline
        stdout.write("Napiš nějaký text a stiskni enter.\n");
        let text : string = await rl.read();  // přečte řádek z konzole
    
        // první řešení
        let words : string[] = text.split(" ");  // rozdělí řádek na slova
        let invert : string = words.reverse().join(" ");  // obrátí slova
    
        stdout.write(`Obrácená slova: ${invert}\n`);  // vypíše obrácená slova
    
        // druhé řešení
        stdout.write(`S voláním funkce: ${reverseWords(text)}\n`);  // vypíše obrácená slova
    
        
        rl.close();  // ukončí čtení z konzole   
    }
    
    invertWords();
    ```

## Zadání C

Spojování řetězců - `+`
index a RGB
výstupem je string `set <index> <R> <G> <B>`

??? note "Řešení"
    ```ts
    import { stdout } from "stdio";
    import { Neopixel } from "neopixel";
    import * as color from "./colors.js";

    let color_arr  = [color.red, color.green, color.blue, color.yellow, color.purple, color.pink, color.white, color.off];

    let strip = new Neopixel(14,8);

    for (let i :number = 0; i < color_arr.length; i++) {
        const color = color_arr[i];
        strip.set(i, color);
        stdout.write("set "+ i + " " + color.r + " " + color.g + " " + color.b + "\n");
        //stdout.write(`set ${i} ${color.r} ${color.g} ${color.b}\n`);
        strip.show();
    }

    ```

## Zadání D

Proveď příkaz načtený z konzole.


??? help "Nápověda"
    ```md 
    
    split podle mezer
    první slovo příkaz
    další argumenty
    ```

Příkaz `set` - nastavení LED na indexu na danou barvu.
- `set <index> <R> <G> <B>`

`index` - číslo od 0 do 8
`R` - číslo od 0 do 255
`G` - číslo od 0 do 255
`B` - číslo od 0 do 255

??? note "Řešení"
    ```ts

    import { stdout } from "stdio";
    import { Neopixel } from "neopixel";
    import { readline } from "./readline.js";



    let strip = new Neopixel(14,8);

    async function commands() {
        stdout.write("Napiš nějaký text a stiskni enter.\n");
        const rl = new readline(false);  // vytvoří novou instanci třídy readline
        while (true) {  // opakuje se donekonečna
            const line = await rl.read();  // přečte řádek z konzole
            let command : string[] = line.split(" ");
            if (command[0] == "set") {
                let index : number = parseInt(command[1]);
                if (index < 0 || index > 7) {
                    stdout.write("Index musí být v rozsahu 0 až 7.\n");
                    continue;
                }
                let r : number = parseInt(command[2]);
                if (r < 0 || r > 255) {
                    stdout.write("R musí být v rozsahu 0 až 255.\n");
                    continue;
                }
                let g : number = parseInt(command[3]);
                if (g < 0 || g > 255) {
                    stdout.write("G musí být v rozsahu 0 až 255.\n");
                    continue;
                }
                let b : number = parseInt(command[4]);
                if (b < 0 || b > 255) {
                    stdout.write("B musí být v rozsahu 0 až 255.\n");
                    continue;
                }
                strip.set(index, {r, g, b});
                strip.show();
            }
            else if (command[0] == "end") {
                stdout.write("konec\n");  // vypíše text na konzoli
                break;  // ukončí cyklus
            }
        }
        rl.close();  // ukončí čtení z konzole
    }

    commands();
    ```

## Zadání výstupního úkolu V1

Rozšířit zadání D.
Příkaz `fill` - nastavení všech LED na danou barvu.
- `fill <R> <G> <B>`
