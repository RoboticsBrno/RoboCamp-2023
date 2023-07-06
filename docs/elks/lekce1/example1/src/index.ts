import { Neopixel } from "neopixel"; // importování knihovny Neopixel

const ledStrip = new Neopixel(48, 1);  // připojí pásek na pin 48, s 1 ledkou

ledStrip.set(0, {r: 255, g: 0, b: 0}); // nastaví barvu LED na ESP32 na červenou
ledStrip.show(); // zobrazí nastavení na LED

setInterval(() => { // pravidelně vyvolává událost
    console.log("Robotický tábor 2023, zdraví Jirka Vácha!"); // vypíše text: Robotický tábor 2023, zdraví Jirka Vácha!
}, 1000); // čas opakování se udává v milisekundách (1000 ms je 1 sekunda)
