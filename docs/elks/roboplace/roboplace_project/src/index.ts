import * as gpio from "gpio";
import * as jacserial from "./libs/jacserial.js"

const color_list = ["white", "platinum", "grey", "black", "pink", "red", "orange",
          "brown", "yellow", "lime", "green", "cyan", "lblue", "blue", "mauve", "purple"]


gpio.pinMode(18, gpio.PinMode.INPUT_PULLUP);

gpio.on("falling", 18, ()=> {
    // generates random X, Y and COLOR values 
    let x:number = Math.round(Math.random()*99);
    let y:number = Math.round(Math.random()*99);
    let color:string = color_list[Math.round(Math.random()*99)];
    
    // sends the RoboPlace paint command
    jacserial.send_RoboPlace_cmd("paint " + x + " " + y + " " + color);
})
