   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 61 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  42                     ; 62 {
  43                     	switch	.text
  44  0000               f_TRAP_IRQHandler:
  48                     ; 66 }
  51  0000 80            	iret
  73                     ; 73 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  73                     ; 74 
  73                     ; 75 {
  74                     	switch	.text
  75  0001               f_TLI_IRQHandler:
  79                     ; 79 }
  82  0001 80            	iret
 104                     ; 86 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 104                     ; 87 {
 105                     	switch	.text
 106  0002               f_AWU_IRQHandler:
 110                     ; 91 }
 113  0002 80            	iret
 135                     ; 98 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 135                     ; 99 {
 136                     	switch	.text
 137  0003               f_CLK_IRQHandler:
 141                     ; 103 }
 144  0003 80            	iret
 167                     ; 110 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 167                     ; 111 {
 168                     	switch	.text
 169  0004               f_EXTI_PORTA_IRQHandler:
 173                     ; 115 }
 176  0004 80            	iret
 199                     ; 122 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 199                     ; 123 {
 200                     	switch	.text
 201  0005               f_EXTI_PORTB_IRQHandler:
 205                     ; 127 }
 208  0005 80            	iret
 231                     ; 134 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 231                     ; 135 {
 232                     	switch	.text
 233  0006               f_EXTI_PORTC_IRQHandler:
 237                     ; 139 }
 240  0006 80            	iret
 263                     ; 147 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 263                     ; 148 {
 264                     	switch	.text
 265  0007               f_EXTI_PORTD_IRQHandler:
 269                     ; 153 }
 272  0007 80            	iret
 295                     ; 160 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 295                     ; 161 {
 296                     	switch	.text
 297  0008               f_EXTI_PORTE_IRQHandler:
 301                     ; 165 }
 304  0008 80            	iret
 326                     ; 212 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 326                     ; 213 {
 327                     	switch	.text
 328  0009               f_SPI_IRQHandler:
 332                     ; 217 }
 335  0009 80            	iret
 358                     ; 225 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 358                     ; 226 {
 359                     	switch	.text
 360  000a               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 364                     ; 231 }
 367  000a 80            	iret
 390                     ; 238 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 390                     ; 239 {
 391                     	switch	.text
 392  000b               f_TIM1_CAP_COM_IRQHandler:
 396                     ; 243 }
 399  000b 80            	iret
 422                     ; 276  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 422                     ; 277  {
 423                     	switch	.text
 424  000c               f_TIM2_UPD_OVF_BRK_IRQHandler:
 428                     ; 281  }
 431  000c 80            	iret
 454                     ; 288  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 454                     ; 289  {
 455                     	switch	.text
 456  000d               f_TIM2_CAP_COM_IRQHandler:
 460                     ; 293  }
 463  000d 80            	iret
 486                     ; 303  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 486                     ; 304  {
 487                     	switch	.text
 488  000e               f_TIM3_UPD_OVF_BRK_IRQHandler:
 492                     ; 308  }
 495  000e 80            	iret
 518                     ; 315  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 518                     ; 316  {
 519                     	switch	.text
 520  000f               f_TIM3_CAP_COM_IRQHandler:
 524                     ; 320  }
 527  000f 80            	iret
 549                     ; 381 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 549                     ; 382 {
 550                     	switch	.text
 551  0010               f_I2C_IRQHandler:
 555                     ; 386 }
 558  0010 80            	iret
 581                     ; 394  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 581                     ; 395  {
 582                     	switch	.text
 583  0011               f_UART2_TX_IRQHandler:
 587                     ; 399  }
 590  0011 80            	iret
 613                     ; 406  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 613                     ; 407  {
 614                     	switch	.text
 615  0012               f_UART2_RX_IRQHandler:
 619                     ; 411  }
 622  0012 80            	iret
 644                     ; 460  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 644                     ; 461  {
 645                     	switch	.text
 646  0013               f_ADC1_IRQHandler:
 650                     ; 465  }
 653  0013 80            	iret
 676                     ; 486  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 676                     ; 487  {
 677                     	switch	.text
 678  0014               f_TIM4_UPD_OVF_IRQHandler:
 682                     ; 491  }
 685  0014 80            	iret
 708                     ; 499 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 708                     ; 500 {
 709                     	switch	.text
 710  0015               f_EEPROM_EEC_IRQHandler:
 714                     ; 504 }
 717  0015 80            	iret
 729                     	xdef	f_EEPROM_EEC_IRQHandler
 730                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 731                     	xdef	f_ADC1_IRQHandler
 732                     	xdef	f_UART2_TX_IRQHandler
 733                     	xdef	f_UART2_RX_IRQHandler
 734                     	xdef	f_I2C_IRQHandler
 735                     	xdef	f_TIM3_CAP_COM_IRQHandler
 736                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 737                     	xdef	f_TIM2_CAP_COM_IRQHandler
 738                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 739                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 740                     	xdef	f_TIM1_CAP_COM_IRQHandler
 741                     	xdef	f_SPI_IRQHandler
 742                     	xdef	f_EXTI_PORTE_IRQHandler
 743                     	xdef	f_EXTI_PORTD_IRQHandler
 744                     	xdef	f_EXTI_PORTC_IRQHandler
 745                     	xdef	f_EXTI_PORTB_IRQHandler
 746                     	xdef	f_EXTI_PORTA_IRQHandler
 747                     	xdef	f_CLK_IRQHandler
 748                     	xdef	f_AWU_IRQHandler
 749                     	xdef	f_TLI_IRQHandler
 750                     	xdef	f_TRAP_IRQHandler
 769                     	end
