import { SmartLed, LED_WS2812 } from "smartled";
import * as colors from "./libs/colors.js"
import * as gpio from "gpio";
import { stdout } from "stdio";
import * as adc from "adc";

const BTN_PIN = 18;
const MBTN_PIN = 16;
const RBTN_PIN = 6;

const LED_PIN = 48;

// 2V

gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT);
const led = new SmartLed(LED_PIN, 1, LED_WS2812);

gpio.on("falling", BTN_PIN, () => {
	console.log("Hello world!");
	led.set(0, colors.red);
	led.show();
});

gpio.on("rising", BTN_PIN, () => {
	led.set(0, colors.green);
	led.show();
});