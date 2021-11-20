/*Autor: Margareth Vela
 *Dispositivo: PIC16F887
 *
 *Programa: PIANO ELECTRONICO
 *Hardware: PIC, LEDS, PUSH BUTTONS, SWITCHES
 *
 *Creado: Noviembre 07, 2021
 *Ultima modificacion: Noviembre, 2021
*/

#define do_0 523
#define re 587
#define mi 659
#define fa 698
#define sol 783
#define la 880
#define si 987
#define do8 1046

// Configurcion inicial
void setup(){
  ANSEL=0;
  ANSELH= 0; //desactivo entradas y salidas analogicas y solo permito digitaes

  TRISA=0x0C;              //todo el puerto A como entrada
  TRISB=0xFF;
  TRISC=0x00;
  TRISD=0x00;
  
  PORTA=0;             //el puerto A inicializa apagado
  PORTB=0xFF;
  PORTC=0;
  PORTD=0;
  Sound_Init(&PORTA, 0);  //se inicializan los sonidos en el puerto D y el pin 1 es decir RD1

  GIE_bit=1;                  //Interrupciones habilitadas.
  NOT_RBPU_bit=0;             //Pull ups habilitados.
  RBIE_bit=1;
  RBIF_bit=0;
  IOCB=0xFF;
  WPUB=0xFF;
}

//Subrutinas de notas musicales para primera escala
void do_1(){               //se le asigna el nombre de do0 a lo que este adentro
Sound_play(523, 250);    //se coloca una frecuencia de 1khz y 500ms para que este activo
}
void re_1(){               //se le asigna el nombre de do1 a lo que este adentro
Sound_play(587, 250);     //se coloca una frecuencia de 1059hz y 500ms para que este activo
}                          // y asi para los demas
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

//Subrutinas de notas musicales para segunda escala
void do_2(){               //se le asigna el nombre de do0 a lo que este adentro
Sound_play(1046, 250);    //se coloca una frecuencia de 1khz y 500ms para que este activo
}
void re_2(){               //se le asigna el nombre de do1 a lo que este adentro
Sound_play(1174, 250);     //se coloca una frecuencia de 1059hz y 500ms para que este activo
}                          // y asi para los demas
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

//Rutinas para modo automatico
void cumple(){
  Sound_play(do_0,375);
  Sound_play(do_0,125);
  Sound_play(re,500);
  Sound_play(do_0,500);
  Sound_play(fa,500);
  Sound_play(mi,1000);
  Sound_play(do_0,375);
  Sound_play(do_0,125);
  Sound_play(re,500);
  Sound_play(do_0,500);
  Sound_play(sol,500);
  
  Sound_play(fa,1000);
  Sound_play(do_0,375);
  Sound_play(do_0,125);
  Sound_play(do8,500);
  Sound_play(la,500);
  Sound_play(fa,500);
  Sound_play(mi,500);
  Sound_play(re,500);
  Sound_play(932,375);
  Sound_play(932,125);
  Sound_play(la,500);
  Sound_play(fa,500);
  Sound_play(sol,500);
  Sound_play(fa,1000);
}
void star_wars(){
  Sound_play(do_0,500);
  Sound_play(sol,500);
  Sound_play(fa,125);
  Sound_play(mi,125);
  Sound_play(re,125);
  Sound_play(do8,500);
  Sound_play(sol,250);
  Sound_play(fa,125);
  Sound_play(mi,125);
  Sound_play(re,125);
  Sound_play(do8,500);
  Sound_play(sol,250);
  Sound_play(fa,125);
  Sound_play(mi,125);
  Sound_play(fa,125);
  Sound_play(re,500);
  delay_ms(125);
  
  Sound_play(do_0,500);
  Sound_play(sol,500);
  Sound_play(fa,125);
  Sound_play(mi,125);
  Sound_play(re,125);
  Sound_play(do8,500);
  Sound_play(sol,250);
  Sound_play(fa,125);
  Sound_play(mi,125);
  Sound_play(re,125);
  Sound_play(do8,500);
  Sound_play(sol,250);
  Sound_play(fa,125);
  Sound_play(mi,125);
  Sound_play(fa,125);
  Sound_play(re,500);
  delay_ms(125);
}
void navidad(){
  Sound_play(mi,500);
  Sound_play(1318,500);
  Sound_play(1174,250);
  Sound_play(do8,250);
  Sound_play(si,250);
  Sound_play(la,250);
  Sound_play(sol,500);
  Sound_play(sol,500);
  Sound_play(sol,500);
  delay_ms(250);
  Sound_play(sol,250);

  Sound_play(mi,500);
  Sound_play(do8,500);
  Sound_play(si,250);
  Sound_play(la,250);
  Sound_play(sol,250);
  Sound_play(fa,250);
  Sound_play(mi,1500);
  delay_ms(250);
  Sound_play(re,250);
  
  Sound_play(mi,500);
  Sound_play(re,250);
  Sound_play(mi,250);
  Sound_play(fa,500);
  Sound_play(mi,250);
  Sound_play(fa,250);
  
  Sound_play(sol,500);
  Sound_play(932,250);
  Sound_play(do8,250);
  Sound_play(1174,500);
  Sound_play(1244,250);
  Sound_play(do8,250);
  
  Sound_play(932,500);
  Sound_play(mi,500);
  Sound_play(fa,500);
  Sound_play(mi,500);
}

void main() {          //funcion pricipal
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