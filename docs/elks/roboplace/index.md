# RoboPlace

Máme tu RoboPlace jako minulý rok. Můžete na něj psát pomocí prográmku, který běží na vašem počítači a ELKSu. (Nebojte je to jednoduché)

[Návod na instalaci](https://github.com/C2Coder/RoboPlace_client)  (Tento návod se bude postupně zlepšovat)

Budeme používat novou knihovnu `jacserial` ([github](https://github.com/C2Coder/jacserial)), v ní je funkce `send_RoboPlace_cmd` do které dáme string s příkazem, který chceme poslat.

```ts
import * as jacserial from "./libs/jacserial.js"

// pošle příkaz přes usb
jacserial.send_RoboPlace_cmd("paint 0 0 red")
```

Webová aplikace běží na adrese [roboplace.vercel.app](https://roboplace.vercel.app/)

## Barvy

![](assets/colors.png)

