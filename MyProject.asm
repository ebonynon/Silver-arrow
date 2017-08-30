
_main:

;MyProject.c,1 :: 		void main() {
;MyProject.c,3 :: 		TRISB = 0b11111111;    // portb is in puts
	MOVLW      255
	MOVWF      TRISB+0
;MyProject.c,4 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;MyProject.c,6 :: 		TRISC = 0b00000000;    // portc is PWM outs
	CLRF       TRISC+0
;MyProject.c,7 :: 		PORTC = 0b00000110;
	MOVLW      6
	MOVWF      PORTC+0
;MyProject.c,9 :: 		TRISD = 0b00000000;    // portd is moter controller outs
	CLRF       TRISD+0
;MyProject.c,10 :: 		PORTD = 0b00000000;
	CLRF       PORTD+0
;MyProject.c,12 :: 		PR2 = 0X7C;    // this coad is PWM s are on
	MOVLW      124
	MOVWF      PR2+0
;MyProject.c,13 :: 		T2CON = 0X05;
	MOVLW      5
	MOVWF      T2CON+0
;MyProject.c,14 :: 		CCP1CON = 0X0C;
	MOVLW      12
	MOVWF      CCP1CON+0
;MyProject.c,15 :: 		CCP2CON = 0X3C;
	MOVLW      60
	MOVWF      CCP2CON+0
;MyProject.c,17 :: 		while(1){
L_main0:
;MyProject.c,19 :: 		if(PORTB==0b01110111){
	MOVF       PORTB+0, 0
	XORLW      119
	BTFSS      STATUS+0, 2
	GOTO       L_main2
;MyProject.c,20 :: 		PORTD = 0b01100000;
	MOVLW      96
	MOVWF      PORTD+0
;MyProject.c,21 :: 		CCPR1L = 250;
	MOVLW      250
	MOVWF      CCPR1L+0
;MyProject.c,22 :: 		CCPR2L = 250;
	MOVLW      250
	MOVWF      CCPR2L+0
;MyProject.c,24 :: 		}                //go front
	GOTO       L_main3
L_main2:
;MyProject.c,26 :: 		else if(PORTB = 0b01110111){
	MOVLW      119
	MOVWF      PORTB+0
	MOVF       PORTB+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main4
;MyProject.c,27 :: 		PORTD = 0b00000000;
	CLRF       PORTD+0
;MyProject.c,28 :: 		}
L_main4:
L_main3:
;MyProject.c,31 :: 		if(PORTB==0b01101111){
	MOVF       PORTB+0, 0
	XORLW      111
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;MyProject.c,32 :: 		PORTD = 0b01100000;
	MOVLW      96
	MOVWF      PORTD+0
;MyProject.c,33 :: 		CCPR1L = 200;
	MOVLW      200
	MOVWF      CCPR1L+0
;MyProject.c,34 :: 		CCPR2L = 250;
	MOVLW      250
	MOVWF      CCPR2L+0
;MyProject.c,35 :: 		}                  //soft left
L_main5:
;MyProject.c,37 :: 		if(PORTB==0b01111011){
	MOVF       PORTB+0, 0
	XORLW      123
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;MyProject.c,38 :: 		PORTD = 0b01100000;
	MOVLW      96
	MOVWF      PORTD+0
;MyProject.c,39 :: 		CCPR1L = 250;
	MOVLW      250
	MOVWF      CCPR1L+0
;MyProject.c,40 :: 		CCPR2L = 200;
	MOVLW      200
	MOVWF      CCPR2L+0
;MyProject.c,41 :: 		}                  //soft right
L_main6:
;MyProject.c,45 :: 		}
	GOTO       L_main0
;MyProject.c,49 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
