# Jaculus


### Blink example
``` ts
import * as gpio from "gpio"; // (1)!

const LED_PIN = 45; // (2)!

gpio.pinMode(LED_PIN, gpio.PinMode.OUTPUT); // (3)!

let state = false;

setInterval(() => { // (4)!
    gpio.write(LED_PIN, state ? 1 : 0); // (5)!
    state = !state;
}, 1000);
```

1.  Import the GPIO module.
2.  Configure the LED pin constant.
3.  Set the pin mode to output.
4.	Repeat the following code every second.
5.  Toggle the LED state every second.
