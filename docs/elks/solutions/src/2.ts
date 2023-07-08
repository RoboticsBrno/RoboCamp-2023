import { SmartLed, LED_WS2812 } from "smartled";
import * as colors from "./libs/colors.js"
import * as gpio from "gpio";
import { stdout } from "stdio";
import * as adc from "adc";

const LBTN_PIN = 18;
const MBTN_PIN = 16;
const RBTN_PIN = 6;

const LED_PIN = 48;

// 2V

gpio.pinMode(LBTN_PIN, gpio.PinMode.INPUT);
const led = new SmartLed(LED_PIN, 1, LED_WS2812);

gpio.on("falling", LBTN_PIN, () => {
	console.log("Hello world!");
	led.set(0, colors.red);
	led.show();
});

gpio.on("rising", LBTN_PIN, () => {
	led.set(0, colors.green);
	led.show();
});