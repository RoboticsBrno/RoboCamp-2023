import { SmartLed, LED_WS2812, Rgb } from "smartled";
import * as colors from "./libs/colors.js"
import * as gpio from "gpio";
import { stdout } from "stdio";
import * as adc from "adc";
import { readline } from "./libs/readline.js"


const BTN_PIN = 18;
const MBTN_PIN = 16;
const RBTN_PIN = 42;

const LED_PIN = 48;

const STRIP_PIN = 21;
const LED_COUNT = 8;

const POT0_PIN = 2;
const POT1_PIN = 1;

const led = new SmartLed(LED_PIN, 1);

async function getLed(){
	let input : number = -1;
	while( input < 0 || input >= 360 ){
		console.log("Put in number between 0 and 360");
		const reader = new readline(false);
		let line : string = await reader.read();
		input = parseInt(line);
	}
	led.set(0, colors.rainbow(input));
	led.show();
}

getLed();