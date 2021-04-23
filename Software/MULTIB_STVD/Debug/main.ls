   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  47                     ; 6 void Startup_CLOCK_Config(){
  49                     	switch	.text
  50  0000               _Startup_CLOCK_Config:
  54                     ; 7 	 CLK_DeInit();
  56  0000 cd0000        	call	_CLK_DeInit
  58                     ; 8 	 CLK_HSECmd(ENABLE);
  60  0003 a601          	ld	a,#1
  61  0005 cd0000        	call	_CLK_HSECmd
  63                     ; 9 	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV4);
  65  0008 a682          	ld	a,#130
  66  000a cd0000        	call	_CLK_SYSCLKConfig
  68                     ; 10 	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV4);
  70  000d a610          	ld	a,#16
  71  000f cd0000        	call	_CLK_HSIPrescalerConfig
  73                     ; 11 }
  76  0012 81            	ret
 103                     ; 12 void CLOCK_Config()  
 103                     ; 13 {  
 104                     	switch	.text
 105  0013               _CLOCK_Config:
 109                     ; 14    CLK_DeInit();
 111  0013 cd0000        	call	_CLK_DeInit
 113                     ; 15 	 CLK_HSECmd(ENABLE);
 115  0016 a601          	ld	a,#1
 116  0018 cd0000        	call	_CLK_HSECmd
 118                     ; 16 	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
 120  001b a680          	ld	a,#128
 121  001d cd0000        	call	_CLK_SYSCLKConfig
 123                     ; 17 	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
 125  0020 4f            	clr	a
 126  0021 cd0000        	call	_CLK_HSIPrescalerConfig
 128                     ; 18 }  
 131  0024 81            	ret
 158                     ; 19 void GPIO_init(){
 159                     	switch	.text
 160  0025               _GPIO_init:
 164                     ; 21 	GPIO_DeInit(GPIOD);
 166  0025 ae500f        	ldw	x,#20495
 167  0028 cd0000        	call	_GPIO_DeInit
 169                     ; 23 	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST);
 171  002b 4bb0          	push	#176
 172  002d 4b08          	push	#8
 173  002f ae500f        	ldw	x,#20495
 174  0032 cd0000        	call	_GPIO_Init
 176  0035 85            	popw	x
 177                     ; 24 	GPIO_Init(GPIOD,GPIO_PIN_4,GPIO_MODE_OUT_OD_HIZ_FAST);
 179  0036 4bb0          	push	#176
 180  0038 4b10          	push	#16
 181  003a ae500f        	ldw	x,#20495
 182  003d cd0000        	call	_GPIO_Init
 184  0040 85            	popw	x
 185                     ; 25 	GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_OD_HIZ_FAST);
 187  0041 4bb0          	push	#176
 188  0043 4b20          	push	#32
 189  0045 ae500f        	ldw	x,#20495
 190  0048 cd0000        	call	_GPIO_Init
 192  004b 85            	popw	x
 193                     ; 27 	GPIO_Init(GPIOE,GPIO_PIN_5,GPIO_MODE_OUT_OD_HIZ_FAST); //USB SWITCH CONTROL
 195  004c 4bb0          	push	#176
 196  004e 4b20          	push	#32
 197  0050 ae5014        	ldw	x,#20500
 198  0053 cd0000        	call	_GPIO_Init
 200  0056 85            	popw	x
 201                     ; 28 	GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_OD_HIZ_FAST); //USE SWITCH ENABLE
 203  0057 4bb0          	push	#176
 204  0059 4b02          	push	#2
 205  005b ae500a        	ldw	x,#20490
 206  005e cd0000        	call	_GPIO_Init
 208  0061 85            	popw	x
 209                     ; 31 	GPIO_Init(GPIOB,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST); //USB HUB SEL0
 211  0062 4bb0          	push	#176
 212  0064 4b08          	push	#8
 213  0066 ae5005        	ldw	x,#20485
 214  0069 cd0000        	call	_GPIO_Init
 216  006c 85            	popw	x
 217                     ; 32 	GPIO_Init(GPIOB,GPIO_PIN_4,GPIO_MODE_OUT_OD_HIZ_FAST); //USB HUB SEL1
 219  006d 4bb0          	push	#176
 220  006f 4b10          	push	#16
 221  0071 ae5005        	ldw	x,#20485
 222  0074 cd0000        	call	_GPIO_Init
 224  0077 85            	popw	x
 225                     ; 35 	GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
 227  0078 4b00          	push	#0
 228  007a 4b40          	push	#64
 229  007c ae500f        	ldw	x,#20495
 230  007f cd0000        	call	_GPIO_Init
 232  0082 85            	popw	x
 233                     ; 36 	GPIO_Init(GPIOD,GPIO_PIN_7,GPIO_MODE_IN_FL_NO_IT);
 235  0083 4b00          	push	#0
 236  0085 4b80          	push	#128
 237  0087 ae500f        	ldw	x,#20495
 238  008a cd0000        	call	_GPIO_Init
 240  008d 85            	popw	x
 241                     ; 38 	EXTI_DeInit();
 243  008e cd0000        	call	_EXTI_DeInit
 245                     ; 41 	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_LOW);
 247  0091 5f            	clrw	x
 248  0092 a603          	ld	a,#3
 249  0094 95            	ld	xh,a
 250  0095 cd0000        	call	_EXTI_SetExtIntSensitivity
 252                     ; 43 }
 255  0098 81            	ret
 296                     ; 45 int main()
 296                     ; 46 {
 297                     	switch	.text
 298  0099               _main:
 300  0099 88            	push	a
 301       00000001      OFST:	set	1
 304                     ; 47 	unsigned char usbSwitch = 0;
 306  009a 0f01          	clr	(OFST+0,sp)
 307                     ; 48 	sim();
 310  009c 9b            sim
 312                     ; 49 	GPIO_init();
 315  009d ad86          	call	_GPIO_init
 317                     ; 50 	CLOCK_Config();
 319  009f cd0013        	call	_CLOCK_Config
 321                     ; 51 	GPIO_WriteLow(GPIOD,GPIO_PIN_3);
 323  00a2 4b08          	push	#8
 324  00a4 ae500f        	ldw	x,#20495
 325  00a7 cd0000        	call	_GPIO_WriteLow
 327  00aa 84            	pop	a
 328                     ; 53 	GPIO_WriteLow(GPIOB,GPIO_PIN_3);
 330  00ab 4b08          	push	#8
 331  00ad ae5005        	ldw	x,#20485
 332  00b0 cd0000        	call	_GPIO_WriteLow
 334  00b3 84            	pop	a
 335                     ; 54 	GPIO_WriteLow(GPIOB,GPIO_PIN_4);
 337  00b4 4b10          	push	#16
 338  00b6 ae5005        	ldw	x,#20485
 339  00b9 cd0000        	call	_GPIO_WriteLow
 341  00bc 84            	pop	a
 342                     ; 55 	rim();
 345  00bd 9a            rim
 347  00be               L76:
 348                     ; 57 		if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_6) == 0){
 350  00be 4b40          	push	#64
 351  00c0 ae500f        	ldw	x,#20495
 352  00c3 cd0000        	call	_GPIO_ReadInputPin
 354  00c6 5b01          	addw	sp,#1
 355  00c8 4d            	tnz	a
 356  00c9 2611          	jrne	L37
 357                     ; 58 			GPIO_WriteLow(GPIOD,GPIO_PIN_4); 
 359  00cb 4b10          	push	#16
 360  00cd ae500f        	ldw	x,#20495
 361  00d0 cd0000        	call	_GPIO_WriteLow
 363  00d3 84            	pop	a
 364                     ; 59 			usbSwitch |= 2;
 366  00d4 7b01          	ld	a,(OFST+0,sp)
 367  00d6 aa02          	or	a,#2
 368  00d8 6b01          	ld	(OFST+0,sp),a
 370  00da 200f          	jra	L57
 371  00dc               L37:
 372                     ; 61 			GPIO_WriteHigh(GPIOD,GPIO_PIN_5); 
 374  00dc 4b20          	push	#32
 375  00de ae500f        	ldw	x,#20495
 376  00e1 cd0000        	call	_GPIO_WriteHigh
 378  00e4 84            	pop	a
 379                     ; 62 			usbSwitch &= ~2;
 381  00e5 7b01          	ld	a,(OFST+0,sp)
 382  00e7 a4fd          	and	a,#253
 383  00e9 6b01          	ld	(OFST+0,sp),a
 384  00eb               L57:
 385                     ; 64 		if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_7) == 0){
 387  00eb 4b80          	push	#128
 388  00ed ae500f        	ldw	x,#20495
 389  00f0 cd0000        	call	_GPIO_ReadInputPin
 391  00f3 5b01          	addw	sp,#1
 392  00f5 4d            	tnz	a
 393  00f6 2611          	jrne	L77
 394                     ; 65 			GPIO_WriteLow(GPIOD,GPIO_PIN_5); 
 396  00f8 4b20          	push	#32
 397  00fa ae500f        	ldw	x,#20495
 398  00fd cd0000        	call	_GPIO_WriteLow
 400  0100 84            	pop	a
 401                     ; 66 			usbSwitch |= 1;
 403  0101 7b01          	ld	a,(OFST+0,sp)
 404  0103 aa01          	or	a,#1
 405  0105 6b01          	ld	(OFST+0,sp),a
 407  0107 200f          	jra	L101
 408  0109               L77:
 409                     ; 68 			GPIO_WriteHigh(GPIOD,GPIO_PIN_4);
 411  0109 4b10          	push	#16
 412  010b ae500f        	ldw	x,#20495
 413  010e cd0000        	call	_GPIO_WriteHigh
 415  0111 84            	pop	a
 416                     ; 69 			usbSwitch &= ~1;
 418  0112 7b01          	ld	a,(OFST+0,sp)
 419  0114 a4fe          	and	a,#254
 420  0116 6b01          	ld	(OFST+0,sp),a
 421  0118               L101:
 422                     ; 71 		switch(usbSwitch){
 424  0118 7b01          	ld	a,(OFST+0,sp)
 426                     ; 85 				break;
 427  011a 4d            	tnz	a
 428  011b 2711          	jreq	L14
 429  011d 4a            	dec	a
 430  011e 2719          	jreq	L34
 431  0120 4a            	dec	a
 432  0121 272c          	jreq	L54
 433  0123               L74:
 434                     ; 83 			default:
 434                     ; 84 				GPIO_WriteHigh(GPIOC,GPIO_PIN_1);
 436  0123 4b02          	push	#2
 437  0125 ae500a        	ldw	x,#20490
 438  0128 cd0000        	call	_GPIO_WriteHigh
 440  012b 84            	pop	a
 441                     ; 85 				break;
 443  012c 2090          	jra	L76
 444  012e               L14:
 445                     ; 72 			case 0:
 445                     ; 73 				GPIO_WriteHigh(GPIOC,GPIO_PIN_1); 
 447  012e 4b02          	push	#2
 448  0130 ae500a        	ldw	x,#20490
 449  0133 cd0000        	call	_GPIO_WriteHigh
 451  0136 84            	pop	a
 452                     ; 74 				break;
 454  0137 2085          	jra	L76
 455  0139               L34:
 456                     ; 75 			case 1:
 456                     ; 76 				GPIO_WriteLow(GPIOC,GPIO_PIN_1); 
 458  0139 4b02          	push	#2
 459  013b ae500a        	ldw	x,#20490
 460  013e cd0000        	call	_GPIO_WriteLow
 462  0141 84            	pop	a
 463                     ; 77 				GPIO_WriteLow(GPIOE,GPIO_PIN_5); 
 465  0142 4b20          	push	#32
 466  0144 ae5014        	ldw	x,#20500
 467  0147 cd0000        	call	_GPIO_WriteLow
 469  014a 84            	pop	a
 470                     ; 78 				break;
 472  014b acbe00be      	jpf	L76
 473  014f               L54:
 474                     ; 79 			case 2:
 474                     ; 80 				GPIO_WriteLow(GPIOC,GPIO_PIN_1); 
 476  014f 4b02          	push	#2
 477  0151 ae500a        	ldw	x,#20490
 478  0154 cd0000        	call	_GPIO_WriteLow
 480  0157 84            	pop	a
 481                     ; 81 				GPIO_WriteHigh(GPIOE,GPIO_PIN_5); 
 483  0158 4b20          	push	#32
 484  015a ae5014        	ldw	x,#20500
 485  015d cd0000        	call	_GPIO_WriteHigh
 487  0160 84            	pop	a
 488                     ; 82 				break;
 490  0161 acbe00be      	jpf	L76
 491  0165               L501:
 492                     ; 87 		;;;
 496  0165 acbe00be      	jpf	L76
 531                     ; 100 void assert_failed(u8* file, unsigned long int line)
 531                     ; 101 { 
 532                     	switch	.text
 533  0169               _assert_failed:
 537  0169               L521:
 538  0169 20fe          	jra	L521
 551                     	xdef	_main
 552                     	xdef	_GPIO_init
 553                     	xdef	_CLOCK_Config
 554                     	xdef	_Startup_CLOCK_Config
 555                     	xdef	_assert_failed
 556                     	xref	_GPIO_ReadInputPin
 557                     	xref	_GPIO_WriteLow
 558                     	xref	_GPIO_WriteHigh
 559                     	xref	_GPIO_Init
 560                     	xref	_GPIO_DeInit
 561                     	xref	_EXTI_SetExtIntSensitivity
 562                     	xref	_EXTI_DeInit
 563                     	xref	_CLK_SYSCLKConfig
 564                     	xref	_CLK_HSIPrescalerConfig
 565                     	xref	_CLK_HSECmd
 566                     	xref	_CLK_DeInit
 585                     	end
