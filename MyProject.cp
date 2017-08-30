#line 1 "C:/Documents and Settings/kjh/Desktop/Silver arrow/MyProject.c"
void main() {

TRISB = 0b11111111;
PORTB = 0b00000000;

TRISC = 0b00000000;
PORTC = 0b00000110;

TRISD = 0b00000000;
PORTD = 0b00000000;

PR2 = 0X7C;
T2CON = 0X05;
CCP1CON = 0X0C;
CCP2CON = 0X3C;

while(1){

if(PORTB==0b01110111){
PORTD = 0b01100000;
CCPR1L = 250;
CCPR2L = 250;

}

else if(PORTB = 0b01110111){
PORTD = 0b00000000;
}


if(PORTB==0b01101111){
PORTD = 0b01100000;
CCPR1L = 200;
CCPR2L = 250;
}

if(PORTB==0b01111011){
PORTD = 0b01100000;
CCPR1L = 250;
CCPR2L = 200;
}



}



}
