# Analog to Digital Conversion & Pulse Width Modulation
This experiment had four main objectives. 
The microcontroller used is the Freescale HCS12X

The first objective was to test the analog to digital converter using a potentiometer. This included connecting a potentiometer as well as two seven segment LEDs using VHDL. Analog information had to be collected at the potentiometer, sent through port T, converted to digital,  then through the FPGA board to an LED.  VHDL describes the conversion of raw numbers to readable hexadecimal on the LEDs. 

The next objective of this experiment was to test a servo motor with a function generator. Observing the movement of the motor along with the images on the oscilloscope painted a clear picture of what was happening to make the motor function. The function generator also provided an easy way to adjust the duty cycle and see how this affected motor movement. 

The third objective was to test the servo motor with the microcontroller’s PWM unit. This required the modification of data in Pulse Width Registers and was eventually crucial to getting proper movement of the motor.

The final objective to this experiment was to replace the potentiometer with a photodiode to detect ambient light. This was implemented first without a filtering algorithm, and then later an algorithm for filtering was added.  
