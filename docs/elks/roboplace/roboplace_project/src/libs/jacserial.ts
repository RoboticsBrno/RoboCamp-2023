
/**
 * A lib for sending data to jacserial python module (github.com/c2coder/jacserial)
 */

export function send(data:any){
    console.log("|" + data + "|")
}

export function send_RoboPlace_cmd(command:string){
    send("ELKS " + command)
}
