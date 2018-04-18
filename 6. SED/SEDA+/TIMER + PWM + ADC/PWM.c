void Init_PWM() {
	// POWER UP THE TIMER  AND SET IT UP AS A TIMER
	LPC_SC->PCONP |= (0x1<< 6);
	LPC_PWM1->CTCR &= ~ (3 << 0);

	// RESET AND DISABLE TIMER
	LPC_PWM1->TCR = 1 << 1;	
	
	// Configure the TIMER1 frecuency to 1 MHz
	LPC_SC->PCLKSEL0 &= ~ (3 << 12);		// Select PCLK /4 = 25 MHz 
	LPC_PWM1->PR = 24;						// Divides frecuency by 25
		
	// CONFIGURE EXTERNAL PINS 
	LPC_PINCON->PINSEL4 |= (1<<2); // set GPIOs for PWM1.2  on PWM P3.25
	LPC_PINCON->PINSEL4 |= (1<<4); // set GPIOs for PWM1.3  on PWM P3.26
	
	// Configure MATCH Registers	
	LPC_PWM1->MCR |= (1 << 1);	 // TC reset on MATCH0
	
	LPC_PWM1->MR0 = PERIOD_PWM;	// Sets the period (frecuency = 1/period) of the signal
	LPC_PWM1->MR2 = PERIOD_PWM/2; // Sets PWM2 to a duty cycle of 50%
	LPC_PWM1->MR3 = PERIOD_PWM/3; // Sets PWM2 to a duty cycle of 33%	
	
	LPC_PWM1->LER |= (1<<0) | (1<< 2)| (1<< 3); // PWM 0,2 and 3 latch enabled 
	
	// Configure and Enable PWM outputs  
	LPC_PWM1->PCR |= (1 << 10)| (1 << 11);  // Enable PWM2 and PWM3 signals
	LPC_PWM1->PCR &=~((1 << 2)| (1 << 3));  // PWM2 and PWM3 are single edged
	
	// Config PWM1 interrupt in NVIC (in this example we wont use it)
	NVIC_SetPriority(PWM1_IRQn, 0x01);
  	NVIC_EnableIRQ(PWM1_IRQn);	
  	
  	// Enable PWM (Starts Counting) and PWM function
	LPC_PWM1->TCR = (1<<0) | (1<<3); /* counter enable, PWM enable */
	

}

//Function that stablishes frecuency and duty cycle of PWM2
// Frecuency: 1-1000000     duty: 0 - 100 %
void PWM2_Set( uint32_t frecuency, uint32_t duty ) {
	LPC_PWM1->MR0 = 1000000/frecuency;	
	LPC_PWM1->MR2 = (duty*LPC_PWM1->MR0)/100;	
	LPC_PWM1->LER |=(1<<0)|(1<<2);
} 





