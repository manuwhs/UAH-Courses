void Init_TIMER0(void) {
	// POWER UP THE TIMER  AND SET IT UP AS A TIMER
	LPC_SC->PCONP |= (0x01<<2);
	LPC_TIM0->CTCR &= ~ (3 << 0);

	// RESET TIMER AND DISABLE TIMER
	LPC_TIM0->TCR = 1 << 1;		 

	// Configure the TIMER1 frecuency to 1 MHz
	LPC_SC->PCLKSEL0 &= ~ (3 << 4);		// Select PCLK /4 = 25 MHz 
	LPC_TIM0->PR = 24;		// Divides frecuency by 25 
	
	// CONFIGURE EXTERNAL PINS 
	LPC_PINCON->PINSEL3 |= (3 << 20);  // Select CAP0.0 (P1.26) pin for input.
	LPC_PINCON->PINSEL3 |= (3 << 24); // Select MAT0.0 (P1.28) pin for output match.

	// Configure MATCH Registers function and value
	LPC_TIM0->MCR |= (1 << 0);   // Interrupt on MATCH0
	LPC_TIM0->MCR |= (1 << 1);	 // TC reset on MATCH0
	
	LPC_TIM0->MR0 = LPC_TIM0->TC + 1000000;	 // Will generate an interrupt in 1 second
	
	// Configure Capture 
	LPC_TIM0->CCR |= (1 << 1); 	// Capture on falling edge and: LPC_TIM0->CR0 = TC
	LPC_TIM0->CCR |= (1 << 2); 	// Interrupt on capture
	
	// Configure MAT0.0
	LPC_TIM0->EMR &=~(0x31)				// Clear the MAT0.0 action on MATCH0
	LPC_TIM0->EMR |= (0x1)|(3 << 4); 	// MAT0.0 toggles on MATCH0
	
	// Config TIMER0 interrupt in NVIC 
  	NVIC_SetPriority(TIMER0_IRQn,0x01);
  	NVIC_EnableIRQ(TIMER0_IRQn);	

	// Enable TIMER0 (Starts Counting)
	LPC_TIM0->TCR = 1 << 0;
}

void TIMER0_IRQHandler(void) {
	// Check if MR0 match interrupt flag is active
	if (LPC_TIM0->IR & (1 << 0)) {	
	    LPC_TIM1->IR |= (1 << 0); /* Clear MR0 interrupt flag	*/			
		LPC_TIM1->MR0 += PERIOD_FUNCTION_us; 
		// LLamada a función a ejecutarse cada  PERIOD_FUNCTION_us microsegundos
	}
	
	// Check if CAP0 interrupt flag is active
	if (LPC_TIM3->IR & (1 << 4)){
    	
		if (LPC_TIM3->CCR & (1 << 0)){  // If Rising Edge in CAP0.0 detected
			// Set capture in CAP0.0 falling edge
		    LPC_TIM3->CCR &= ~(1 << 0); // CAP0RE = 0
		    LPC_TIM3->CCR |=  (1 << 1); // CAP0FE  = 1
			aux_time = LPC_TIM3->CR0;
         }

	     else {	  // If Falling Edge in CAP0.0 detected
			return_time = LPC_TIM3->CR0 - aux_time;
			// Set capture in CAP0.0 rising edge 			
		    LPC_TIM3->CCR |=  (1 << 0); // CAP0RE = 1
		    LPC_TIM3->CCR &= ~(1 << 1); // CAP0FE  = 0
    	}
 	 }	
		LPC_TIM3->IR |= (1 << 4); // Clear CAP0 interrupt flag	
}
		
		
