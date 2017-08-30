void main() {

TRISB = 0b11111111;    // portb is in puts
PORTB = 0b00000000;

TRISC = 0b00000000;    // portc is PWM outs
PORTC = 0b00000110;

TRISD = 0b00000000;    // portd is moter controller outs
PORTD = 0b00000000;

PR2 = 0X7C;    // this coad is PWM s are on
T2CON = 0X05;
CCP1CON = 0X0C;
CCP2CON = 0X3C;

while(1){

if(PORTB==0b01110111){
PORTD = 0b01100000;
CCPR1L = 250;
CCPR2L = 250;

}                //go front

else if(PORTB = 0b01110111){
PORTD = 0b00000000;
}


if(PORTB==0b01101111){
PORTD = 0b01100000;
CCPR1L = 200;
CCPR2L = 250;
}                  //soft left

if(PORTB==0b01111011){
PORTD = 0b01100000;
CCPR1L = 250;
CCPR2L = 200;
}                  //soft right



}



}