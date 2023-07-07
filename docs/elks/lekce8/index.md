# Lekce 8 - Řetězce

Řetězce jsou speciální případ pole, které drží znaky a umožňují nám předávat informace.
Datový typ, který drží řetězec, je `#!ts string`.

- Řetězec je vždy uzavřený do uvozovek `#!ts ""` nebo <code>``</code>
    ```ts
    let str : string = "ahoj";  // vytvoří řetězec
    ```
- Řetězce můžeme spojovat pomocí `#!ts +`
    ```ts
    let str : string = "ahoj" + " " + "jak se máš?";  // vytvoří řetězec "ahoj jak se máš?"

    let answer : string = "dobře";

    let str2 : string = "ahoj " + answer;  // ahoj dobře

    //! pozor jiné uvozovky
    let str3 : string = `ahoj ${answer}`;  // ahoj dobře

    let str4 : string = answer + " " + 5;  // dobře 5
    ```

Stejně jako ostatní typy je můžeme předávat do funkcí a vracet:
```ts
function greetName(name: string) : void {
    console.log("Ahoj " + name);
}
```


??? info "Ukázka práce s řetězcem s readline"
    ```ts
    import { stdout } from "stdio";
    import { readline } from "./libs/readline.js";

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


