import { SmartLed, LED_WS2812, Rgb } from "smartled";
import * as colors from "./libs/colors.js"
import * as gpio from "gpio";
import { stdout } from "stdio";
import * as adc from "adc";


const BTN_PIN = 18;
const MBTN_PIN = 16;
const RBTN_PIN = 42;

const LED_PIN = 48;

const STRIP_PIN = 21;
const LED_COUNT = 8;

const POT0_PIN = 2;
const POT1_PIN = 1;


let ledStrip = new SmartLed(STRIP_PIN, LED_COUNT, LED_WS2812);
adc.configure(POT0_PIN);
adc.configure(POT1_PIN);

gpio.pinMode(BTN_PIN, gpio.PinMode.INPUT);
gpio.pinMode(MBTN_PIN, gpio.PinMode.INPUT);
gpio.pinMode(RBTN_PIN, gpio.PinMode.INPUT);

let state : Array<number> = []

gpio.on( "falling", BTN_PIN, () => {
	if( state.length < 8 ){
		state.push( adc.read( POT0_PIN ) );
	}
	console.log( state );
});

gpio.on( "falling", MBTN_PIN, () => {
	if( state.length > 0 ){
		state.pop();
	}
	console.log( state );
});

gpio.on( "falling", RBTN_PIN, () => {
	for( let i = 0; i < state.length; i++ ){
		ledStrip.set( i, colors.rainbow( state[ i ] / 3 ) );
	}
	ledStrip.show();
	state = [];
});