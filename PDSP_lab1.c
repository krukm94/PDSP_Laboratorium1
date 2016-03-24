//Sine8_LED.c  Sine generation with DIP switch control

#include "dsk6713_aic23.h"  			//support file for codec,DSK
#include "C6713dskinit.h"
#include "dsk6713/include/dsk6713.h"
#include "dsk6713/include/dsk6713_dip.h"
#include "dsk6713/include/dsk6713_led.h"
#include <stdio.h>

Uint32 fs = DSK6713_AIC23_FREQ_8KHZ;//set sampling rate
short	loop = 0;         			  	//table index
short gain = 10;							//gain factor
short sine_table[8]={0,707,1000,707,0,-707,-1000,-707};//sine values


union {Uint32 combo; short channel[2];} AIC23_data;


interrupt void c_int11() //interrupt service routine
{
AIC23_data.combo = input_sample(); //input 32-bit sample
// output_left_sample(AIC23_data.channel[LEFT]); //I/O left channels
output_sample(AIC23_data.combo); //I/O left an rigrt channels
return;
}


void main()
{
	printf("LabPDSP1\n");
	printf("Wersja systemu: %d\n", DSK6713_getVersion());
 comm_poll();               			//init DSK,codec,McBSP
 DSK6713_LED_init();						//init LED from BSL
 DSK6713_DIP_init();						//init DIP from BSL
 while(1) 				 					//infinite loop
 {
  if(DSK6713_DIP_get(0)==0) 			//=0 if DIP switch #0 pressed
  {
	DSK6713_LED_on(0);	   			//turn LED #0 ON
    output_sample(sine_table[loop]*gain);//output for on-time sec
    if (loop < 7) ++loop;   			//check for end of table
    else loop = 0;		    			//reinit loop index
  }
  else DSK6713_LED_off(0); 			//turn LED off if not pressed
 }                                   //end of while (1) infinite loop
}


