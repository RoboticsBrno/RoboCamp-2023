# Lekce 6 - pole a řetězce

Řetězec neboli `string` slouží k uložení textu.

- řetězec je vždy uzavřený do uvozovek `""` nebo <code>``</code>
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
