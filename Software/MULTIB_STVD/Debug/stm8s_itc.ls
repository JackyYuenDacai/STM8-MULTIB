   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 50 uint8_t ITC_GetCPUCC(void)
  42                     ; 51 {
  44                     	switch	.text
  45  0000               _ITC_GetCPUCC:
  49                     ; 53   _asm("push cc");
  52  0000 8a            push cc
  54                     ; 54   _asm("pop a");
  57  0001 84            pop a
  59                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  62  0002 81            	ret
  85                     ; 80 void ITC_DeInit(void)
  85                     ; 81 {
  86                     	switch	.text
  87  0003               _ITC_DeInit:
  91                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  93  0003 35ff7f70      	mov	32624,#255
  94                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  96  0007 35ff7f71      	mov	32625,#255
  97                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
  99  000b 35ff7f72      	mov	32626,#255
 100                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 102  000f 35ff7f73      	mov	32627,#255
 103                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 105  0013 35ff7f74      	mov	32628,#255
 106                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 108  0017 35ff7f75      	mov	32629,#255
 109                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 111  001b 35ff7f76      	mov	32630,#255
 112                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 114  001f 35ff7f77      	mov	32631,#255
 115                     ; 90 }
 118  0023 81            	ret
 143                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 143                     ; 98 {
 144                     	switch	.text
 145  0024               _ITC_GetSoftIntStatus:
 149                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 151  0024 adda          	call	_ITC_GetCPUCC
 153  0026 a428          	and	a,#40
 156  0028 81            	ret
 406                     .const:	section	.text
 407  0000               L62:
 408  0000 0065          	dc.w	L14
 409  0002 0065          	dc.w	L14
 410  0004 0065          	dc.w	L14
 411  0006 0065          	dc.w	L14
 412  0008 006e          	dc.w	L34
 413  000a 006e          	dc.w	L34
 414  000c 006e          	dc.w	L34
 415  000e 006e          	dc.w	L34
 416  0010 00a2          	dc.w	L502
 417  0012 00a2          	dc.w	L502
 418  0014 0077          	dc.w	L54
 419  0016 0077          	dc.w	L54
 420  0018 0080          	dc.w	L74
 421  001a 0080          	dc.w	L74
 422  001c 0080          	dc.w	L74
 423  001e 0080          	dc.w	L74
 424  0020 0089          	dc.w	L15
 425  0022 00a2          	dc.w	L502
 426  0024 00a2          	dc.w	L502
 427  0026 0089          	dc.w	L15
 428  0028 0092          	dc.w	L35
 429  002a 0092          	dc.w	L35
 430  002c 0092          	dc.w	L35
 431  002e 0092          	dc.w	L35
 432  0030 009b          	dc.w	L55
 433                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 433                     ; 108 {
 434                     	switch	.text
 435  0029               _ITC_GetSoftwarePriority:
 437  0029 88            	push	a
 438  002a 89            	pushw	x
 439       00000002      OFST:	set	2
 442                     ; 109   uint8_t Value = 0;
 444  002b 0f02          	clr	(OFST+0,sp)
 445                     ; 110   uint8_t Mask = 0;
 447                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 449  002d a119          	cp	a,#25
 450  002f 2403          	jruge	L41
 451  0031 4f            	clr	a
 452  0032 2010          	jra	L61
 453  0034               L41:
 454  0034 ae0071        	ldw	x,#113
 455  0037 89            	pushw	x
 456  0038 ae0000        	ldw	x,#0
 457  003b 89            	pushw	x
 458  003c ae0064        	ldw	x,#L102
 459  003f cd0000        	call	_assert_failed
 461  0042 5b04          	addw	sp,#4
 462  0044               L61:
 463                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 465  0044 7b03          	ld	a,(OFST+1,sp)
 466  0046 a403          	and	a,#3
 467  0048 48            	sll	a
 468  0049 5f            	clrw	x
 469  004a 97            	ld	xl,a
 470  004b a603          	ld	a,#3
 471  004d 5d            	tnzw	x
 472  004e 2704          	jreq	L02
 473  0050               L22:
 474  0050 48            	sll	a
 475  0051 5a            	decw	x
 476  0052 26fc          	jrne	L22
 477  0054               L02:
 478  0054 6b01          	ld	(OFST-1,sp),a
 479                     ; 118   switch (IrqNum)
 481  0056 7b03          	ld	a,(OFST+1,sp)
 483                     ; 198   default:
 483                     ; 199     break;
 484  0058 a119          	cp	a,#25
 485  005a 2407          	jruge	L42
 486  005c 5f            	clrw	x
 487  005d 97            	ld	xl,a
 488  005e 58            	sllw	x
 489  005f de0000        	ldw	x,(L62,x)
 490  0062 fc            	jp	(x)
 491  0063               L42:
 492  0063 203d          	jra	L502
 493  0065               L14:
 494                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 494                     ; 121   case ITC_IRQ_AWU:
 494                     ; 122   case ITC_IRQ_CLK:
 494                     ; 123   case ITC_IRQ_PORTA:
 494                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 496  0065 c67f70        	ld	a,32624
 497  0068 1401          	and	a,(OFST-1,sp)
 498  006a 6b02          	ld	(OFST+0,sp),a
 499                     ; 125     break;
 501  006c 2034          	jra	L502
 502  006e               L34:
 503                     ; 127   case ITC_IRQ_PORTB:
 503                     ; 128   case ITC_IRQ_PORTC:
 503                     ; 129   case ITC_IRQ_PORTD:
 503                     ; 130   case ITC_IRQ_PORTE:
 503                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 505  006e c67f71        	ld	a,32625
 506  0071 1401          	and	a,(OFST-1,sp)
 507  0073 6b02          	ld	(OFST+0,sp),a
 508                     ; 132     break;
 510  0075 202b          	jra	L502
 511  0077               L54:
 512                     ; 141   case ITC_IRQ_SPI:
 512                     ; 142   case ITC_IRQ_TIM1_OVF:
 512                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 514  0077 c67f72        	ld	a,32626
 515  007a 1401          	and	a,(OFST-1,sp)
 516  007c 6b02          	ld	(OFST+0,sp),a
 517                     ; 144     break;
 519  007e 2022          	jra	L502
 520  0080               L74:
 521                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 521                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 521                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 521                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 521                     ; 150 #else
 521                     ; 151   case ITC_IRQ_TIM2_OVF:
 521                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 521                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 521                     ; 154   case ITC_IRQ_TIM3_OVF:
 521                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 523  0080 c67f73        	ld	a,32627
 524  0083 1401          	and	a,(OFST-1,sp)
 525  0085 6b02          	ld	(OFST+0,sp),a
 526                     ; 156     break;
 528  0087 2019          	jra	L502
 529  0089               L15:
 530                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 530                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 530                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 530                     ; 161   case ITC_IRQ_UART1_TX:
 530                     ; 162   case ITC_IRQ_UART1_RX:
 530                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 530                     ; 164 #if defined(STM8AF622x)
 530                     ; 165   case ITC_IRQ_UART4_TX:
 530                     ; 166   case ITC_IRQ_UART4_RX:
 530                     ; 167 #endif /*STM8AF622x */
 530                     ; 168   case ITC_IRQ_I2C:
 530                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 532  0089 c67f74        	ld	a,32628
 533  008c 1401          	and	a,(OFST-1,sp)
 534  008e 6b02          	ld	(OFST+0,sp),a
 535                     ; 170     break;
 537  0090 2010          	jra	L502
 538  0092               L35:
 539                     ; 173   case ITC_IRQ_UART2_TX:
 539                     ; 174   case ITC_IRQ_UART2_RX:
 539                     ; 175 #endif /*STM8S105 or STM8AF626x*/
 539                     ; 176 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 539                     ; 177     defined(STM8AF62Ax)
 539                     ; 178   case ITC_IRQ_UART3_TX:
 539                     ; 179   case ITC_IRQ_UART3_RX:
 539                     ; 180   case ITC_IRQ_ADC2:
 539                     ; 181 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 539                     ; 182 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 539                     ; 183     defined(STM8S903) || defined(STM8AF626x) || defined(STM8AF622x)
 539                     ; 184   case ITC_IRQ_ADC1:
 539                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 539                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 539                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 539                     ; 188 #else
 539                     ; 189   case ITC_IRQ_TIM4_OVF:
 539                     ; 190 #endif /*STM8S903 or STM8AF622x */
 539                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 541  0092 c67f75        	ld	a,32629
 542  0095 1401          	and	a,(OFST-1,sp)
 543  0097 6b02          	ld	(OFST+0,sp),a
 544                     ; 192     break;
 546  0099 2007          	jra	L502
 547  009b               L55:
 548                     ; 194   case ITC_IRQ_EEPROM_EEC:
 548                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 550  009b c67f76        	ld	a,32630
 551  009e 1401          	and	a,(OFST-1,sp)
 552  00a0 6b02          	ld	(OFST+0,sp),a
 553                     ; 196     break;
 555  00a2               L75:
 556                     ; 198   default:
 556                     ; 199     break;
 558  00a2               L502:
 559                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 561  00a2 7b03          	ld	a,(OFST+1,sp)
 562  00a4 a403          	and	a,#3
 563  00a6 48            	sll	a
 564  00a7 5f            	clrw	x
 565  00a8 97            	ld	xl,a
 566  00a9 7b02          	ld	a,(OFST+0,sp)
 567  00ab 5d            	tnzw	x
 568  00ac 2704          	jreq	L03
 569  00ae               L23:
 570  00ae 44            	srl	a
 571  00af 5a            	decw	x
 572  00b0 26fc          	jrne	L23
 573  00b2               L03:
 574  00b2 6b02          	ld	(OFST+0,sp),a
 575                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 577  00b4 7b02          	ld	a,(OFST+0,sp)
 580  00b6 5b03          	addw	sp,#3
 581  00b8 81            	ret
 647                     	switch	.const
 648  0032               L66:
 649  0032 014a          	dc.w	L702
 650  0034 014a          	dc.w	L702
 651  0036 014a          	dc.w	L702
 652  0038 014a          	dc.w	L702
 653  003a 015c          	dc.w	L112
 654  003c 015c          	dc.w	L112
 655  003e 015c          	dc.w	L112
 656  0040 015c          	dc.w	L112
 657  0042 01c6          	dc.w	L362
 658  0044 01c6          	dc.w	L362
 659  0046 016e          	dc.w	L312
 660  0048 016e          	dc.w	L312
 661  004a 0180          	dc.w	L512
 662  004c 0180          	dc.w	L512
 663  004e 0180          	dc.w	L512
 664  0050 0180          	dc.w	L512
 665  0052 0192          	dc.w	L712
 666  0054 01c6          	dc.w	L362
 667  0056 01c6          	dc.w	L362
 668  0058 0192          	dc.w	L712
 669  005a 01a4          	dc.w	L122
 670  005c 01a4          	dc.w	L122
 671  005e 01a4          	dc.w	L122
 672  0060 01a4          	dc.w	L122
 673  0062 01b6          	dc.w	L322
 674                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 674                     ; 221 {
 675                     	switch	.text
 676  00b9               _ITC_SetSoftwarePriority:
 678  00b9 89            	pushw	x
 679  00ba 89            	pushw	x
 680       00000002      OFST:	set	2
 683                     ; 222   uint8_t Mask = 0;
 685                     ; 223   uint8_t NewPriority = 0;
 687                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 689  00bb 9e            	ld	a,xh
 690  00bc a119          	cp	a,#25
 691  00be 2403          	jruge	L63
 692  00c0 4f            	clr	a
 693  00c1 2010          	jra	L04
 694  00c3               L63:
 695  00c3 ae00e2        	ldw	x,#226
 696  00c6 89            	pushw	x
 697  00c7 ae0000        	ldw	x,#0
 698  00ca 89            	pushw	x
 699  00cb ae0064        	ldw	x,#L102
 700  00ce cd0000        	call	_assert_failed
 702  00d1 5b04          	addw	sp,#4
 703  00d3               L04:
 704                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 706  00d3 7b04          	ld	a,(OFST+2,sp)
 707  00d5 a102          	cp	a,#2
 708  00d7 2710          	jreq	L44
 709  00d9 7b04          	ld	a,(OFST+2,sp)
 710  00db a101          	cp	a,#1
 711  00dd 270a          	jreq	L44
 712  00df 0d04          	tnz	(OFST+2,sp)
 713  00e1 2706          	jreq	L44
 714  00e3 7b04          	ld	a,(OFST+2,sp)
 715  00e5 a103          	cp	a,#3
 716  00e7 2603          	jrne	L24
 717  00e9               L44:
 718  00e9 4f            	clr	a
 719  00ea 2010          	jra	L64
 720  00ec               L24:
 721  00ec ae00e3        	ldw	x,#227
 722  00ef 89            	pushw	x
 723  00f0 ae0000        	ldw	x,#0
 724  00f3 89            	pushw	x
 725  00f4 ae0064        	ldw	x,#L102
 726  00f7 cd0000        	call	_assert_failed
 728  00fa 5b04          	addw	sp,#4
 729  00fc               L64:
 730                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 732  00fc cd0024        	call	_ITC_GetSoftIntStatus
 734  00ff a128          	cp	a,#40
 735  0101 2603          	jrne	L05
 736  0103 4f            	clr	a
 737  0104 2010          	jra	L25
 738  0106               L05:
 739  0106 ae00e6        	ldw	x,#230
 740  0109 89            	pushw	x
 741  010a ae0000        	ldw	x,#0
 742  010d 89            	pushw	x
 743  010e ae0064        	ldw	x,#L102
 744  0111 cd0000        	call	_assert_failed
 746  0114 5b04          	addw	sp,#4
 747  0116               L25:
 748                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 750  0116 7b03          	ld	a,(OFST+1,sp)
 751  0118 a403          	and	a,#3
 752  011a 48            	sll	a
 753  011b 5f            	clrw	x
 754  011c 97            	ld	xl,a
 755  011d a603          	ld	a,#3
 756  011f 5d            	tnzw	x
 757  0120 2704          	jreq	L45
 758  0122               L65:
 759  0122 48            	sll	a
 760  0123 5a            	decw	x
 761  0124 26fc          	jrne	L65
 762  0126               L45:
 763  0126 43            	cpl	a
 764  0127 6b01          	ld	(OFST-1,sp),a
 765                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 767  0129 7b03          	ld	a,(OFST+1,sp)
 768  012b a403          	and	a,#3
 769  012d 48            	sll	a
 770  012e 5f            	clrw	x
 771  012f 97            	ld	xl,a
 772  0130 7b04          	ld	a,(OFST+2,sp)
 773  0132 5d            	tnzw	x
 774  0133 2704          	jreq	L06
 775  0135               L26:
 776  0135 48            	sll	a
 777  0136 5a            	decw	x
 778  0137 26fc          	jrne	L26
 779  0139               L06:
 780  0139 6b02          	ld	(OFST+0,sp),a
 781                     ; 239   switch (IrqNum)
 783  013b 7b03          	ld	a,(OFST+1,sp)
 785                     ; 329   default:
 785                     ; 330     break;
 786  013d a119          	cp	a,#25
 787  013f 2407          	jruge	L46
 788  0141 5f            	clrw	x
 789  0142 97            	ld	xl,a
 790  0143 58            	sllw	x
 791  0144 de0032        	ldw	x,(L66,x)
 792  0147 fc            	jp	(x)
 793  0148               L46:
 794  0148 207c          	jra	L362
 795  014a               L702:
 796                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 796                     ; 242   case ITC_IRQ_AWU:
 796                     ; 243   case ITC_IRQ_CLK:
 796                     ; 244   case ITC_IRQ_PORTA:
 796                     ; 245     ITC->ISPR1 &= Mask;
 798  014a c67f70        	ld	a,32624
 799  014d 1401          	and	a,(OFST-1,sp)
 800  014f c77f70        	ld	32624,a
 801                     ; 246     ITC->ISPR1 |= NewPriority;
 803  0152 c67f70        	ld	a,32624
 804  0155 1a02          	or	a,(OFST+0,sp)
 805  0157 c77f70        	ld	32624,a
 806                     ; 247     break;
 808  015a 206a          	jra	L362
 809  015c               L112:
 810                     ; 249   case ITC_IRQ_PORTB:
 810                     ; 250   case ITC_IRQ_PORTC:
 810                     ; 251   case ITC_IRQ_PORTD:
 810                     ; 252   case ITC_IRQ_PORTE:
 810                     ; 253     ITC->ISPR2 &= Mask;
 812  015c c67f71        	ld	a,32625
 813  015f 1401          	and	a,(OFST-1,sp)
 814  0161 c77f71        	ld	32625,a
 815                     ; 254     ITC->ISPR2 |= NewPriority;
 817  0164 c67f71        	ld	a,32625
 818  0167 1a02          	or	a,(OFST+0,sp)
 819  0169 c77f71        	ld	32625,a
 820                     ; 255     break;
 822  016c 2058          	jra	L362
 823  016e               L312:
 824                     ; 264   case ITC_IRQ_SPI:
 824                     ; 265   case ITC_IRQ_TIM1_OVF:
 824                     ; 266     ITC->ISPR3 &= Mask;
 826  016e c67f72        	ld	a,32626
 827  0171 1401          	and	a,(OFST-1,sp)
 828  0173 c77f72        	ld	32626,a
 829                     ; 267     ITC->ISPR3 |= NewPriority;
 831  0176 c67f72        	ld	a,32626
 832  0179 1a02          	or	a,(OFST+0,sp)
 833  017b c77f72        	ld	32626,a
 834                     ; 268     break;
 836  017e 2046          	jra	L362
 837  0180               L512:
 838                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 838                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 838                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 838                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 838                     ; 274 #else
 838                     ; 275   case ITC_IRQ_TIM2_OVF:
 838                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 838                     ; 277 #endif /*STM8S903 or STM8AF622x */
 838                     ; 278   case ITC_IRQ_TIM3_OVF:
 838                     ; 279     ITC->ISPR4 &= Mask;
 840  0180 c67f73        	ld	a,32627
 841  0183 1401          	and	a,(OFST-1,sp)
 842  0185 c77f73        	ld	32627,a
 843                     ; 280     ITC->ISPR4 |= NewPriority;
 845  0188 c67f73        	ld	a,32627
 846  018b 1a02          	or	a,(OFST+0,sp)
 847  018d c77f73        	ld	32627,a
 848                     ; 281     break;
 850  0190 2034          	jra	L362
 851  0192               L712:
 852                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 852                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 852                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 852                     ; 286   case ITC_IRQ_UART1_TX:
 852                     ; 287   case ITC_IRQ_UART1_RX:
 852                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 852                     ; 289 #if defined(STM8AF622x)
 852                     ; 290   case ITC_IRQ_UART4_TX:
 852                     ; 291   case ITC_IRQ_UART4_RX:
 852                     ; 292 #endif /*STM8AF622x */
 852                     ; 293   case ITC_IRQ_I2C:
 852                     ; 294     ITC->ISPR5 &= Mask;
 854  0192 c67f74        	ld	a,32628
 855  0195 1401          	and	a,(OFST-1,sp)
 856  0197 c77f74        	ld	32628,a
 857                     ; 295     ITC->ISPR5 |= NewPriority;
 859  019a c67f74        	ld	a,32628
 860  019d 1a02          	or	a,(OFST+0,sp)
 861  019f c77f74        	ld	32628,a
 862                     ; 296     break;
 864  01a2 2022          	jra	L362
 865  01a4               L122:
 866                     ; 299   case ITC_IRQ_UART2_TX:
 866                     ; 300   case ITC_IRQ_UART2_RX:
 866                     ; 301 #endif /*STM8S105 or STM8AF626x */
 866                     ; 302     
 866                     ; 303 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 866                     ; 304     defined(STM8AF62Ax)
 866                     ; 305   case ITC_IRQ_UART3_TX:
 866                     ; 306   case ITC_IRQ_UART3_RX:
 866                     ; 307   case ITC_IRQ_ADC2:
 866                     ; 308 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 866                     ; 309     
 866                     ; 310 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 866                     ; 311     defined(STM8S903) || defined(STM8AF626x) || defined (STM8AF622x)
 866                     ; 312   case ITC_IRQ_ADC1:
 866                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 866                     ; 314     
 866                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 866                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 866                     ; 317 #else
 866                     ; 318   case ITC_IRQ_TIM4_OVF:
 866                     ; 319 #endif /* STM8S903 or STM8AF622x */
 866                     ; 320     ITC->ISPR6 &= Mask;
 868  01a4 c67f75        	ld	a,32629
 869  01a7 1401          	and	a,(OFST-1,sp)
 870  01a9 c77f75        	ld	32629,a
 871                     ; 321     ITC->ISPR6 |= NewPriority;
 873  01ac c67f75        	ld	a,32629
 874  01af 1a02          	or	a,(OFST+0,sp)
 875  01b1 c77f75        	ld	32629,a
 876                     ; 322     break;
 878  01b4 2010          	jra	L362
 879  01b6               L322:
 880                     ; 324   case ITC_IRQ_EEPROM_EEC:
 880                     ; 325     ITC->ISPR7 &= Mask;
 882  01b6 c67f76        	ld	a,32630
 883  01b9 1401          	and	a,(OFST-1,sp)
 884  01bb c77f76        	ld	32630,a
 885                     ; 326     ITC->ISPR7 |= NewPriority;
 887  01be c67f76        	ld	a,32630
 888  01c1 1a02          	or	a,(OFST+0,sp)
 889  01c3 c77f76        	ld	32630,a
 890                     ; 327     break;
 892  01c6               L522:
 893                     ; 329   default:
 893                     ; 330     break;
 895  01c6               L362:
 896                     ; 332 }
 899  01c6 5b04          	addw	sp,#4
 900  01c8 81            	ret
 913                     	xdef	_ITC_GetSoftwarePriority
 914                     	xdef	_ITC_SetSoftwarePriority
 915                     	xdef	_ITC_GetSoftIntStatus
 916                     	xdef	_ITC_DeInit
 917                     	xdef	_ITC_GetCPUCC
 918                     	xref	_assert_failed
 919                     	switch	.const
 920  0064               L102:
 921  0064 6c6962726172  	dc.b	"library\stm8s_itc."
 922  0076 6300          	dc.b	"c",0
 942                     	end
