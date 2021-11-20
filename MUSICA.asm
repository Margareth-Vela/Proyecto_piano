
_setup:

;MUSICA.c,21 :: 		void setup(){
;MUSICA.c,22 :: 		ANSEL=0;
	CLRF       ANSEL+0
;MUSICA.c,23 :: 		ANSELH= 0; //desactivo entradas y salidas analogicas y solo permito digitaes
	CLRF       ANSELH+0
;MUSICA.c,25 :: 		TRISA=0x0C;              //todo el puerto A como entrada
	MOVLW      12
	MOVWF      TRISA+0
;MUSICA.c,26 :: 		TRISB=0xFF;
	MOVLW      255
	MOVWF      TRISB+0
;MUSICA.c,27 :: 		TRISC=0x00;
	CLRF       TRISC+0
;MUSICA.c,28 :: 		TRISD=0x00;
	CLRF       TRISD+0
;MUSICA.c,30 :: 		PORTA=0;             //el puerto A inicializa apagado
	CLRF       PORTA+0
;MUSICA.c,31 :: 		PORTB=0xFF;
	MOVLW      255
	MOVWF      PORTB+0
;MUSICA.c,32 :: 		PORTC=0;
	CLRF       PORTC+0
;MUSICA.c,33 :: 		PORTD=0;
	CLRF       PORTD+0
;MUSICA.c,34 :: 		Sound_Init(&PORTA, 0);  //se inicializan los sonidos en el puerto D y el pin 1 es decir RD1
	MOVLW      PORTA+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;MUSICA.c,36 :: 		GIE_bit=1;                  //Interrupciones habilitadas.
	BSF        GIE_bit+0, BitPos(GIE_bit+0)
;MUSICA.c,37 :: 		NOT_RBPU_bit=0;             //Pull ups habilitados.
	BCF        NOT_RBPU_bit+0, BitPos(NOT_RBPU_bit+0)
;MUSICA.c,38 :: 		RBIE_bit=1;
	BSF        RBIE_bit+0, BitPos(RBIE_bit+0)
;MUSICA.c,39 :: 		RBIF_bit=0;
	BCF        RBIF_bit+0, BitPos(RBIF_bit+0)
;MUSICA.c,40 :: 		IOCB=0xFF;
	MOVLW      255
	MOVWF      IOCB+0
;MUSICA.c,41 :: 		WPUB=0xFF;
	MOVLW      255
	MOVWF      WPUB+0
;MUSICA.c,42 :: 		}
L_end_setup:
	RETURN
; end of _setup

_do_1:

;MUSICA.c,45 :: 		void do_1(){               //se le asigna el nombre de do0 a lo que este adentro
;MUSICA.c,46 :: 		Sound_play(523, 250);    //se coloca una frecuencia de 1khz y 500ms para que este activo
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,47 :: 		}
L_end_do_1:
	RETURN
; end of _do_1

_re_1:

;MUSICA.c,48 :: 		void re_1(){               //se le asigna el nombre de do1 a lo que este adentro
;MUSICA.c,49 :: 		Sound_play(587, 250);     //se coloca una frecuencia de 1059hz y 500ms para que este activo
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,50 :: 		}                          // y asi para los demas
L_end_re_1:
	RETURN
; end of _re_1

_mi_1:

;MUSICA.c,51 :: 		void mi_1(){
;MUSICA.c,52 :: 		Sound_play(660, 250);
	MOVLW      148
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,53 :: 		}
L_end_mi_1:
	RETURN
; end of _mi_1

_fa_1:

;MUSICA.c,54 :: 		void fa_1(){
;MUSICA.c,55 :: 		Sound_play(698, 250);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,56 :: 		}
L_end_fa_1:
	RETURN
; end of _fa_1

_sol_1:

;MUSICA.c,57 :: 		void sol_1(){
;MUSICA.c,58 :: 		Sound_play(783, 250);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,59 :: 		}
L_end_sol_1:
	RETURN
; end of _sol_1

_la_1:

;MUSICA.c,60 :: 		void la_1(){
;MUSICA.c,61 :: 		Sound_play(880, 250);
	MOVLW      112
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,62 :: 		}
L_end_la_1:
	RETURN
; end of _la_1

_sib_1:

;MUSICA.c,63 :: 		void sib_1(){
;MUSICA.c,64 :: 		Sound_play(932, 250);
	MOVLW      164
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,65 :: 		}
L_end_sib_1:
	RETURN
; end of _sib_1

_si_1:

;MUSICA.c,66 :: 		void si_1(){
;MUSICA.c,67 :: 		Sound_play(988, 250);
	MOVLW      220
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,68 :: 		}
L_end_si_1:
	RETURN
; end of _si_1

_do_2:

;MUSICA.c,71 :: 		void do_2(){               //se le asigna el nombre de do0 a lo que este adentro
;MUSICA.c,72 :: 		Sound_play(1046, 250);    //se coloca una frecuencia de 1khz y 500ms para que este activo
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,73 :: 		}
L_end_do_2:
	RETURN
; end of _do_2

_re_2:

;MUSICA.c,74 :: 		void re_2(){               //se le asigna el nombre de do1 a lo que este adentro
;MUSICA.c,75 :: 		Sound_play(1174, 250);     //se coloca una frecuencia de 1059hz y 500ms para que este activo
	MOVLW      150
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,76 :: 		}                          // y asi para los demas
L_end_re_2:
	RETURN
; end of _re_2

_mi_2:

;MUSICA.c,77 :: 		void mi_2(){
;MUSICA.c,78 :: 		Sound_play(1318, 250);
	MOVLW      38
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,79 :: 		}
L_end_mi_2:
	RETURN
; end of _mi_2

_fa_2:

;MUSICA.c,80 :: 		void fa_2(){
;MUSICA.c,81 :: 		Sound_play(1396, 250);
	MOVLW      116
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,82 :: 		}
L_end_fa_2:
	RETURN
; end of _fa_2

_sol_2:

;MUSICA.c,83 :: 		void sol_2(){
;MUSICA.c,84 :: 		Sound_play(1568, 250);
	MOVLW      32
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      6
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,85 :: 		}
L_end_sol_2:
	RETURN
; end of _sol_2

_la_2:

;MUSICA.c,86 :: 		void la_2(){
;MUSICA.c,87 :: 		Sound_play(1760, 250);
	MOVLW      224
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      6
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,88 :: 		}
L_end_la_2:
	RETURN
; end of _la_2

_sib_2:

;MUSICA.c,89 :: 		void sib_2(){
;MUSICA.c,90 :: 		Sound_play(1864, 250);
	MOVLW      72
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,91 :: 		}
L_end_sib_2:
	RETURN
; end of _sib_2

_si_2:

;MUSICA.c,92 :: 		void si_2(){
;MUSICA.c,93 :: 		Sound_play(1975, 250);
	MOVLW      183
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      7
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,94 :: 		}
L_end_si_2:
	RETURN
; end of _si_2

_cumple:

;MUSICA.c,97 :: 		void cumple(){
;MUSICA.c,98 :: 		Sound_play(do_0,375);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      119
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,99 :: 		Sound_play(do_0,125);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,100 :: 		Sound_play(re,500);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,101 :: 		Sound_play(do_0,500);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,102 :: 		Sound_play(fa,500);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,103 :: 		Sound_play(mi,1000);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,104 :: 		Sound_play(do_0,375);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      119
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,105 :: 		Sound_play(do_0,125);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,106 :: 		Sound_play(re,500);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,107 :: 		Sound_play(do_0,500);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,108 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,110 :: 		Sound_play(fa,1000);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,111 :: 		Sound_play(do_0,375);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      119
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,112 :: 		Sound_play(do_0,125);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,113 :: 		Sound_play(do8,500);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,114 :: 		Sound_play(la,500);
	MOVLW      112
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,115 :: 		Sound_play(fa,500);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,116 :: 		Sound_play(mi,500);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,117 :: 		Sound_play(re,500);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,118 :: 		Sound_play(932,375);
	MOVLW      164
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      119
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,119 :: 		Sound_play(932,125);
	MOVLW      164
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,120 :: 		Sound_play(la,500);
	MOVLW      112
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,121 :: 		Sound_play(fa,500);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,122 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,123 :: 		Sound_play(fa,1000);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      232
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,124 :: 		}
L_end_cumple:
	RETURN
; end of _cumple

_star_wars:

;MUSICA.c,125 :: 		void star_wars(){
;MUSICA.c,126 :: 		Sound_play(do_0,500);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,127 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,128 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,129 :: 		Sound_play(mi,125);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,130 :: 		Sound_play(re,125);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,131 :: 		Sound_play(do8,500);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,132 :: 		Sound_play(sol,250);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,133 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,134 :: 		Sound_play(mi,125);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,135 :: 		Sound_play(re,125);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,136 :: 		Sound_play(do8,500);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,137 :: 		Sound_play(sol,250);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,138 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,139 :: 		Sound_play(mi,125);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,140 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,141 :: 		Sound_play(re,500);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,142 :: 		delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_star_wars0:
	DECFSZ     R13+0, 1
	GOTO       L_star_wars0
	DECFSZ     R12+0, 1
	GOTO       L_star_wars0
	DECFSZ     R11+0, 1
	GOTO       L_star_wars0
	NOP
	NOP
;MUSICA.c,144 :: 		Sound_play(do_0,500);
	MOVLW      11
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,145 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,146 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,147 :: 		Sound_play(mi,125);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,148 :: 		Sound_play(re,125);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,149 :: 		Sound_play(do8,500);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,150 :: 		Sound_play(sol,250);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,151 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,152 :: 		Sound_play(mi,125);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,153 :: 		Sound_play(re,125);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,154 :: 		Sound_play(do8,500);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,155 :: 		Sound_play(sol,250);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,156 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,157 :: 		Sound_play(mi,125);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,158 :: 		Sound_play(fa,125);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      125
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,159 :: 		Sound_play(re,500);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,160 :: 		delay_ms(125);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      69
	MOVWF      R12+0
	MOVLW      169
	MOVWF      R13+0
L_star_wars1:
	DECFSZ     R13+0, 1
	GOTO       L_star_wars1
	DECFSZ     R12+0, 1
	GOTO       L_star_wars1
	DECFSZ     R11+0, 1
	GOTO       L_star_wars1
	NOP
	NOP
;MUSICA.c,161 :: 		}
L_end_star_wars:
	RETURN
; end of _star_wars

_navidad:

;MUSICA.c,162 :: 		void navidad(){
;MUSICA.c,163 :: 		Sound_play(mi,500);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,164 :: 		Sound_play(1318,500);
	MOVLW      38
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,165 :: 		Sound_play(1174,250);
	MOVLW      150
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,166 :: 		Sound_play(do8,250);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,167 :: 		Sound_play(si,250);
	MOVLW      219
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,168 :: 		Sound_play(la,250);
	MOVLW      112
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,169 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,170 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,171 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,172 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_navidad2:
	DECFSZ     R13+0, 1
	GOTO       L_navidad2
	DECFSZ     R12+0, 1
	GOTO       L_navidad2
	DECFSZ     R11+0, 1
	GOTO       L_navidad2
	NOP
	NOP
;MUSICA.c,173 :: 		Sound_play(sol,250);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,175 :: 		Sound_play(mi,500);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,176 :: 		Sound_play(do8,500);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,177 :: 		Sound_play(si,250);
	MOVLW      219
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,178 :: 		Sound_play(la,250);
	MOVLW      112
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,179 :: 		Sound_play(sol,250);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,180 :: 		Sound_play(fa,250);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,181 :: 		Sound_play(mi,1500);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      220
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      5
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,182 :: 		delay_ms(250);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_navidad3:
	DECFSZ     R13+0, 1
	GOTO       L_navidad3
	DECFSZ     R12+0, 1
	GOTO       L_navidad3
	DECFSZ     R11+0, 1
	GOTO       L_navidad3
	NOP
	NOP
;MUSICA.c,183 :: 		Sound_play(re,250);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,185 :: 		Sound_play(mi,500);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,186 :: 		Sound_play(re,250);
	MOVLW      75
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,187 :: 		Sound_play(mi,250);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,188 :: 		Sound_play(fa,500);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,189 :: 		Sound_play(mi,250);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,190 :: 		Sound_play(fa,250);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,192 :: 		Sound_play(sol,500);
	MOVLW      15
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,193 :: 		Sound_play(932,250);
	MOVLW      164
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,194 :: 		Sound_play(do8,250);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,195 :: 		Sound_play(1174,500);
	MOVLW      150
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,196 :: 		Sound_play(1244,250);
	MOVLW      220
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,197 :: 		Sound_play(do8,250);
	MOVLW      22
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      4
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      250
	MOVWF      FARG_Sound_Play_duration_ms+0
	CLRF       FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,199 :: 		Sound_play(932,500);
	MOVLW      164
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      3
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,200 :: 		Sound_play(mi,500);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,201 :: 		Sound_play(fa,500);
	MOVLW      186
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,202 :: 		Sound_play(mi,500);
	MOVLW      147
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	MOVLW      2
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVLW      244
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVLW      1
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;MUSICA.c,203 :: 		}
L_end_navidad:
	RETURN
; end of _navidad

_main:

;MUSICA.c,205 :: 		void main() {          //funcion pricipal
;MUSICA.c,206 :: 		setup();
	CALL       _setup+0
;MUSICA.c,207 :: 		do{
L_main4:
;MUSICA.c,208 :: 		PORTC=0;
	CLRF       PORTC+0
;MUSICA.c,209 :: 		PORTD=0;
	CLRF       PORTD+0
;MUSICA.c,210 :: 		if(RA2_bit==0){
	BTFSC      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_main7
;MUSICA.c,211 :: 		if(RA3_bit==0){
	BTFSC      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_main8
;MUSICA.c,212 :: 		if (RB0_bit==0){
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main9
;MUSICA.c,213 :: 		RC4_bit=1;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
;MUSICA.c,214 :: 		do_1();
	CALL       _do_1+0
;MUSICA.c,215 :: 		}
L_main9:
;MUSICA.c,216 :: 		if (RB1_bit==0){
	BTFSC      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_main10
;MUSICA.c,217 :: 		RC5_bit=1;
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
;MUSICA.c,218 :: 		re_1();
	CALL       _re_1+0
;MUSICA.c,219 :: 		}
L_main10:
;MUSICA.c,220 :: 		if (RB2_bit==0){
	BTFSC      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_main11
;MUSICA.c,221 :: 		RC6_bit=1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
;MUSICA.c,222 :: 		mi_1();
	CALL       _mi_1+0
;MUSICA.c,223 :: 		}
L_main11:
;MUSICA.c,224 :: 		if (RB3_bit==0){
	BTFSC      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main12
;MUSICA.c,225 :: 		RC7_bit=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;MUSICA.c,226 :: 		fa_1();
	CALL       _fa_1+0
;MUSICA.c,227 :: 		}
L_main12:
;MUSICA.c,228 :: 		if (RB4_bit==0){
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_main13
;MUSICA.c,229 :: 		RD4_bit=1;
	BSF        RD4_bit+0, BitPos(RD4_bit+0)
;MUSICA.c,230 :: 		sol_1();
	CALL       _sol_1+0
;MUSICA.c,231 :: 		}
L_main13:
;MUSICA.c,232 :: 		if (RB5_bit==0){
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main14
;MUSICA.c,233 :: 		RD5_bit=1;
	BSF        RD5_bit+0, BitPos(RD5_bit+0)
;MUSICA.c,234 :: 		la_1();
	CALL       _la_1+0
;MUSICA.c,235 :: 		}
L_main14:
;MUSICA.c,236 :: 		if (RB6_bit==0){
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_main15
;MUSICA.c,237 :: 		RD6_bit=1;
	BSF        RD6_bit+0, BitPos(RD6_bit+0)
;MUSICA.c,238 :: 		sib_1();
	CALL       _sib_1+0
;MUSICA.c,239 :: 		}
L_main15:
;MUSICA.c,240 :: 		if (RB7_bit==0){
	BTFSC      RB7_bit+0, BitPos(RB7_bit+0)
	GOTO       L_main16
;MUSICA.c,241 :: 		RD7_bit=1;
	BSF        RD7_bit+0, BitPos(RD7_bit+0)
;MUSICA.c,242 :: 		si_1();
	CALL       _si_1+0
;MUSICA.c,243 :: 		}
L_main16:
;MUSICA.c,244 :: 		}
L_main8:
;MUSICA.c,246 :: 		if(RA3_bit==1){
	BTFSS      RA3_bit+0, BitPos(RA3_bit+0)
	GOTO       L_main17
;MUSICA.c,247 :: 		if (RB0_bit==0){
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main18
;MUSICA.c,248 :: 		RC4_bit=1;
	BSF        RC4_bit+0, BitPos(RC4_bit+0)
;MUSICA.c,249 :: 		do_2();
	CALL       _do_2+0
;MUSICA.c,250 :: 		}
L_main18:
;MUSICA.c,251 :: 		if (RB1_bit==0){
	BTFSC      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_main19
;MUSICA.c,252 :: 		RC5_bit=1;
	BSF        RC5_bit+0, BitPos(RC5_bit+0)
;MUSICA.c,253 :: 		re_2();
	CALL       _re_2+0
;MUSICA.c,254 :: 		}
L_main19:
;MUSICA.c,255 :: 		if (RB2_bit==0){
	BTFSC      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_main20
;MUSICA.c,256 :: 		RC6_bit=1;
	BSF        RC6_bit+0, BitPos(RC6_bit+0)
;MUSICA.c,257 :: 		mi_2();
	CALL       _mi_2+0
;MUSICA.c,258 :: 		}
L_main20:
;MUSICA.c,259 :: 		if (RB3_bit==0){
	BTFSC      RB3_bit+0, BitPos(RB3_bit+0)
	GOTO       L_main21
;MUSICA.c,260 :: 		RC7_bit=1;
	BSF        RC7_bit+0, BitPos(RC7_bit+0)
;MUSICA.c,261 :: 		fa_2();
	CALL       _fa_2+0
;MUSICA.c,262 :: 		}
L_main21:
;MUSICA.c,263 :: 		if (RB4_bit==0){
	BTFSC      RB4_bit+0, BitPos(RB4_bit+0)
	GOTO       L_main22
;MUSICA.c,264 :: 		RD4_bit=1;
	BSF        RD4_bit+0, BitPos(RD4_bit+0)
;MUSICA.c,265 :: 		sol_2();
	CALL       _sol_2+0
;MUSICA.c,266 :: 		}
L_main22:
;MUSICA.c,267 :: 		if (RB5_bit==0){
	BTFSC      RB5_bit+0, BitPos(RB5_bit+0)
	GOTO       L_main23
;MUSICA.c,268 :: 		RD5_bit=1;
	BSF        RD5_bit+0, BitPos(RD5_bit+0)
;MUSICA.c,269 :: 		la_2();
	CALL       _la_2+0
;MUSICA.c,270 :: 		}
L_main23:
;MUSICA.c,271 :: 		if (RB6_bit==0){
	BTFSC      RB6_bit+0, BitPos(RB6_bit+0)
	GOTO       L_main24
;MUSICA.c,272 :: 		RD6_bit=1;
	BSF        RD6_bit+0, BitPos(RD6_bit+0)
;MUSICA.c,273 :: 		sib_2();
	CALL       _sib_2+0
;MUSICA.c,274 :: 		}
L_main24:
;MUSICA.c,275 :: 		if (RB7_bit==0){
	BTFSC      RB7_bit+0, BitPos(RB7_bit+0)
	GOTO       L_main25
;MUSICA.c,276 :: 		RD7_bit=1;
	BSF        RD7_bit+0, BitPos(RD7_bit+0)
;MUSICA.c,277 :: 		si_2();
	CALL       _si_2+0
;MUSICA.c,278 :: 		}
L_main25:
;MUSICA.c,279 :: 		}
L_main17:
;MUSICA.c,280 :: 		}
	GOTO       L_main26
L_main7:
;MUSICA.c,281 :: 		else if(RA2_bit==1){
	BTFSS      RA2_bit+0, BitPos(RA2_bit+0)
	GOTO       L_main27
;MUSICA.c,282 :: 		if (RB0_bit==0){
	BTFSC      RB0_bit+0, BitPos(RB0_bit+0)
	GOTO       L_main28
;MUSICA.c,283 :: 		cumple();
	CALL       _cumple+0
;MUSICA.c,284 :: 		}
L_main28:
;MUSICA.c,285 :: 		if (RB1_bit==0){
	BTFSC      RB1_bit+0, BitPos(RB1_bit+0)
	GOTO       L_main29
;MUSICA.c,286 :: 		star_wars();
	CALL       _star_wars+0
;MUSICA.c,287 :: 		}
L_main29:
;MUSICA.c,288 :: 		if (RB2_bit==0){
	BTFSC      RB2_bit+0, BitPos(RB2_bit+0)
	GOTO       L_main30
;MUSICA.c,289 :: 		navidad();
	CALL       _navidad+0
;MUSICA.c,290 :: 		}
L_main30:
;MUSICA.c,291 :: 		}
L_main27:
L_main26:
;MUSICA.c,293 :: 		while(1);
	GOTO       L_main4
;MUSICA.c,294 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
