   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 108                     ; 53 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 108                     ; 54 {
 110                     	switch	.text
 111  0000               _GPIO_DeInit:
 115                     ; 55   GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 117  0000 7f            	clr	(x)
 118                     ; 56   GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 120  0001 6f02          	clr	(2,x)
 121                     ; 57   GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 123  0003 6f03          	clr	(3,x)
 124                     ; 58   GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 126  0005 6f04          	clr	(4,x)
 127                     ; 59 }
 130  0007 81            	ret
 371                     ; 71 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 371                     ; 72 {
 372                     	switch	.text
 373  0008               _GPIO_Init:
 375  0008 89            	pushw	x
 376       00000000      OFST:	set	0
 379                     ; 77   assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 381  0009 0d06          	tnz	(OFST+6,sp)
 382  000b 2742          	jreq	L21
 383  000d 7b06          	ld	a,(OFST+6,sp)
 384  000f a140          	cp	a,#64
 385  0011 273c          	jreq	L21
 386  0013 7b06          	ld	a,(OFST+6,sp)
 387  0015 a120          	cp	a,#32
 388  0017 2736          	jreq	L21
 389  0019 7b06          	ld	a,(OFST+6,sp)
 390  001b a160          	cp	a,#96
 391  001d 2730          	jreq	L21
 392  001f 7b06          	ld	a,(OFST+6,sp)
 393  0021 a1a0          	cp	a,#160
 394  0023 272a          	jreq	L21
 395  0025 7b06          	ld	a,(OFST+6,sp)
 396  0027 a1e0          	cp	a,#224
 397  0029 2724          	jreq	L21
 398  002b 7b06          	ld	a,(OFST+6,sp)
 399  002d a180          	cp	a,#128
 400  002f 271e          	jreq	L21
 401  0031 7b06          	ld	a,(OFST+6,sp)
 402  0033 a1c0          	cp	a,#192
 403  0035 2718          	jreq	L21
 404  0037 7b06          	ld	a,(OFST+6,sp)
 405  0039 a1b0          	cp	a,#176
 406  003b 2712          	jreq	L21
 407  003d 7b06          	ld	a,(OFST+6,sp)
 408  003f a1f0          	cp	a,#240
 409  0041 270c          	jreq	L21
 410  0043 7b06          	ld	a,(OFST+6,sp)
 411  0045 a190          	cp	a,#144
 412  0047 2706          	jreq	L21
 413  0049 7b06          	ld	a,(OFST+6,sp)
 414  004b a1d0          	cp	a,#208
 415  004d 2603          	jrne	L01
 416  004f               L21:
 417  004f 4f            	clr	a
 418  0050 2010          	jra	L41
 419  0052               L01:
 420  0052 ae004d        	ldw	x,#77
 421  0055 89            	pushw	x
 422  0056 ae0000        	ldw	x,#0
 423  0059 89            	pushw	x
 424  005a ae0000        	ldw	x,#L771
 425  005d cd0000        	call	_assert_failed
 427  0060 5b04          	addw	sp,#4
 428  0062               L41:
 429                     ; 78   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 431  0062 0d05          	tnz	(OFST+5,sp)
 432  0064 2703          	jreq	L61
 433  0066 4f            	clr	a
 434  0067 2010          	jra	L02
 435  0069               L61:
 436  0069 ae004e        	ldw	x,#78
 437  006c 89            	pushw	x
 438  006d ae0000        	ldw	x,#0
 439  0070 89            	pushw	x
 440  0071 ae0000        	ldw	x,#L771
 441  0074 cd0000        	call	_assert_failed
 443  0077 5b04          	addw	sp,#4
 444  0079               L02:
 445                     ; 81   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 447  0079 1e01          	ldw	x,(OFST+1,sp)
 448  007b 7b05          	ld	a,(OFST+5,sp)
 449  007d 43            	cpl	a
 450  007e e404          	and	a,(4,x)
 451  0080 e704          	ld	(4,x),a
 452                     ; 87   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 454  0082 7b06          	ld	a,(OFST+6,sp)
 455  0084 a580          	bcp	a,#128
 456  0086 271f          	jreq	L102
 457                     ; 89     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 459  0088 7b06          	ld	a,(OFST+6,sp)
 460  008a a510          	bcp	a,#16
 461  008c 2708          	jreq	L302
 462                     ; 91       GPIOx->ODR |= (uint8_t)GPIO_Pin;
 464  008e 1e01          	ldw	x,(OFST+1,sp)
 465  0090 f6            	ld	a,(x)
 466  0091 1a05          	or	a,(OFST+5,sp)
 467  0093 f7            	ld	(x),a
 469  0094 2007          	jra	L502
 470  0096               L302:
 471                     ; 95       GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 473  0096 1e01          	ldw	x,(OFST+1,sp)
 474  0098 7b05          	ld	a,(OFST+5,sp)
 475  009a 43            	cpl	a
 476  009b f4            	and	a,(x)
 477  009c f7            	ld	(x),a
 478  009d               L502:
 479                     ; 98     GPIOx->DDR |= (uint8_t)GPIO_Pin;
 481  009d 1e01          	ldw	x,(OFST+1,sp)
 482  009f e602          	ld	a,(2,x)
 483  00a1 1a05          	or	a,(OFST+5,sp)
 484  00a3 e702          	ld	(2,x),a
 486  00a5 2009          	jra	L702
 487  00a7               L102:
 488                     ; 103     GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 490  00a7 1e01          	ldw	x,(OFST+1,sp)
 491  00a9 7b05          	ld	a,(OFST+5,sp)
 492  00ab 43            	cpl	a
 493  00ac e402          	and	a,(2,x)
 494  00ae e702          	ld	(2,x),a
 495  00b0               L702:
 496                     ; 110   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 498  00b0 7b06          	ld	a,(OFST+6,sp)
 499  00b2 a540          	bcp	a,#64
 500  00b4 270a          	jreq	L112
 501                     ; 112     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 503  00b6 1e01          	ldw	x,(OFST+1,sp)
 504  00b8 e603          	ld	a,(3,x)
 505  00ba 1a05          	or	a,(OFST+5,sp)
 506  00bc e703          	ld	(3,x),a
 508  00be 2009          	jra	L312
 509  00c0               L112:
 510                     ; 116     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 512  00c0 1e01          	ldw	x,(OFST+1,sp)
 513  00c2 7b05          	ld	a,(OFST+5,sp)
 514  00c4 43            	cpl	a
 515  00c5 e403          	and	a,(3,x)
 516  00c7 e703          	ld	(3,x),a
 517  00c9               L312:
 518                     ; 123   if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 520  00c9 7b06          	ld	a,(OFST+6,sp)
 521  00cb a520          	bcp	a,#32
 522  00cd 270a          	jreq	L512
 523                     ; 125     GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 525  00cf 1e01          	ldw	x,(OFST+1,sp)
 526  00d1 e604          	ld	a,(4,x)
 527  00d3 1a05          	or	a,(OFST+5,sp)
 528  00d5 e704          	ld	(4,x),a
 530  00d7 2009          	jra	L712
 531  00d9               L512:
 532                     ; 129     GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 534  00d9 1e01          	ldw	x,(OFST+1,sp)
 535  00db 7b05          	ld	a,(OFST+5,sp)
 536  00dd 43            	cpl	a
 537  00de e404          	and	a,(4,x)
 538  00e0 e704          	ld	(4,x),a
 539  00e2               L712:
 540                     ; 131 }
 543  00e2 85            	popw	x
 544  00e3 81            	ret
 590                     ; 141 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 590                     ; 142 {
 591                     	switch	.text
 592  00e4               _GPIO_Write:
 594  00e4 89            	pushw	x
 595       00000000      OFST:	set	0
 598                     ; 143   GPIOx->ODR = PortVal;
 600  00e5 7b05          	ld	a,(OFST+5,sp)
 601  00e7 1e01          	ldw	x,(OFST+1,sp)
 602  00e9 f7            	ld	(x),a
 603                     ; 144 }
 606  00ea 85            	popw	x
 607  00eb 81            	ret
 654                     ; 154 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 654                     ; 155 {
 655                     	switch	.text
 656  00ec               _GPIO_WriteHigh:
 658  00ec 89            	pushw	x
 659       00000000      OFST:	set	0
 662                     ; 156   GPIOx->ODR |= (uint8_t)PortPins;
 664  00ed f6            	ld	a,(x)
 665  00ee 1a05          	or	a,(OFST+5,sp)
 666  00f0 f7            	ld	(x),a
 667                     ; 157 }
 670  00f1 85            	popw	x
 671  00f2 81            	ret
 718                     ; 167 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 718                     ; 168 {
 719                     	switch	.text
 720  00f3               _GPIO_WriteLow:
 722  00f3 89            	pushw	x
 723       00000000      OFST:	set	0
 726                     ; 169   GPIOx->ODR &= (uint8_t)(~PortPins);
 728  00f4 7b05          	ld	a,(OFST+5,sp)
 729  00f6 43            	cpl	a
 730  00f7 f4            	and	a,(x)
 731  00f8 f7            	ld	(x),a
 732                     ; 170 }
 735  00f9 85            	popw	x
 736  00fa 81            	ret
 783                     ; 180 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 783                     ; 181 {
 784                     	switch	.text
 785  00fb               _GPIO_WriteReverse:
 787  00fb 89            	pushw	x
 788       00000000      OFST:	set	0
 791                     ; 182   GPIOx->ODR ^= (uint8_t)PortPins;
 793  00fc f6            	ld	a,(x)
 794  00fd 1805          	xor	a,	(OFST+5,sp)
 795  00ff f7            	ld	(x),a
 796                     ; 183 }
 799  0100 85            	popw	x
 800  0101 81            	ret
 838                     ; 191 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 838                     ; 192 {
 839                     	switch	.text
 840  0102               _GPIO_ReadOutputData:
 844                     ; 193   return ((uint8_t)GPIOx->ODR);
 846  0102 f6            	ld	a,(x)
 849  0103 81            	ret
 886                     ; 202 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 886                     ; 203 {
 887                     	switch	.text
 888  0104               _GPIO_ReadInputData:
 892                     ; 204   return ((uint8_t)GPIOx->IDR);
 894  0104 e601          	ld	a,(1,x)
 897  0106 81            	ret
 965                     ; 213 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 965                     ; 214 {
 966                     	switch	.text
 967  0107               _GPIO_ReadInputPin:
 969  0107 89            	pushw	x
 970       00000000      OFST:	set	0
 973                     ; 215   return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 975  0108 e601          	ld	a,(1,x)
 976  010a 1405          	and	a,(OFST+5,sp)
 979  010c 85            	popw	x
 980  010d 81            	ret
1059                     ; 225 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1059                     ; 226 {
1060                     	switch	.text
1061  010e               _GPIO_ExternalPullUpConfig:
1063  010e 89            	pushw	x
1064       00000000      OFST:	set	0
1067                     ; 228   assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1069  010f 0d05          	tnz	(OFST+5,sp)
1070  0111 2703          	jreq	L24
1071  0113 4f            	clr	a
1072  0114 2010          	jra	L44
1073  0116               L24:
1074  0116 ae00e4        	ldw	x,#228
1075  0119 89            	pushw	x
1076  011a ae0000        	ldw	x,#0
1077  011d 89            	pushw	x
1078  011e ae0000        	ldw	x,#L771
1079  0121 cd0000        	call	_assert_failed
1081  0124 5b04          	addw	sp,#4
1082  0126               L44:
1083                     ; 229   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1085  0126 0d06          	tnz	(OFST+6,sp)
1086  0128 2706          	jreq	L05
1087  012a 7b06          	ld	a,(OFST+6,sp)
1088  012c a101          	cp	a,#1
1089  012e 2603          	jrne	L64
1090  0130               L05:
1091  0130 4f            	clr	a
1092  0131 2010          	jra	L25
1093  0133               L64:
1094  0133 ae00e5        	ldw	x,#229
1095  0136 89            	pushw	x
1096  0137 ae0000        	ldw	x,#0
1097  013a 89            	pushw	x
1098  013b ae0000        	ldw	x,#L771
1099  013e cd0000        	call	_assert_failed
1101  0141 5b04          	addw	sp,#4
1102  0143               L25:
1103                     ; 231   if (NewState != DISABLE) /* External Pull-Up Set*/
1105  0143 0d06          	tnz	(OFST+6,sp)
1106  0145 270a          	jreq	L574
1107                     ; 233     GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1109  0147 1e01          	ldw	x,(OFST+1,sp)
1110  0149 e603          	ld	a,(3,x)
1111  014b 1a05          	or	a,(OFST+5,sp)
1112  014d e703          	ld	(3,x),a
1114  014f 2009          	jra	L774
1115  0151               L574:
1116                     ; 236     GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1118  0151 1e01          	ldw	x,(OFST+1,sp)
1119  0153 7b05          	ld	a,(OFST+5,sp)
1120  0155 43            	cpl	a
1121  0156 e403          	and	a,(3,x)
1122  0158 e703          	ld	(3,x),a
1123  015a               L774:
1124                     ; 238 }
1127  015a 85            	popw	x
1128  015b 81            	ret
1141                     	xdef	_GPIO_ExternalPullUpConfig
1142                     	xdef	_GPIO_ReadInputPin
1143                     	xdef	_GPIO_ReadOutputData
1144                     	xdef	_GPIO_ReadInputData
1145                     	xdef	_GPIO_WriteReverse
1146                     	xdef	_GPIO_WriteLow
1147                     	xdef	_GPIO_WriteHigh
1148                     	xdef	_GPIO_Write
1149                     	xdef	_GPIO_Init
1150                     	xdef	_GPIO_DeInit
1151                     	xref	_assert_failed
1152                     .const:	section	.text
1153  0000               L771:
1154  0000 6c6962726172  	dc.b	"library\stm8s_gpio"
1155  0012 2e6300        	dc.b	".c",0
1175                     	end
