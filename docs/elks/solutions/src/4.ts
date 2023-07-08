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

// 4V

for( let i = 9; i >= 0; i-- ){
	console.log(i);
}

const size = 5;
for( let i = 0; i <= size; i++ ){
	for( let j = 0; j < i; j++ ){
		stdout.write( "*" )
	}
	stdout.write("\n");
}