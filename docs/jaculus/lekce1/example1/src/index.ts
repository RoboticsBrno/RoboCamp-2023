import { Neopixel } from "neopixel";

const ledStrip = new Neopixel(48, 1);  // připojí pásek na pin 48, s 1 ledkou

async function main() {
    while (true) {  // opakuje se donekonečna
        ledStrip.set(0, { r: 255, g: 0, b: 0 });  // nastaví první ledku na červenou
        ledStrip.show();  // zobrazí nastavení na pásku
        console.log("Robotický tábor 2023, zdraví Jirka Vácha!");  // vypíše pozdrav do monitoru
        await sleep(1000);  // počká 1 sekundu

        ledStrip.set(0, { r: 0, g: 0, b: 0 });  // zhasne první ledku
        ledStrip.show();  // zobrazí nastavení na pásku
        await sleep(1000);  // počká 1 sekundu
    }
}

main();  // spustí hlavní funkci
