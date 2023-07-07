// import { SmartLed, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"

// const LED_PIN = 48;
// const LED_COUNT = 1;

// const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812


// let on: boolean = false; // LED je vypnutá

// setInterval(() => {
//   if (on) { // Pokud je LED zapnutá
//     ledStrip.set(0, colors.off); // Vypneme LED
//     ledStrip.show(); // Zobrazíme změny
//     on = false;
//   } else {
//     ledStrip.set(0, colors.green); // Rozsvítíme LED zelenou barvou
//     ledStrip.show(); // Zobrazíme změny
//     on = true
//   }
// }, 1000);


// import { SmartLed, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"

// const ledStrip = new SmartLed(48, 1, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

// ledStrip.set(0, colors.green); // nastaví barvu LED na ESP32 na červenou
// ledStrip.show(); // zobrazí nastavení na LED

// setInterval(() => { // pravidelně vyvolává událost
//     console.log("Robotický tábor 2023, zdraví Jirka Vácha!"); // vypíše text: Robotický tábor 2023, zdraví Jirka Vácha!
// }, 1000); // čas opakování se udává v milisekundách (1000 ms je 1 sekunda)


// setInterval(() => { /* moj kod */ }, 500); // čas opakování se udává v milisekundách (1000 ms je 1 sekunda)



// import { SmartLed, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"

// const LED_PIN = 48;
// const LED_COUNT = 1;

// const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

// ledStrip.set(0, colors.red); // nastaví barvu nulté LED na červenou (RGB 255 0 0)
// ledStrip.show(); // zobrazí nastavení na LED

// import * as gpio from "gpio";
// import { SmartLed, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"

// const LED_PIN = 48;
// const LED_COUNT = 1;
// const BTN_PIN = 0;

// const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

// gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT); // nastaví pin nula jako vstup

// gpio.on("falling", BTN_PIN, () => { // událost, která proběhne při stisknutí tlačítka připojeného na pin 0
// 	ledStrip.set(0, {r: 0, g: 255, b: 0}); // nastaví barvu nulté LED na červenou (RGB 255 0 0)
// 	ledStrip.show(); // zobrazí nastavení na LED
// });

// gpio.on("rising", BTN_PIN, () => { // událost, která proběhne při puštění tlačítka připojeného na pin 0
// 	ledStrip.set(0, colors.off); // nastaví nultou LED na zhasnutou (RGB 0 0 0)
// 	ledStrip.show(); // zobrazí nastavení na LED
// });


// import { SmartLed, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"

// const LED_PIN = 48;
// const LED_COUNT = 1;

// const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

// let on: boolean = false; // LED je vypnutá

// setInterval(() => {
// 	if (on) { // Pokud je LED zapnutá
// 		ledStrip.set(0, colors.off); // Vypneme LED
// 		ledStrip.show(); // Zobrazíme změny
// 		on = false;
// 	} else {
// 		ledStrip.set(0, colors.green); // Rozsvítíme LED zelenou barvou
// 		ledStrip.show(); // Zobrazíme změny
// 		on = true
// 	}
// }, 1000);


// import { SmartLed, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"

// const LED_PIN = 48;
// const LED_COUNT = 1;

// const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

// let shade = 0; // Držíme si stav s aktuálním odstínem

// setInterval(() => {
// 	ledStrip.set(0, colors.rainbow(shade)); // Nastavíme LED na aktuální odstín
// 	ledStrip.show(); // Zobrazíme vybranou barvu
// 	shade = shade + 1; // Zvedneme odstín (lze i shade += 1)
// 	if (shade > 360) {
// 		shade = 0;
// 	}
// }, 100);




// import { SmartLed, Rgb, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"
// import * as gpio from "gpio";

// const LED_PIN = 48;
// const LED_COUNT = 1;

// gpio.pinMode(0, gpio.PinMode.INPUT_PULLUP); // Nastavíme tlačítko
// const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

// let index : number = 0;
// let color : Rgb = colors.light_blue; // Vybereme si barvu
// ledStrip.set(0, color); // Nastavíme LED na aktuální odstín
// ledStrip.show(); // Zobrazíme změny

// gpio.on("falling", 0, () => {
//     ledStrip.set(index, colors.off); // Vypneme předchozí LED
//     index = index + 1; // Zvedneme index (lze i index += 1)
//     if(index > 7){ // Pokud jsme mimo rozsah pásku, vrátíme se na začátek
//         index = 0;
//     }
//     ledStrip.set(index, color); // Nastavíme aktuální LED
//     ledStrip.show();  // Zobrazíme změny
// });


// import * as gpio from "gpio";

// const BTN_PIN = 0;

// gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT_PULLUP); // nastaví pin nula jako vstup

// gpio.on("falling", BTN_PIN, () => { // událost, která proběhne při stisknutí tlačítka připojeného na pin 0
// 	console.log("Stisknuto, začínáme počítat");
// 	for (let i: number = 0; i < 9; i++) { // vypíšeme čísla od 0 do 8
// 		console.log(i);
// 	}
// 	console.log(""); // oddělíme jednotlivé stisky
// });


// import { SmartLed, LED_WS2812 } from "smartled";
// import * as colors from "./libs/colors.js"
// import * as gpio from "gpio";

// const LED_PIN = 48;
// const LED_COUNT = 1;
// const BTN_PIN = 0;

// const ledStrip = new SmartLed(LED_PIN, LED_COUNT, LED_WS2812);  // připojí pásek na pin 48, s 1 ledkou a typem WS2812

// gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT_PULLUP); // nastaví pin nula jako vstup

// gpio.on("falling", 0, async () => { // event, který proběhne při stisknutí tlačítka připojeného na pin 0
// 	while (gpio.read(BTN_PIN) == 0) { // dokud je tlačítko stisknuté
// 		ledStrip.set(0, colors.red);
// 		ledStrip.show();
// 		await sleep(500); // nastavíme červenou barvu a počkáme půl sekundy

// 		ledStrip.set(0, colors.off);
// 		ledStrip.show();
// 		await sleep(500); // vypneme LED a počkáme půl sekundy
// 	}
// });


import { stdout } from "stdio";
const SQUARE_SIZE: number = 3; // velikost čtverce

console.log("Vykreslíme čtverec o velikosti " + SQUARE_SIZE + "x" + SQUARE_SIZE);

for(let row: number = 0; row < SQUARE_SIZE; row++){ // projdeme všechny řádky
	for(let col: number = 0; col < SQUARE_SIZE; col++){ // projdeme všechny sloupce
		stdout.write("*"); // vypíšeme hvězdičku
	}
	stdout.write("\n"); // přesuneme se na další řádek
}