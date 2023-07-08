import { SmartLed, LED_WS2812 } from "smartled";
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

// 3V

const ledStrip = new SmartLed(STRIP_PIN, LED_COUNT, LED_WS2812);

let hue = 0;
let lightness = 50;

let index : number = 0;
let direction : number = 1;

function inRange( idx : number ) : boolean {
	return idx >= 0 && idx < 8;
}

setInterval(() => {
	for( let i = 0; i < 4; i++ ){
		if( inRange( index - i * direction ) ){
			ledStrip.set( index - i * direction, colors.rainbow( hue, 30 - i * 10 ) );
		}
	}
	ledStrip.show();
	if( index == 10 || index == -2 ){
		direction *= -1;
		hue = ( hue + 10 ) % 360;
	}
	index += direction;
}, 100);