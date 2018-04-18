void Init_ADC(void) {
	// POWER UP THE ADC
	LPC_SC->PCONP |= (1 << 12) ; // Enable power to ADC
	
	// Set conversion frecuency to 5 MHz with the CLKDIV prescaler
	LPC_SC->PCLKSEL0 &= ~ ( (1 << 24) |(1 << 25) ) ; // Select CLK/4 = 25 MHz
	LPC_ADC->ADCR = ( 4 << 8 );  	// ADC prescaler CLKDIV set to 4 (+1) 	(CLKDIV)

	// Config GPIOs as Input ADC channels  (Same actions for any other pin)
	LPC_PINCON->PINSEL1 &= ~( 3 << 18);
	LPC_PINCON->PINSEL1 |= ( 1 << 18); // P0.25 is AD0.2 
	
	LPC_PINCON->PINMODE1 &= ~( 3 << 18);
	LPC_PINCON->PINMODE1 |= ( 2 << 18); // P0.25 no pull up/down 

	// Select AD0.2 pin channel to be converted	on normal mode
	LPC_ADC->ADCR &= ~ ( 1 << 16 );  // Normal mode  						(BURST)
	LPC_ADC->ADCR |= ( 1 << 2);  	// select AD0.2 pin to be converted 	(SEL)

	// Select the "Init Convertion" signal with START bits of ADCR
	LPC_ADC->ADCR |= ( 4 << 24 );	  // We are chosing the MAT0.1 signal   (START)
	LPC_ADC->ADCR &= ~ ( 1 << 27 );	  // On rising edge 					(EDGE)

    // Enable interrupt on convertion on any channel
	LPC_ADC->ADINTEN = ( 1 << 8); 		// Provoque interrupt whenever a conversion is done 

	// Config ADC interrupt in NVIC 	
	NVIC_SetPriority(ADC_IRQn,0x01); 	// Priority of the interrupt
  	NVIC_EnableIRQ(ADC_IRQn);		   // ADC interrupt enable 

	// Enable ADC (Because when we powet it up it's in low power mode)
	LPC_ADC->ADCR |=( 1 << 21); // enable ADC 								(PDN)
}

void ADC_IRQHandler(void) {
	uint32_t adgdr;
	uint16_t ADC_value:
	

	// Reads last converted value only if it is from channel 2 and changes to channel 3
	if ((LPC_ADC->ADSTAT >> 2)& 1){		// If DONE of channel 2 is 1
		adgdr = LPC_ADC->ADDR2;  				 // Read ADDR clears interrupt   
		ADC_value = (adgdr >> 4) & 0xFFF; // Store converted value 
		
		LPC_ADC->ADCR 	&= ~ ( 7 << 0); 
		LPC_ADC->ADCR |= ( 1 << 3); 	// Choose channel 3 to be converted next time
	}
	else if ((LPC_ADC->ADSTAT >> 3)& 1){		// If DONE of channel 2 is 1
		adgdr = LPC_ADC->ADDR2;  				 // Read ADDR clears interrupt   
		ADC_value = (adgdr >> 4) & 0xFFF; // Store converted value 
		
		LPC_ADC->ADCR 	&= ~ ( 7 << 0); 
		LPC_ADC->ADCR |= ( 1 << 2); 	// Choose channel 2 to be converted next time
	}
	else {
		// Reads last converted value in the global register	
		adgdr = LPC_ADC->ADGDR;  					// Read ADGR clears interrupt   
		ADC_value = (adgdr >> 4) & 0xFFF; // Store converted value 

	}
	
}


