import { SmartLed, LED_WS2812, Rgb } from "smartled";
import * as colors from "./libs/colors.js"
import * as gpio from "gpio";
import { stdout } from "stdio";
import * as adc from "adc";


const LBTN_PIN = 18;
const MBTN_PIN = 16;
const RBTN_PIN = 6;

const LED_PIN = 48;

const STRIP_PIN = 21;
const LED_COUNT = 8;

const POT0_PIN = 2;
const POT1_PIN = 1;


let ledStrip = new SmartLed(STRIP_PIN, LED_COUNT, LED_WS2812);
adc.configure(POT0_PIN);
adc.configure(POT1_PIN);

setInterval( () => {
	let hue = adc.read( POT0_PIN ) / 3;
	let index = Math.floor( adc.read(POT1_PIN) / 128 );
	for( let i = 0; i < 8; i++ ){
		ledStrip.set( i, colors.off );
	}
	ledStrip.set( index, colors.rainbow( hue ) );
	ledStrip.show();
}, 10);
