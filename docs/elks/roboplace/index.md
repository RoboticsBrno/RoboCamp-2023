# Roboplace

Na kreslení použijte novou knihovnu [jacserial](https://github.com/C2Coder/jacserial) 

Zde si můžete stáhnou [ukázkový projekt](../roboplace/roboplace_project.zip) i s knihovnou

## Kód pro ELKS

ELKS po stisknutí tlačítka pošle paint příkaz do počítače pomocí jacserial knihovny.

```ts
import * as gpio from "gpio";
import * as jacserial from "./libs/jacserial.js"

const color_list = ["white",  "platinum", "grey",   "black", 
                    "pink",   "red",      "orange", "brown", 
                    "yellow", "lime",     "green",  "cyan", 
                    "lblue",  "blue",     "mauve",  "purple"]


gpio.pinMode(18, gpio.PinMode.INPUT_PULLUP);

gpio.on("falling", 18, ()=> {
    // generates random X, Y and COLOR values 
    let x:number = Math.round(Math.random()*99);
    let y:number = Math.round(Math.random()*99);
    let color:string = color_list[Math.round(Math.random()*99)];
    
    // sends the RoboPlace paint command
    jacserial.send_RoboPlace_cmd("paint " + x + " " + y + " " + color);
})
```


Webovou stránku si můžete otevřít na adrese [https://roboplace.vercel.app](https://roboplace.vercel.app) 
![](assets/colors.png)
## Kód pro pc
- Stáhněte si [repozitář](https://github.com/C2Coder/RoboPlace) 
    - Buď pomcí zipu a poté ho extrahujte
    - Nebo pomocí 
    ```
    git clone https://github.com/C2Coder/RoboPlace
    ```

- Otevřete si složku v terminálu
- Nainstalujte potřebné python moduly pomocí příkazu `pip install -r requirements.txt`

- Spusťte aplikaci
    ```
    python3 ./RoboPlace.py <port> <Jaculus nebo Normal> <no-post (optional)>
    ```
    - Pokud máte ELKS, nebo jiné zařízení s jaculem
    ```
    python3 ./RoboPlace.py <port> Jaculus
    ```
    - Pokud máte něco jiného, např. micro:bit
    ```
    python3 ./RoboPlace.py <port> Normal
    ```
    - Pokud nechcete aby se data posílaly na server
    ```
    python3 ./RoboPlace.py <port> Jaculus no-post
    ```
    - Pokud nechcete mít obrazovku, jenom aby to v pozadí běžělo (headless)
    ```
    python3 ./Headless.py <port> Jaculus
    ```

- Pokud něco nefunguje, pingněte mě na discordu (@C2Coder)
- Pokud někdo chce vidět kód pro webovku [github](https://github.com/C2Coder/RoboPlace_server_vercel)
