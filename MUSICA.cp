#line 1 "C:/Users/vema3/OneDrive/Documents/DIGITAL2/MUSICA.c"
#line 21 "C:/Users/vema3/OneDrive/Documents/DIGITAL2/MUSICA.c"
void setup(){
 ANSEL=0;
 ANSELH= 0;

 TRISA=0x0C;
 TRISB=0xFF;
 TRISC=0x00;
 TRISD=0x00;

 PORTA=0;
 PORTB=0xFF;
 PORTC=0;
 PORTD=0;
 Sound_Init(&PORTA, 0);

 GIE_bit=1;
 NOT_RBPU_bit=0;
 RBIE_bit=1;
 RBIF_bit=0;
 IOCB=0xFF;
 WPUB=0xFF;
}


void do_1(){
Sound_play(523, 250);
}
void re_1(){
Sound_play(587, 250);
}
void mi_1(){
Sound_play(660, 250);
}
void fa_1(){
Sound_play(698, 250);
}
void sol_1(){
Sound_play(783, 250);
}
void la_1(){
Sound_play(880, 250);
}
void sib_1(){
Sound_play(932, 250);
}
void si_1(){
Sound_play(988, 250);
}


void do_2(){
Sound_play(1046, 250);
}
void re_2(){
Sound_play(1174, 250);
}
void mi_2(){
Sound_play(1318, 250);
}
void fa_2(){
Sound_play(1396, 250);
}
void sol_2(){
Sound_play(1568, 250);
}
void la_2(){
Sound_play(1760, 250);
}
void sib_2(){
Sound_play(1864, 250);
}
void si_2(){
Sound_play(1975, 250);
}


void cumple(){
 Sound_play( 523 ,375);
 Sound_play( 523 ,125);
 Sound_play( 587 ,500);
 Sound_play( 523 ,500);
 Sound_play( 698 ,500);
 Sound_play( 659 ,1000);
 Sound_play( 523 ,375);
 Sound_play( 523 ,125);
 Sound_play( 587 ,500);
 Sound_play( 523 ,500);
 Sound_play( 783 ,500);

 Sound_play( 698 ,1000);
 Sound_play( 523 ,375);
 Sound_play( 523 ,125);
 Sound_play( 1046 ,500);
 Sound_play( 880 ,500);
 Sound_play( 698 ,500);
 Sound_play( 659 ,500);
 Sound_play( 587 ,500);
 Sound_play(932,375);
 Sound_play(932,125);
 Sound_play( 880 ,500);
 Sound_play( 698 ,500);
 Sound_play( 783 ,500);
 Sound_play( 698 ,1000);
}
void star_wars(){
 Sound_play( 523 ,500);
 Sound_play( 783 ,500);
 Sound_play( 698 ,125);
 Sound_play( 659 ,125);
 Sound_play( 587 ,125);
 Sound_play( 1046 ,500);
 Sound_play( 783 ,250);
 Sound_play( 698 ,125);
 Sound_play( 659 ,125);
 Sound_play( 587 ,125);
 Sound_play( 1046 ,500);
 Sound_play( 783 ,250);
 Sound_play( 698 ,125);
 Sound_play( 659 ,125);
 Sound_play( 698 ,125);
 Sound_play( 587 ,500);
 delay_ms(125);

 Sound_play( 523 ,500);
 Sound_play( 783 ,500);
 Sound_play( 698 ,125);
 Sound_play( 659 ,125);
 Sound_play( 587 ,125);
 Sound_play( 1046 ,500);
 Sound_play( 783 ,250);
 Sound_play( 698 ,125);
 Sound_play( 659 ,125);
 Sound_play( 587 ,125);
 Sound_play( 1046 ,500);
 Sound_play( 783 ,250);
 Sound_play( 698 ,125);
 Sound_play( 659 ,125);
 Sound_play( 698 ,125);
 Sound_play( 587 ,500);
 delay_ms(125);
}
void navidad(){
 Sound_play( 659 ,500);
 Sound_play(1318,500);
 Sound_play(1174,250);
 Sound_play( 1046 ,250);
 Sound_play( 987 ,250);
 Sound_play( 880 ,250);
 Sound_play( 783 ,500);
 Sound_play( 783 ,500);
 Sound_play( 783 ,500);
 delay_ms(250);
 Sound_play( 783 ,250);

 Sound_play( 659 ,500);
 Sound_play( 1046 ,500);
 Sound_play( 987 ,250);
 Sound_play( 880 ,250);
 Sound_play( 783 ,250);
 Sound_play( 698 ,250);
 Sound_play( 659 ,1500);
 delay_ms(250);
 Sound_play( 587 ,250);

 Sound_play( 659 ,500);
 Sound_play( 587 ,250);
 Sound_play( 659 ,250);
 Sound_play( 698 ,500);
 Sound_play( 659 ,250);
 Sound_play( 698 ,250);

 Sound_play( 783 ,500);
 Sound_play(932,250);
 Sound_play( 1046 ,250);
 Sound_play(1174,500);
 Sound_play(1244,250);
 Sound_play( 1046 ,250);

 Sound_play(932,500);
 Sound_play( 659 ,500);
 Sound_play( 698 ,500);
 Sound_play( 659 ,500);
}

void main() {
 setup();
 do{
 PORTC=0;
 PORTD=0;
 if(RA2_bit==0){
 if(RA3_bit==0){
 if (RB0_bit==0){
 RC4_bit=1;
 do_1();
 }
 if (RB1_bit==0){
 RC5_bit=1;
 re_1();
 }
 if (RB2_bit==0){
 RC6_bit=1;
 mi_1();
 }
 if (RB3_bit==0){
 RC7_bit=1;
 fa_1();
 }
 if (RB4_bit==0){
 RD4_bit=1;
 sol_1();
 }
 if (RB5_bit==0){
 RD5_bit=1;
 la_1();
 }
 if (RB6_bit==0){
 RD6_bit=1;
 sib_1();
 }
 if (RB7_bit==0){
 RD7_bit=1;
 si_1();
 }
 }

 if(RA3_bit==1){
 if (RB0_bit==0){
 RC4_bit=1;
 do_2();
 }
 if (RB1_bit==0){
 RC5_bit=1;
 re_2();
 }
 if (RB2_bit==0){
 RC6_bit=1;
 mi_2();
 }
 if (RB3_bit==0){
 RC7_bit=1;
 fa_2();
 }
 if (RB4_bit==0){
 RD4_bit=1;
 sol_2();
 }
 if (RB5_bit==0){
 RD5_bit=1;
 la_2();
 }
 if (RB6_bit==0){
 RD6_bit=1;
 sib_2();
 }
 if (RB7_bit==0){
 RD7_bit=1;
 si_2();
 }
 }
 }
 else if(RA2_bit==1){
 if (RB0_bit==0){
 cumple();
 }
 if (RB1_bit==0){
 star_wars();
 }
 if (RB2_bit==0){
 navidad();
 }
 }
 }
 while(1);
}
