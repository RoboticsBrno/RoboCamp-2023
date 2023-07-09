import { SmartLed, LED_WS2812 } from "smartled";
import * as colors from "./libs/colors.js"

const LED_PIN = 48;
const LED_COUNT = 1;

const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

ledStrip.set(0, {r: 255, g: 255, b: 0}); // nastaví barvu nulté LED na červenou (RGB 255 0 0)
ledStrip.show(); // zobrazí nastavení na LED
