import { SmartLed, LED_WS2812, Rgb } from "smartled";
import * as colors from "./libs/colors.js"
import * as gpio from "gpio";
import { stdout } from "stdio";
import * as adc from "adc";


const BTN_PIN = 18;
const MBTN_PIN = 16;
const RBTN_PIN = 6;

const LED_PIN = 48;

const STRIP_PIN = 21;
const LED_COUNT = 8;

let ledStrip = new SmartLed(STRIP_PIN, LED_COUNT, LED_WS2812);

function interpolate( startColor: Rgb, endColor: Rgb, t: number ) : Rgb {
	let red = startColor.r * t + endColor.r * (1 - t);
	let green = startColor.g * t + endColor.g * (1 - t);
	let blue = startColor.b * t + endColor.b * (1 - t);

	return { r: red, g: green, b: blue };
}
function setLeds( start: number, end: number, startColor: Rgb, endColor: Rgb = startColor ){
	for( let i = 0; i < 8; i++ ){
		ledStrip.set( i, colors.off );
	}
	for( let i = start; i <= end; i++ ){
		ledStrip.set( i, interpolate( startColor, endColor, i / ( end + 1 - start ) ) );
	}
	ledStrip.show();
}

setLeds( 1, 6, colors.green, colors.blue );