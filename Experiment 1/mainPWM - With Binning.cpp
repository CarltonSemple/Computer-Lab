#include <hidef.h>      /* common defines and macros */
#include "derivative.h"      /* derivative-specific definitions */

void main(void) 
{
	// Setup ---------------------------
     ATD0CTL1_SRES0= 0;	
     ATD0CTL1_SRES1= 0;
     ATD0CTL3_DJM= 1;		// right justification of data
     DDRT=0xFF;				// change Port T's direction to output
     PWME_PWME0=1;
     PWMPOL_PPOL0=1;
     PWMCLK_PCLK0=0; // select clock A
     PWMPRCLK_PCKA0=1;
     PWMPRCLK_PCKA1=1;
     PWMPRCLK_PCKA2=1;
     
    
    int counter=0;
    
	while(1)
	{
		int i=0;
		int temp;
		for(i=0; i<256; i++)
		{
			ATD0CTL5=0x00			 // Scan from 1 channel and perform a single conversion sequence
			 
			while(!ATD0STAT0_SCF){}  // Wait for the Sequence Complete Flag
			temp += ATD0DR0L;        // Add received data to running total
		}
			temp=temp/256;             // Get the average sampled value
			
			PTT=temp;                  // send to Port T, which goes to FPGA's 7-segment display
			
			// Scale, 0 to 255
			PWMDTY0=PTT/3 + 25;        // send scaled value to servo motor
			counter++;                        
		} 
}
