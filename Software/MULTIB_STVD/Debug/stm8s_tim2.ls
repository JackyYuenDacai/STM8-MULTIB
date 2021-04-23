   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 52 void TIM2_DeInit(void)
  42                     ; 53 {
  44                     	switch	.text
  45  0000               _TIM2_DeInit:
  49                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  51  0000 725f5300      	clr	21248
  52                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  54  0004 725f5301      	clr	21249
  55                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  57  0008 725f5303      	clr	21251
  58                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  60  000c 725f5308      	clr	21256
  61                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  63  0010 725f5309      	clr	21257
  64                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  0014 725f5308      	clr	21256
  67                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0018 725f5309      	clr	21257
  70                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  72  001c 725f5305      	clr	21253
  73                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  75  0020 725f5306      	clr	21254
  76                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  78  0024 725f5307      	clr	21255
  79                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  81  0028 725f530a      	clr	21258
  82                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  84  002c 725f530b      	clr	21259
  85                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  87  0030 725f530c      	clr	21260
  88                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  90  0034 35ff530d      	mov	21261,#255
  91                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  93  0038 35ff530e      	mov	21262,#255
  94                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  96  003c 725f530f      	clr	21263
  97                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
  99  0040 725f5310      	clr	21264
 100                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 102  0044 725f5311      	clr	21265
 103                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 105  0048 725f5312      	clr	21266
 106                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 108  004c 725f5313      	clr	21267
 109                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 111  0050 725f5314      	clr	21268
 112                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 114  0054 725f5302      	clr	21250
 115                     ; 81 }
 118  0058 81            	ret
 286                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 286                     ; 90                         uint16_t TIM2_Period)
 286                     ; 91 {
 287                     	switch	.text
 288  0059               _TIM2_TimeBaseInit:
 290  0059 88            	push	a
 291       00000000      OFST:	set	0
 294                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 296  005a c7530c        	ld	21260,a
 297                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 299  005d 7b04          	ld	a,(OFST+4,sp)
 300  005f c7530d        	ld	21261,a
 301                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 303  0062 7b05          	ld	a,(OFST+5,sp)
 304  0064 c7530e        	ld	21262,a
 305                     ; 97 }
 308  0067 84            	pop	a
 309  0068 81            	ret
 467                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 467                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 467                     ; 110                   uint16_t TIM2_Pulse,
 467                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 467                     ; 112 {
 468                     	switch	.text
 469  0069               _TIM2_OC1Init:
 471  0069 89            	pushw	x
 472  006a 88            	push	a
 473       00000001      OFST:	set	1
 476                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 478  006b 9e            	ld	a,xh
 479  006c 4d            	tnz	a
 480  006d 2719          	jreq	L41
 481  006f 9e            	ld	a,xh
 482  0070 a110          	cp	a,#16
 483  0072 2714          	jreq	L41
 484  0074 9e            	ld	a,xh
 485  0075 a120          	cp	a,#32
 486  0077 270f          	jreq	L41
 487  0079 9e            	ld	a,xh
 488  007a a130          	cp	a,#48
 489  007c 270a          	jreq	L41
 490  007e 9e            	ld	a,xh
 491  007f a160          	cp	a,#96
 492  0081 2705          	jreq	L41
 493  0083 9e            	ld	a,xh
 494  0084 a170          	cp	a,#112
 495  0086 2603          	jrne	L21
 496  0088               L41:
 497  0088 4f            	clr	a
 498  0089 2010          	jra	L61
 499  008b               L21:
 500  008b ae0072        	ldw	x,#114
 501  008e 89            	pushw	x
 502  008f ae0000        	ldw	x,#0
 503  0092 89            	pushw	x
 504  0093 ae0000        	ldw	x,#L702
 505  0096 cd0000        	call	_assert_failed
 507  0099 5b04          	addw	sp,#4
 508  009b               L61:
 509                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 511  009b 0d03          	tnz	(OFST+2,sp)
 512  009d 2706          	jreq	L22
 513  009f 7b03          	ld	a,(OFST+2,sp)
 514  00a1 a111          	cp	a,#17
 515  00a3 2603          	jrne	L02
 516  00a5               L22:
 517  00a5 4f            	clr	a
 518  00a6 2010          	jra	L42
 519  00a8               L02:
 520  00a8 ae0073        	ldw	x,#115
 521  00ab 89            	pushw	x
 522  00ac ae0000        	ldw	x,#0
 523  00af 89            	pushw	x
 524  00b0 ae0000        	ldw	x,#L702
 525  00b3 cd0000        	call	_assert_failed
 527  00b6 5b04          	addw	sp,#4
 528  00b8               L42:
 529                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 531  00b8 0d08          	tnz	(OFST+7,sp)
 532  00ba 2706          	jreq	L03
 533  00bc 7b08          	ld	a,(OFST+7,sp)
 534  00be a122          	cp	a,#34
 535  00c0 2603          	jrne	L62
 536  00c2               L03:
 537  00c2 4f            	clr	a
 538  00c3 2010          	jra	L23
 539  00c5               L62:
 540  00c5 ae0074        	ldw	x,#116
 541  00c8 89            	pushw	x
 542  00c9 ae0000        	ldw	x,#0
 543  00cc 89            	pushw	x
 544  00cd ae0000        	ldw	x,#L702
 545  00d0 cd0000        	call	_assert_failed
 547  00d3 5b04          	addw	sp,#4
 548  00d5               L23:
 549                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 551  00d5 c65308        	ld	a,21256
 552  00d8 a4fc          	and	a,#252
 553  00da c75308        	ld	21256,a
 554                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 554                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 556  00dd 7b08          	ld	a,(OFST+7,sp)
 557  00df a402          	and	a,#2
 558  00e1 6b01          	ld	(OFST+0,sp),a
 559  00e3 7b03          	ld	a,(OFST+2,sp)
 560  00e5 a401          	and	a,#1
 561  00e7 1a01          	or	a,(OFST+0,sp)
 562  00e9 ca5308        	or	a,21256
 563  00ec c75308        	ld	21256,a
 564                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 564                     ; 126                           (uint8_t)TIM2_OCMode);
 566  00ef c65305        	ld	a,21253
 567  00f2 a48f          	and	a,#143
 568  00f4 1a02          	or	a,(OFST+1,sp)
 569  00f6 c75305        	ld	21253,a
 570                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 572  00f9 7b06          	ld	a,(OFST+5,sp)
 573  00fb c7530f        	ld	21263,a
 574                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 576  00fe 7b07          	ld	a,(OFST+6,sp)
 577  0100 c75310        	ld	21264,a
 578                     ; 131 }
 581  0103 5b03          	addw	sp,#3
 582  0105 81            	ret
 647                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 647                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 647                     ; 144                   uint16_t TIM2_Pulse,
 647                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 647                     ; 146 {
 648                     	switch	.text
 649  0106               _TIM2_OC2Init:
 651  0106 89            	pushw	x
 652  0107 88            	push	a
 653       00000001      OFST:	set	1
 656                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 658  0108 9e            	ld	a,xh
 659  0109 4d            	tnz	a
 660  010a 2719          	jreq	L04
 661  010c 9e            	ld	a,xh
 662  010d a110          	cp	a,#16
 663  010f 2714          	jreq	L04
 664  0111 9e            	ld	a,xh
 665  0112 a120          	cp	a,#32
 666  0114 270f          	jreq	L04
 667  0116 9e            	ld	a,xh
 668  0117 a130          	cp	a,#48
 669  0119 270a          	jreq	L04
 670  011b 9e            	ld	a,xh
 671  011c a160          	cp	a,#96
 672  011e 2705          	jreq	L04
 673  0120 9e            	ld	a,xh
 674  0121 a170          	cp	a,#112
 675  0123 2603          	jrne	L63
 676  0125               L04:
 677  0125 4f            	clr	a
 678  0126 2010          	jra	L24
 679  0128               L63:
 680  0128 ae0094        	ldw	x,#148
 681  012b 89            	pushw	x
 682  012c ae0000        	ldw	x,#0
 683  012f 89            	pushw	x
 684  0130 ae0000        	ldw	x,#L702
 685  0133 cd0000        	call	_assert_failed
 687  0136 5b04          	addw	sp,#4
 688  0138               L24:
 689                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 691  0138 0d03          	tnz	(OFST+2,sp)
 692  013a 2706          	jreq	L64
 693  013c 7b03          	ld	a,(OFST+2,sp)
 694  013e a111          	cp	a,#17
 695  0140 2603          	jrne	L44
 696  0142               L64:
 697  0142 4f            	clr	a
 698  0143 2010          	jra	L05
 699  0145               L44:
 700  0145 ae0095        	ldw	x,#149
 701  0148 89            	pushw	x
 702  0149 ae0000        	ldw	x,#0
 703  014c 89            	pushw	x
 704  014d ae0000        	ldw	x,#L702
 705  0150 cd0000        	call	_assert_failed
 707  0153 5b04          	addw	sp,#4
 708  0155               L05:
 709                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 711  0155 0d08          	tnz	(OFST+7,sp)
 712  0157 2706          	jreq	L45
 713  0159 7b08          	ld	a,(OFST+7,sp)
 714  015b a122          	cp	a,#34
 715  015d 2603          	jrne	L25
 716  015f               L45:
 717  015f 4f            	clr	a
 718  0160 2010          	jra	L65
 719  0162               L25:
 720  0162 ae0096        	ldw	x,#150
 721  0165 89            	pushw	x
 722  0166 ae0000        	ldw	x,#0
 723  0169 89            	pushw	x
 724  016a ae0000        	ldw	x,#L702
 725  016d cd0000        	call	_assert_failed
 727  0170 5b04          	addw	sp,#4
 728  0172               L65:
 729                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 731  0172 c65308        	ld	a,21256
 732  0175 a4cf          	and	a,#207
 733  0177 c75308        	ld	21256,a
 734                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 734                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 736  017a 7b08          	ld	a,(OFST+7,sp)
 737  017c a420          	and	a,#32
 738  017e 6b01          	ld	(OFST+0,sp),a
 739  0180 7b03          	ld	a,(OFST+2,sp)
 740  0182 a410          	and	a,#16
 741  0184 1a01          	or	a,(OFST+0,sp)
 742  0186 ca5308        	or	a,21256
 743  0189 c75308        	ld	21256,a
 744                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 744                     ; 162                           (uint8_t)TIM2_OCMode);
 746  018c c65306        	ld	a,21254
 747  018f a48f          	and	a,#143
 748  0191 1a02          	or	a,(OFST+1,sp)
 749  0193 c75306        	ld	21254,a
 750                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 752  0196 7b06          	ld	a,(OFST+5,sp)
 753  0198 c75311        	ld	21265,a
 754                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 756  019b 7b07          	ld	a,(OFST+6,sp)
 757  019d c75312        	ld	21266,a
 758                     ; 168 }
 761  01a0 5b03          	addw	sp,#3
 762  01a2 81            	ret
 827                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 827                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 827                     ; 181                   uint16_t TIM2_Pulse,
 827                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 827                     ; 183 {
 828                     	switch	.text
 829  01a3               _TIM2_OC3Init:
 831  01a3 89            	pushw	x
 832  01a4 88            	push	a
 833       00000001      OFST:	set	1
 836                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 838  01a5 9e            	ld	a,xh
 839  01a6 4d            	tnz	a
 840  01a7 2719          	jreq	L46
 841  01a9 9e            	ld	a,xh
 842  01aa a110          	cp	a,#16
 843  01ac 2714          	jreq	L46
 844  01ae 9e            	ld	a,xh
 845  01af a120          	cp	a,#32
 846  01b1 270f          	jreq	L46
 847  01b3 9e            	ld	a,xh
 848  01b4 a130          	cp	a,#48
 849  01b6 270a          	jreq	L46
 850  01b8 9e            	ld	a,xh
 851  01b9 a160          	cp	a,#96
 852  01bb 2705          	jreq	L46
 853  01bd 9e            	ld	a,xh
 854  01be a170          	cp	a,#112
 855  01c0 2603          	jrne	L26
 856  01c2               L46:
 857  01c2 4f            	clr	a
 858  01c3 2010          	jra	L66
 859  01c5               L26:
 860  01c5 ae00b9        	ldw	x,#185
 861  01c8 89            	pushw	x
 862  01c9 ae0000        	ldw	x,#0
 863  01cc 89            	pushw	x
 864  01cd ae0000        	ldw	x,#L702
 865  01d0 cd0000        	call	_assert_failed
 867  01d3 5b04          	addw	sp,#4
 868  01d5               L66:
 869                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 871  01d5 0d03          	tnz	(OFST+2,sp)
 872  01d7 2706          	jreq	L27
 873  01d9 7b03          	ld	a,(OFST+2,sp)
 874  01db a111          	cp	a,#17
 875  01dd 2603          	jrne	L07
 876  01df               L27:
 877  01df 4f            	clr	a
 878  01e0 2010          	jra	L47
 879  01e2               L07:
 880  01e2 ae00ba        	ldw	x,#186
 881  01e5 89            	pushw	x
 882  01e6 ae0000        	ldw	x,#0
 883  01e9 89            	pushw	x
 884  01ea ae0000        	ldw	x,#L702
 885  01ed cd0000        	call	_assert_failed
 887  01f0 5b04          	addw	sp,#4
 888  01f2               L47:
 889                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 891  01f2 0d08          	tnz	(OFST+7,sp)
 892  01f4 2706          	jreq	L001
 893  01f6 7b08          	ld	a,(OFST+7,sp)
 894  01f8 a122          	cp	a,#34
 895  01fa 2603          	jrne	L67
 896  01fc               L001:
 897  01fc 4f            	clr	a
 898  01fd 2010          	jra	L201
 899  01ff               L67:
 900  01ff ae00bb        	ldw	x,#187
 901  0202 89            	pushw	x
 902  0203 ae0000        	ldw	x,#0
 903  0206 89            	pushw	x
 904  0207 ae0000        	ldw	x,#L702
 905  020a cd0000        	call	_assert_failed
 907  020d 5b04          	addw	sp,#4
 908  020f               L201:
 909                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 911  020f c65309        	ld	a,21257
 912  0212 a4fc          	and	a,#252
 913  0214 c75309        	ld	21257,a
 914                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 914                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 916  0217 7b08          	ld	a,(OFST+7,sp)
 917  0219 a402          	and	a,#2
 918  021b 6b01          	ld	(OFST+0,sp),a
 919  021d 7b03          	ld	a,(OFST+2,sp)
 920  021f a401          	and	a,#1
 921  0221 1a01          	or	a,(OFST+0,sp)
 922  0223 ca5309        	or	a,21257
 923  0226 c75309        	ld	21257,a
 924                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 924                     ; 196                           (uint8_t)TIM2_OCMode);
 926  0229 c65307        	ld	a,21255
 927  022c a48f          	and	a,#143
 928  022e 1a02          	or	a,(OFST+1,sp)
 929  0230 c75307        	ld	21255,a
 930                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 932  0233 7b06          	ld	a,(OFST+5,sp)
 933  0235 c75313        	ld	21267,a
 934                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 936  0238 7b07          	ld	a,(OFST+6,sp)
 937  023a c75314        	ld	21268,a
 938                     ; 201 }
 941  023d 5b03          	addw	sp,#3
 942  023f 81            	ret
1136                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1136                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1136                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1136                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1136                     ; 216                  uint8_t TIM2_ICFilter)
1136                     ; 217 {
1137                     	switch	.text
1138  0240               _TIM2_ICInit:
1140  0240 89            	pushw	x
1141       00000000      OFST:	set	0
1144                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1146  0241 9e            	ld	a,xh
1147  0242 4d            	tnz	a
1148  0243 270a          	jreq	L011
1149  0245 9e            	ld	a,xh
1150  0246 a101          	cp	a,#1
1151  0248 2705          	jreq	L011
1152  024a 9e            	ld	a,xh
1153  024b a102          	cp	a,#2
1154  024d 2603          	jrne	L601
1155  024f               L011:
1156  024f 4f            	clr	a
1157  0250 2010          	jra	L211
1158  0252               L601:
1159  0252 ae00db        	ldw	x,#219
1160  0255 89            	pushw	x
1161  0256 ae0000        	ldw	x,#0
1162  0259 89            	pushw	x
1163  025a ae0000        	ldw	x,#L702
1164  025d cd0000        	call	_assert_failed
1166  0260 5b04          	addw	sp,#4
1167  0262               L211:
1168                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1170  0262 0d02          	tnz	(OFST+2,sp)
1171  0264 2706          	jreq	L611
1172  0266 7b02          	ld	a,(OFST+2,sp)
1173  0268 a144          	cp	a,#68
1174  026a 2603          	jrne	L411
1175  026c               L611:
1176  026c 4f            	clr	a
1177  026d 2010          	jra	L021
1178  026f               L411:
1179  026f ae00dc        	ldw	x,#220
1180  0272 89            	pushw	x
1181  0273 ae0000        	ldw	x,#0
1182  0276 89            	pushw	x
1183  0277 ae0000        	ldw	x,#L702
1184  027a cd0000        	call	_assert_failed
1186  027d 5b04          	addw	sp,#4
1187  027f               L021:
1188                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1190  027f 7b05          	ld	a,(OFST+5,sp)
1191  0281 a101          	cp	a,#1
1192  0283 270c          	jreq	L421
1193  0285 7b05          	ld	a,(OFST+5,sp)
1194  0287 a102          	cp	a,#2
1195  0289 2706          	jreq	L421
1196  028b 7b05          	ld	a,(OFST+5,sp)
1197  028d a103          	cp	a,#3
1198  028f 2603          	jrne	L221
1199  0291               L421:
1200  0291 4f            	clr	a
1201  0292 2010          	jra	L621
1202  0294               L221:
1203  0294 ae00dd        	ldw	x,#221
1204  0297 89            	pushw	x
1205  0298 ae0000        	ldw	x,#0
1206  029b 89            	pushw	x
1207  029c ae0000        	ldw	x,#L702
1208  029f cd0000        	call	_assert_failed
1210  02a2 5b04          	addw	sp,#4
1211  02a4               L621:
1212                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1214  02a4 0d06          	tnz	(OFST+6,sp)
1215  02a6 2712          	jreq	L231
1216  02a8 7b06          	ld	a,(OFST+6,sp)
1217  02aa a104          	cp	a,#4
1218  02ac 270c          	jreq	L231
1219  02ae 7b06          	ld	a,(OFST+6,sp)
1220  02b0 a108          	cp	a,#8
1221  02b2 2706          	jreq	L231
1222  02b4 7b06          	ld	a,(OFST+6,sp)
1223  02b6 a10c          	cp	a,#12
1224  02b8 2603          	jrne	L031
1225  02ba               L231:
1226  02ba 4f            	clr	a
1227  02bb 2010          	jra	L431
1228  02bd               L031:
1229  02bd ae00de        	ldw	x,#222
1230  02c0 89            	pushw	x
1231  02c1 ae0000        	ldw	x,#0
1232  02c4 89            	pushw	x
1233  02c5 ae0000        	ldw	x,#L702
1234  02c8 cd0000        	call	_assert_failed
1236  02cb 5b04          	addw	sp,#4
1237  02cd               L431:
1238                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1240  02cd 7b07          	ld	a,(OFST+7,sp)
1241  02cf a110          	cp	a,#16
1242  02d1 2403          	jruge	L631
1243  02d3 4f            	clr	a
1244  02d4 2010          	jra	L041
1245  02d6               L631:
1246  02d6 ae00df        	ldw	x,#223
1247  02d9 89            	pushw	x
1248  02da ae0000        	ldw	x,#0
1249  02dd 89            	pushw	x
1250  02de ae0000        	ldw	x,#L702
1251  02e1 cd0000        	call	_assert_failed
1253  02e4 5b04          	addw	sp,#4
1254  02e6               L041:
1255                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1257  02e6 0d01          	tnz	(OFST+1,sp)
1258  02e8 2614          	jrne	L304
1259                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1259                     ; 229                (uint8_t)TIM2_ICSelection,
1259                     ; 230                (uint8_t)TIM2_ICFilter);
1261  02ea 7b07          	ld	a,(OFST+7,sp)
1262  02ec 88            	push	a
1263  02ed 7b06          	ld	a,(OFST+6,sp)
1264  02ef 97            	ld	xl,a
1265  02f0 7b03          	ld	a,(OFST+3,sp)
1266  02f2 95            	ld	xh,a
1267  02f3 cd0ad3        	call	L3_TI1_Config
1269  02f6 84            	pop	a
1270                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1272  02f7 7b06          	ld	a,(OFST+6,sp)
1273  02f9 cd08c3        	call	_TIM2_SetIC1Prescaler
1276  02fc 202c          	jra	L504
1277  02fe               L304:
1278                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1280  02fe 7b01          	ld	a,(OFST+1,sp)
1281  0300 a101          	cp	a,#1
1282  0302 2614          	jrne	L704
1283                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1283                     ; 239                (uint8_t)TIM2_ICSelection,
1283                     ; 240                (uint8_t)TIM2_ICFilter);
1285  0304 7b07          	ld	a,(OFST+7,sp)
1286  0306 88            	push	a
1287  0307 7b06          	ld	a,(OFST+6,sp)
1288  0309 97            	ld	xl,a
1289  030a 7b03          	ld	a,(OFST+3,sp)
1290  030c 95            	ld	xh,a
1291  030d cd0b03        	call	L5_TI2_Config
1293  0310 84            	pop	a
1294                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1296  0311 7b06          	ld	a,(OFST+6,sp)
1297  0313 cd08f2        	call	_TIM2_SetIC2Prescaler
1300  0316 2012          	jra	L504
1301  0318               L704:
1302                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1302                     ; 249                (uint8_t)TIM2_ICSelection,
1302                     ; 250                (uint8_t)TIM2_ICFilter);
1304  0318 7b07          	ld	a,(OFST+7,sp)
1305  031a 88            	push	a
1306  031b 7b06          	ld	a,(OFST+6,sp)
1307  031d 97            	ld	xl,a
1308  031e 7b03          	ld	a,(OFST+3,sp)
1309  0320 95            	ld	xh,a
1310  0321 cd0b33        	call	L7_TI3_Config
1312  0324 84            	pop	a
1313                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1315  0325 7b06          	ld	a,(OFST+6,sp)
1316  0327 cd0921        	call	_TIM2_SetIC3Prescaler
1318  032a               L504:
1319                     ; 255 }
1322  032a 85            	popw	x
1323  032b 81            	ret
1420                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1420                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1420                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1420                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1420                     ; 270                      uint8_t TIM2_ICFilter)
1420                     ; 271 {
1421                     	switch	.text
1422  032c               _TIM2_PWMIConfig:
1424  032c 89            	pushw	x
1425  032d 89            	pushw	x
1426       00000002      OFST:	set	2
1429                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1431                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1433                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1435  032e 9e            	ld	a,xh
1436  032f 4d            	tnz	a
1437  0330 2705          	jreq	L641
1438  0332 9e            	ld	a,xh
1439  0333 a101          	cp	a,#1
1440  0335 2603          	jrne	L441
1441  0337               L641:
1442  0337 4f            	clr	a
1443  0338 2010          	jra	L051
1444  033a               L441:
1445  033a ae0114        	ldw	x,#276
1446  033d 89            	pushw	x
1447  033e ae0000        	ldw	x,#0
1448  0341 89            	pushw	x
1449  0342 ae0000        	ldw	x,#L702
1450  0345 cd0000        	call	_assert_failed
1452  0348 5b04          	addw	sp,#4
1453  034a               L051:
1454                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1456  034a 0d04          	tnz	(OFST+2,sp)
1457  034c 2706          	jreq	L451
1458  034e 7b04          	ld	a,(OFST+2,sp)
1459  0350 a144          	cp	a,#68
1460  0352 2603          	jrne	L251
1461  0354               L451:
1462  0354 4f            	clr	a
1463  0355 2010          	jra	L651
1464  0357               L251:
1465  0357 ae0115        	ldw	x,#277
1466  035a 89            	pushw	x
1467  035b ae0000        	ldw	x,#0
1468  035e 89            	pushw	x
1469  035f ae0000        	ldw	x,#L702
1470  0362 cd0000        	call	_assert_failed
1472  0365 5b04          	addw	sp,#4
1473  0367               L651:
1474                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1476  0367 7b07          	ld	a,(OFST+5,sp)
1477  0369 a101          	cp	a,#1
1478  036b 270c          	jreq	L261
1479  036d 7b07          	ld	a,(OFST+5,sp)
1480  036f a102          	cp	a,#2
1481  0371 2706          	jreq	L261
1482  0373 7b07          	ld	a,(OFST+5,sp)
1483  0375 a103          	cp	a,#3
1484  0377 2603          	jrne	L061
1485  0379               L261:
1486  0379 4f            	clr	a
1487  037a 2010          	jra	L461
1488  037c               L061:
1489  037c ae0116        	ldw	x,#278
1490  037f 89            	pushw	x
1491  0380 ae0000        	ldw	x,#0
1492  0383 89            	pushw	x
1493  0384 ae0000        	ldw	x,#L702
1494  0387 cd0000        	call	_assert_failed
1496  038a 5b04          	addw	sp,#4
1497  038c               L461:
1498                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1500  038c 0d08          	tnz	(OFST+6,sp)
1501  038e 2712          	jreq	L071
1502  0390 7b08          	ld	a,(OFST+6,sp)
1503  0392 a104          	cp	a,#4
1504  0394 270c          	jreq	L071
1505  0396 7b08          	ld	a,(OFST+6,sp)
1506  0398 a108          	cp	a,#8
1507  039a 2706          	jreq	L071
1508  039c 7b08          	ld	a,(OFST+6,sp)
1509  039e a10c          	cp	a,#12
1510  03a0 2603          	jrne	L661
1511  03a2               L071:
1512  03a2 4f            	clr	a
1513  03a3 2010          	jra	L271
1514  03a5               L661:
1515  03a5 ae0117        	ldw	x,#279
1516  03a8 89            	pushw	x
1517  03a9 ae0000        	ldw	x,#0
1518  03ac 89            	pushw	x
1519  03ad ae0000        	ldw	x,#L702
1520  03b0 cd0000        	call	_assert_failed
1522  03b3 5b04          	addw	sp,#4
1523  03b5               L271:
1524                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1526  03b5 7b04          	ld	a,(OFST+2,sp)
1527  03b7 a144          	cp	a,#68
1528  03b9 2706          	jreq	L164
1529                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1531  03bb a644          	ld	a,#68
1532  03bd 6b01          	ld	(OFST-1,sp),a
1534  03bf 2002          	jra	L364
1535  03c1               L164:
1536                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1538  03c1 0f01          	clr	(OFST-1,sp)
1539  03c3               L364:
1540                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1542  03c3 7b07          	ld	a,(OFST+5,sp)
1543  03c5 a101          	cp	a,#1
1544  03c7 2606          	jrne	L564
1545                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1547  03c9 a602          	ld	a,#2
1548  03cb 6b02          	ld	(OFST+0,sp),a
1550  03cd 2004          	jra	L764
1551  03cf               L564:
1552                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1554  03cf a601          	ld	a,#1
1555  03d1 6b02          	ld	(OFST+0,sp),a
1556  03d3               L764:
1557                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1559  03d3 0d03          	tnz	(OFST+1,sp)
1560  03d5 2626          	jrne	L174
1561                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1561                     ; 305                (uint8_t)TIM2_ICFilter);
1563  03d7 7b09          	ld	a,(OFST+7,sp)
1564  03d9 88            	push	a
1565  03da 7b08          	ld	a,(OFST+6,sp)
1566  03dc 97            	ld	xl,a
1567  03dd 7b05          	ld	a,(OFST+3,sp)
1568  03df 95            	ld	xh,a
1569  03e0 cd0ad3        	call	L3_TI1_Config
1571  03e3 84            	pop	a
1572                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1574  03e4 7b08          	ld	a,(OFST+6,sp)
1575  03e6 cd08c3        	call	_TIM2_SetIC1Prescaler
1577                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1579  03e9 7b09          	ld	a,(OFST+7,sp)
1580  03eb 88            	push	a
1581  03ec 7b03          	ld	a,(OFST+1,sp)
1582  03ee 97            	ld	xl,a
1583  03ef 7b02          	ld	a,(OFST+0,sp)
1584  03f1 95            	ld	xh,a
1585  03f2 cd0b03        	call	L5_TI2_Config
1587  03f5 84            	pop	a
1588                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1590  03f6 7b08          	ld	a,(OFST+6,sp)
1591  03f8 cd08f2        	call	_TIM2_SetIC2Prescaler
1594  03fb 2024          	jra	L374
1595  03fd               L174:
1596                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1596                     ; 320                (uint8_t)TIM2_ICFilter);
1598  03fd 7b09          	ld	a,(OFST+7,sp)
1599  03ff 88            	push	a
1600  0400 7b08          	ld	a,(OFST+6,sp)
1601  0402 97            	ld	xl,a
1602  0403 7b05          	ld	a,(OFST+3,sp)
1603  0405 95            	ld	xh,a
1604  0406 cd0b03        	call	L5_TI2_Config
1606  0409 84            	pop	a
1607                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1609  040a 7b08          	ld	a,(OFST+6,sp)
1610  040c cd08f2        	call	_TIM2_SetIC2Prescaler
1612                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1614  040f 7b09          	ld	a,(OFST+7,sp)
1615  0411 88            	push	a
1616  0412 7b03          	ld	a,(OFST+1,sp)
1617  0414 97            	ld	xl,a
1618  0415 7b02          	ld	a,(OFST+0,sp)
1619  0417 95            	ld	xh,a
1620  0418 cd0ad3        	call	L3_TI1_Config
1622  041b 84            	pop	a
1623                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1625  041c 7b08          	ld	a,(OFST+6,sp)
1626  041e cd08c3        	call	_TIM2_SetIC1Prescaler
1628  0421               L374:
1629                     ; 331 }
1632  0421 5b04          	addw	sp,#4
1633  0423 81            	ret
1689                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1689                     ; 340 {
1690                     	switch	.text
1691  0424               _TIM2_Cmd:
1693  0424 88            	push	a
1694       00000000      OFST:	set	0
1697                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1699  0425 4d            	tnz	a
1700  0426 2704          	jreq	L002
1701  0428 a101          	cp	a,#1
1702  042a 2603          	jrne	L671
1703  042c               L002:
1704  042c 4f            	clr	a
1705  042d 2010          	jra	L202
1706  042f               L671:
1707  042f ae0156        	ldw	x,#342
1708  0432 89            	pushw	x
1709  0433 ae0000        	ldw	x,#0
1710  0436 89            	pushw	x
1711  0437 ae0000        	ldw	x,#L702
1712  043a cd0000        	call	_assert_failed
1714  043d 5b04          	addw	sp,#4
1715  043f               L202:
1716                     ; 345   if (NewState != DISABLE)
1718  043f 0d01          	tnz	(OFST+1,sp)
1719  0441 2706          	jreq	L325
1720                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1722  0443 72105300      	bset	21248,#0
1724  0447 2004          	jra	L525
1725  0449               L325:
1726                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1728  0449 72115300      	bres	21248,#0
1729  044d               L525:
1730                     ; 353 }
1733  044d 84            	pop	a
1734  044e 81            	ret
1814                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1814                     ; 369 {
1815                     	switch	.text
1816  044f               _TIM2_ITConfig:
1818  044f 89            	pushw	x
1819       00000000      OFST:	set	0
1822                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1824  0450 9e            	ld	a,xh
1825  0451 4d            	tnz	a
1826  0452 2708          	jreq	L602
1827  0454 9e            	ld	a,xh
1828  0455 a110          	cp	a,#16
1829  0457 2403          	jruge	L602
1830  0459 4f            	clr	a
1831  045a 2010          	jra	L012
1832  045c               L602:
1833  045c ae0173        	ldw	x,#371
1834  045f 89            	pushw	x
1835  0460 ae0000        	ldw	x,#0
1836  0463 89            	pushw	x
1837  0464 ae0000        	ldw	x,#L702
1838  0467 cd0000        	call	_assert_failed
1840  046a 5b04          	addw	sp,#4
1841  046c               L012:
1842                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1844  046c 0d02          	tnz	(OFST+2,sp)
1845  046e 2706          	jreq	L412
1846  0470 7b02          	ld	a,(OFST+2,sp)
1847  0472 a101          	cp	a,#1
1848  0474 2603          	jrne	L212
1849  0476               L412:
1850  0476 4f            	clr	a
1851  0477 2010          	jra	L612
1852  0479               L212:
1853  0479 ae0174        	ldw	x,#372
1854  047c 89            	pushw	x
1855  047d ae0000        	ldw	x,#0
1856  0480 89            	pushw	x
1857  0481 ae0000        	ldw	x,#L702
1858  0484 cd0000        	call	_assert_failed
1860  0487 5b04          	addw	sp,#4
1861  0489               L612:
1862                     ; 374   if (NewState != DISABLE)
1864  0489 0d02          	tnz	(OFST+2,sp)
1865  048b 270a          	jreq	L565
1866                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1868  048d c65301        	ld	a,21249
1869  0490 1a01          	or	a,(OFST+1,sp)
1870  0492 c75301        	ld	21249,a
1872  0495 2009          	jra	L765
1873  0497               L565:
1874                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1876  0497 7b01          	ld	a,(OFST+1,sp)
1877  0499 43            	cpl	a
1878  049a c45301        	and	a,21249
1879  049d c75301        	ld	21249,a
1880  04a0               L765:
1881                     ; 384 }
1884  04a0 85            	popw	x
1885  04a1 81            	ret
1922                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1922                     ; 393 {
1923                     	switch	.text
1924  04a2               _TIM2_UpdateDisableConfig:
1926  04a2 88            	push	a
1927       00000000      OFST:	set	0
1930                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1932  04a3 4d            	tnz	a
1933  04a4 2704          	jreq	L422
1934  04a6 a101          	cp	a,#1
1935  04a8 2603          	jrne	L222
1936  04aa               L422:
1937  04aa 4f            	clr	a
1938  04ab 2010          	jra	L622
1939  04ad               L222:
1940  04ad ae018b        	ldw	x,#395
1941  04b0 89            	pushw	x
1942  04b1 ae0000        	ldw	x,#0
1943  04b4 89            	pushw	x
1944  04b5 ae0000        	ldw	x,#L702
1945  04b8 cd0000        	call	_assert_failed
1947  04bb 5b04          	addw	sp,#4
1948  04bd               L622:
1949                     ; 398   if (NewState != DISABLE)
1951  04bd 0d01          	tnz	(OFST+1,sp)
1952  04bf 2706          	jreq	L706
1953                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1955  04c1 72125300      	bset	21248,#1
1957  04c5 2004          	jra	L116
1958  04c7               L706:
1959                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1961  04c7 72135300      	bres	21248,#1
1962  04cb               L116:
1963                     ; 406 }
1966  04cb 84            	pop	a
1967  04cc 81            	ret
2026                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
2026                     ; 417 {
2027                     	switch	.text
2028  04cd               _TIM2_UpdateRequestConfig:
2030  04cd 88            	push	a
2031       00000000      OFST:	set	0
2034                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
2036  04ce 4d            	tnz	a
2037  04cf 2704          	jreq	L432
2038  04d1 a101          	cp	a,#1
2039  04d3 2603          	jrne	L232
2040  04d5               L432:
2041  04d5 4f            	clr	a
2042  04d6 2010          	jra	L632
2043  04d8               L232:
2044  04d8 ae01a3        	ldw	x,#419
2045  04db 89            	pushw	x
2046  04dc ae0000        	ldw	x,#0
2047  04df 89            	pushw	x
2048  04e0 ae0000        	ldw	x,#L702
2049  04e3 cd0000        	call	_assert_failed
2051  04e6 5b04          	addw	sp,#4
2052  04e8               L632:
2053                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
2055  04e8 0d01          	tnz	(OFST+1,sp)
2056  04ea 2706          	jreq	L146
2057                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
2059  04ec 72145300      	bset	21248,#2
2061  04f0 2004          	jra	L346
2062  04f2               L146:
2063                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
2065  04f2 72155300      	bres	21248,#2
2066  04f6               L346:
2067                     ; 430 }
2070  04f6 84            	pop	a
2071  04f7 81            	ret
2129                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
2129                     ; 441 {
2130                     	switch	.text
2131  04f8               _TIM2_SelectOnePulseMode:
2133  04f8 88            	push	a
2134       00000000      OFST:	set	0
2137                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
2139  04f9 a101          	cp	a,#1
2140  04fb 2703          	jreq	L442
2141  04fd 4d            	tnz	a
2142  04fe 2603          	jrne	L242
2143  0500               L442:
2144  0500 4f            	clr	a
2145  0501 2010          	jra	L642
2146  0503               L242:
2147  0503 ae01bb        	ldw	x,#443
2148  0506 89            	pushw	x
2149  0507 ae0000        	ldw	x,#0
2150  050a 89            	pushw	x
2151  050b ae0000        	ldw	x,#L702
2152  050e cd0000        	call	_assert_failed
2154  0511 5b04          	addw	sp,#4
2155  0513               L642:
2156                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
2158  0513 0d01          	tnz	(OFST+1,sp)
2159  0515 2706          	jreq	L376
2160                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
2162  0517 72165300      	bset	21248,#3
2164  051b 2004          	jra	L576
2165  051d               L376:
2166                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
2168  051d 72175300      	bres	21248,#3
2169  0521               L576:
2170                     ; 454 }
2173  0521 84            	pop	a
2174  0522 81            	ret
2243                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2243                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2243                     ; 486 {
2244                     	switch	.text
2245  0523               _TIM2_PrescalerConfig:
2247  0523 89            	pushw	x
2248       00000000      OFST:	set	0
2251                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2253  0524 9f            	ld	a,xl
2254  0525 4d            	tnz	a
2255  0526 2705          	jreq	L452
2256  0528 9f            	ld	a,xl
2257  0529 a101          	cp	a,#1
2258  052b 2603          	jrne	L252
2259  052d               L452:
2260  052d 4f            	clr	a
2261  052e 2010          	jra	L652
2262  0530               L252:
2263  0530 ae01e8        	ldw	x,#488
2264  0533 89            	pushw	x
2265  0534 ae0000        	ldw	x,#0
2266  0537 89            	pushw	x
2267  0538 ae0000        	ldw	x,#L702
2268  053b cd0000        	call	_assert_failed
2270  053e 5b04          	addw	sp,#4
2271  0540               L652:
2272                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2274  0540 0d01          	tnz	(OFST+1,sp)
2275  0542 275a          	jreq	L262
2276  0544 7b01          	ld	a,(OFST+1,sp)
2277  0546 a101          	cp	a,#1
2278  0548 2754          	jreq	L262
2279  054a 7b01          	ld	a,(OFST+1,sp)
2280  054c a102          	cp	a,#2
2281  054e 274e          	jreq	L262
2282  0550 7b01          	ld	a,(OFST+1,sp)
2283  0552 a103          	cp	a,#3
2284  0554 2748          	jreq	L262
2285  0556 7b01          	ld	a,(OFST+1,sp)
2286  0558 a104          	cp	a,#4
2287  055a 2742          	jreq	L262
2288  055c 7b01          	ld	a,(OFST+1,sp)
2289  055e a105          	cp	a,#5
2290  0560 273c          	jreq	L262
2291  0562 7b01          	ld	a,(OFST+1,sp)
2292  0564 a106          	cp	a,#6
2293  0566 2736          	jreq	L262
2294  0568 7b01          	ld	a,(OFST+1,sp)
2295  056a a107          	cp	a,#7
2296  056c 2730          	jreq	L262
2297  056e 7b01          	ld	a,(OFST+1,sp)
2298  0570 a108          	cp	a,#8
2299  0572 272a          	jreq	L262
2300  0574 7b01          	ld	a,(OFST+1,sp)
2301  0576 a109          	cp	a,#9
2302  0578 2724          	jreq	L262
2303  057a 7b01          	ld	a,(OFST+1,sp)
2304  057c a10a          	cp	a,#10
2305  057e 271e          	jreq	L262
2306  0580 7b01          	ld	a,(OFST+1,sp)
2307  0582 a10b          	cp	a,#11
2308  0584 2718          	jreq	L262
2309  0586 7b01          	ld	a,(OFST+1,sp)
2310  0588 a10c          	cp	a,#12
2311  058a 2712          	jreq	L262
2312  058c 7b01          	ld	a,(OFST+1,sp)
2313  058e a10d          	cp	a,#13
2314  0590 270c          	jreq	L262
2315  0592 7b01          	ld	a,(OFST+1,sp)
2316  0594 a10e          	cp	a,#14
2317  0596 2706          	jreq	L262
2318  0598 7b01          	ld	a,(OFST+1,sp)
2319  059a a10f          	cp	a,#15
2320  059c 2603          	jrne	L062
2321  059e               L262:
2322  059e 4f            	clr	a
2323  059f 2010          	jra	L462
2324  05a1               L062:
2325  05a1 ae01e9        	ldw	x,#489
2326  05a4 89            	pushw	x
2327  05a5 ae0000        	ldw	x,#0
2328  05a8 89            	pushw	x
2329  05a9 ae0000        	ldw	x,#L702
2330  05ac cd0000        	call	_assert_failed
2332  05af 5b04          	addw	sp,#4
2333  05b1               L462:
2334                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2336  05b1 7b01          	ld	a,(OFST+1,sp)
2337  05b3 c7530c        	ld	21260,a
2338                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2340  05b6 7b02          	ld	a,(OFST+2,sp)
2341  05b8 c75304        	ld	21252,a
2342                     ; 496 }
2345  05bb 85            	popw	x
2346  05bc 81            	ret
2405                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2405                     ; 508 {
2406                     	switch	.text
2407  05bd               _TIM2_ForcedOC1Config:
2409  05bd 88            	push	a
2410       00000000      OFST:	set	0
2413                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2415  05be a150          	cp	a,#80
2416  05c0 2704          	jreq	L272
2417  05c2 a140          	cp	a,#64
2418  05c4 2603          	jrne	L072
2419  05c6               L272:
2420  05c6 4f            	clr	a
2421  05c7 2010          	jra	L472
2422  05c9               L072:
2423  05c9 ae01fe        	ldw	x,#510
2424  05cc 89            	pushw	x
2425  05cd ae0000        	ldw	x,#0
2426  05d0 89            	pushw	x
2427  05d1 ae0000        	ldw	x,#L702
2428  05d4 cd0000        	call	_assert_failed
2430  05d7 5b04          	addw	sp,#4
2431  05d9               L472:
2432                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2432                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2434  05d9 c65305        	ld	a,21253
2435  05dc a48f          	and	a,#143
2436  05de 1a01          	or	a,(OFST+1,sp)
2437  05e0 c75305        	ld	21253,a
2438                     ; 515 }
2441  05e3 84            	pop	a
2442  05e4 81            	ret
2479                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2479                     ; 527 {
2480                     	switch	.text
2481  05e5               _TIM2_ForcedOC2Config:
2483  05e5 88            	push	a
2484       00000000      OFST:	set	0
2487                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2489  05e6 a150          	cp	a,#80
2490  05e8 2704          	jreq	L203
2491  05ea a140          	cp	a,#64
2492  05ec 2603          	jrne	L003
2493  05ee               L203:
2494  05ee 4f            	clr	a
2495  05ef 2010          	jra	L403
2496  05f1               L003:
2497  05f1 ae0211        	ldw	x,#529
2498  05f4 89            	pushw	x
2499  05f5 ae0000        	ldw	x,#0
2500  05f8 89            	pushw	x
2501  05f9 ae0000        	ldw	x,#L702
2502  05fc cd0000        	call	_assert_failed
2504  05ff 5b04          	addw	sp,#4
2505  0601               L403:
2506                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2506                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2508  0601 c65306        	ld	a,21254
2509  0604 a48f          	and	a,#143
2510  0606 1a01          	or	a,(OFST+1,sp)
2511  0608 c75306        	ld	21254,a
2512                     ; 534 }
2515  060b 84            	pop	a
2516  060c 81            	ret
2553                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2553                     ; 546 {
2554                     	switch	.text
2555  060d               _TIM2_ForcedOC3Config:
2557  060d 88            	push	a
2558       00000000      OFST:	set	0
2561                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2563  060e a150          	cp	a,#80
2564  0610 2704          	jreq	L213
2565  0612 a140          	cp	a,#64
2566  0614 2603          	jrne	L013
2567  0616               L213:
2568  0616 4f            	clr	a
2569  0617 2010          	jra	L413
2570  0619               L013:
2571  0619 ae0224        	ldw	x,#548
2572  061c 89            	pushw	x
2573  061d ae0000        	ldw	x,#0
2574  0620 89            	pushw	x
2575  0621 ae0000        	ldw	x,#L702
2576  0624 cd0000        	call	_assert_failed
2578  0627 5b04          	addw	sp,#4
2579  0629               L413:
2580                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2580                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2582  0629 c65307        	ld	a,21255
2583  062c a48f          	and	a,#143
2584  062e 1a01          	or	a,(OFST+1,sp)
2585  0630 c75307        	ld	21255,a
2586                     ; 553 }
2589  0633 84            	pop	a
2590  0634 81            	ret
2627                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2627                     ; 562 {
2628                     	switch	.text
2629  0635               _TIM2_ARRPreloadConfig:
2631  0635 88            	push	a
2632       00000000      OFST:	set	0
2635                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2637  0636 4d            	tnz	a
2638  0637 2704          	jreq	L223
2639  0639 a101          	cp	a,#1
2640  063b 2603          	jrne	L023
2641  063d               L223:
2642  063d 4f            	clr	a
2643  063e 2010          	jra	L423
2644  0640               L023:
2645  0640 ae0234        	ldw	x,#564
2646  0643 89            	pushw	x
2647  0644 ae0000        	ldw	x,#0
2648  0647 89            	pushw	x
2649  0648 ae0000        	ldw	x,#L702
2650  064b cd0000        	call	_assert_failed
2652  064e 5b04          	addw	sp,#4
2653  0650               L423:
2654                     ; 567   if (NewState != DISABLE)
2656  0650 0d01          	tnz	(OFST+1,sp)
2657  0652 2706          	jreq	L1301
2658                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2660  0654 721e5300      	bset	21248,#7
2662  0658 2004          	jra	L3301
2663  065a               L1301:
2664                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2666  065a 721f5300      	bres	21248,#7
2667  065e               L3301:
2668                     ; 575 }
2671  065e 84            	pop	a
2672  065f 81            	ret
2709                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2709                     ; 584 {
2710                     	switch	.text
2711  0660               _TIM2_OC1PreloadConfig:
2713  0660 88            	push	a
2714       00000000      OFST:	set	0
2717                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2719  0661 4d            	tnz	a
2720  0662 2704          	jreq	L233
2721  0664 a101          	cp	a,#1
2722  0666 2603          	jrne	L033
2723  0668               L233:
2724  0668 4f            	clr	a
2725  0669 2010          	jra	L433
2726  066b               L033:
2727  066b ae024a        	ldw	x,#586
2728  066e 89            	pushw	x
2729  066f ae0000        	ldw	x,#0
2730  0672 89            	pushw	x
2731  0673 ae0000        	ldw	x,#L702
2732  0676 cd0000        	call	_assert_failed
2734  0679 5b04          	addw	sp,#4
2735  067b               L433:
2736                     ; 589   if (NewState != DISABLE)
2738  067b 0d01          	tnz	(OFST+1,sp)
2739  067d 2706          	jreq	L3501
2740                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2742  067f 72165305      	bset	21253,#3
2744  0683 2004          	jra	L5501
2745  0685               L3501:
2746                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2748  0685 72175305      	bres	21253,#3
2749  0689               L5501:
2750                     ; 597 }
2753  0689 84            	pop	a
2754  068a 81            	ret
2791                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2791                     ; 606 {
2792                     	switch	.text
2793  068b               _TIM2_OC2PreloadConfig:
2795  068b 88            	push	a
2796       00000000      OFST:	set	0
2799                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2801  068c 4d            	tnz	a
2802  068d 2704          	jreq	L243
2803  068f a101          	cp	a,#1
2804  0691 2603          	jrne	L043
2805  0693               L243:
2806  0693 4f            	clr	a
2807  0694 2010          	jra	L443
2808  0696               L043:
2809  0696 ae0260        	ldw	x,#608
2810  0699 89            	pushw	x
2811  069a ae0000        	ldw	x,#0
2812  069d 89            	pushw	x
2813  069e ae0000        	ldw	x,#L702
2814  06a1 cd0000        	call	_assert_failed
2816  06a4 5b04          	addw	sp,#4
2817  06a6               L443:
2818                     ; 611   if (NewState != DISABLE)
2820  06a6 0d01          	tnz	(OFST+1,sp)
2821  06a8 2706          	jreq	L5701
2822                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2824  06aa 72165306      	bset	21254,#3
2826  06ae 2004          	jra	L7701
2827  06b0               L5701:
2828                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2830  06b0 72175306      	bres	21254,#3
2831  06b4               L7701:
2832                     ; 619 }
2835  06b4 84            	pop	a
2836  06b5 81            	ret
2873                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2873                     ; 628 {
2874                     	switch	.text
2875  06b6               _TIM2_OC3PreloadConfig:
2877  06b6 88            	push	a
2878       00000000      OFST:	set	0
2881                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2883  06b7 4d            	tnz	a
2884  06b8 2704          	jreq	L253
2885  06ba a101          	cp	a,#1
2886  06bc 2603          	jrne	L053
2887  06be               L253:
2888  06be 4f            	clr	a
2889  06bf 2010          	jra	L453
2890  06c1               L053:
2891  06c1 ae0276        	ldw	x,#630
2892  06c4 89            	pushw	x
2893  06c5 ae0000        	ldw	x,#0
2894  06c8 89            	pushw	x
2895  06c9 ae0000        	ldw	x,#L702
2896  06cc cd0000        	call	_assert_failed
2898  06cf 5b04          	addw	sp,#4
2899  06d1               L453:
2900                     ; 633   if (NewState != DISABLE)
2902  06d1 0d01          	tnz	(OFST+1,sp)
2903  06d3 2706          	jreq	L7111
2904                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2906  06d5 72165307      	bset	21255,#3
2908  06d9 2004          	jra	L1211
2909  06db               L7111:
2910                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2912  06db 72175307      	bres	21255,#3
2913  06df               L1211:
2914                     ; 641 }
2917  06df 84            	pop	a
2918  06e0 81            	ret
2992                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2992                     ; 654 {
2993                     	switch	.text
2994  06e1               _TIM2_GenerateEvent:
2996  06e1 88            	push	a
2997       00000000      OFST:	set	0
3000                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
3002  06e2 4d            	tnz	a
3003  06e3 2703          	jreq	L063
3004  06e5 4f            	clr	a
3005  06e6 2010          	jra	L263
3006  06e8               L063:
3007  06e8 ae0290        	ldw	x,#656
3008  06eb 89            	pushw	x
3009  06ec ae0000        	ldw	x,#0
3010  06ef 89            	pushw	x
3011  06f0 ae0000        	ldw	x,#L702
3012  06f3 cd0000        	call	_assert_failed
3014  06f6 5b04          	addw	sp,#4
3015  06f8               L263:
3016                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
3018  06f8 7b01          	ld	a,(OFST+1,sp)
3019  06fa c75304        	ld	21252,a
3020                     ; 660 }
3023  06fd 84            	pop	a
3024  06fe 81            	ret
3061                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3061                     ; 671 {
3062                     	switch	.text
3063  06ff               _TIM2_OC1PolarityConfig:
3065  06ff 88            	push	a
3066       00000000      OFST:	set	0
3069                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3071  0700 4d            	tnz	a
3072  0701 2704          	jreq	L073
3073  0703 a122          	cp	a,#34
3074  0705 2603          	jrne	L663
3075  0707               L073:
3076  0707 4f            	clr	a
3077  0708 2010          	jra	L273
3078  070a               L663:
3079  070a ae02a1        	ldw	x,#673
3080  070d 89            	pushw	x
3081  070e ae0000        	ldw	x,#0
3082  0711 89            	pushw	x
3083  0712 ae0000        	ldw	x,#L702
3084  0715 cd0000        	call	_assert_failed
3086  0718 5b04          	addw	sp,#4
3087  071a               L273:
3088                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3090  071a 0d01          	tnz	(OFST+1,sp)
3091  071c 2706          	jreq	L3711
3092                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
3094  071e 72125308      	bset	21256,#1
3096  0722 2004          	jra	L5711
3097  0724               L3711:
3098                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
3100  0724 72135308      	bres	21256,#1
3101  0728               L5711:
3102                     ; 684 }
3105  0728 84            	pop	a
3106  0729 81            	ret
3143                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3143                     ; 695 {
3144                     	switch	.text
3145  072a               _TIM2_OC2PolarityConfig:
3147  072a 88            	push	a
3148       00000000      OFST:	set	0
3151                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3153  072b 4d            	tnz	a
3154  072c 2704          	jreq	L004
3155  072e a122          	cp	a,#34
3156  0730 2603          	jrne	L673
3157  0732               L004:
3158  0732 4f            	clr	a
3159  0733 2010          	jra	L204
3160  0735               L673:
3161  0735 ae02b9        	ldw	x,#697
3162  0738 89            	pushw	x
3163  0739 ae0000        	ldw	x,#0
3164  073c 89            	pushw	x
3165  073d ae0000        	ldw	x,#L702
3166  0740 cd0000        	call	_assert_failed
3168  0743 5b04          	addw	sp,#4
3169  0745               L204:
3170                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3172  0745 0d01          	tnz	(OFST+1,sp)
3173  0747 2706          	jreq	L5121
3174                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
3176  0749 721a5308      	bset	21256,#5
3178  074d 2004          	jra	L7121
3179  074f               L5121:
3180                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
3182  074f 721b5308      	bres	21256,#5
3183  0753               L7121:
3184                     ; 708 }
3187  0753 84            	pop	a
3188  0754 81            	ret
3225                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
3225                     ; 719 {
3226                     	switch	.text
3227  0755               _TIM2_OC3PolarityConfig:
3229  0755 88            	push	a
3230       00000000      OFST:	set	0
3233                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
3235  0756 4d            	tnz	a
3236  0757 2704          	jreq	L014
3237  0759 a122          	cp	a,#34
3238  075b 2603          	jrne	L604
3239  075d               L014:
3240  075d 4f            	clr	a
3241  075e 2010          	jra	L214
3242  0760               L604:
3243  0760 ae02d1        	ldw	x,#721
3244  0763 89            	pushw	x
3245  0764 ae0000        	ldw	x,#0
3246  0767 89            	pushw	x
3247  0768 ae0000        	ldw	x,#L702
3248  076b cd0000        	call	_assert_failed
3250  076e 5b04          	addw	sp,#4
3251  0770               L214:
3252                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
3254  0770 0d01          	tnz	(OFST+1,sp)
3255  0772 2706          	jreq	L7321
3256                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3258  0774 72125309      	bset	21257,#1
3260  0778 2004          	jra	L1421
3261  077a               L7321:
3262                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3264  077a 72135309      	bres	21257,#1
3265  077e               L1421:
3266                     ; 732 }
3269  077e 84            	pop	a
3270  077f 81            	ret
3316                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3316                     ; 746 {
3317                     	switch	.text
3318  0780               _TIM2_CCxCmd:
3320  0780 89            	pushw	x
3321       00000000      OFST:	set	0
3324                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3326  0781 9e            	ld	a,xh
3327  0782 4d            	tnz	a
3328  0783 270a          	jreq	L024
3329  0785 9e            	ld	a,xh
3330  0786 a101          	cp	a,#1
3331  0788 2705          	jreq	L024
3332  078a 9e            	ld	a,xh
3333  078b a102          	cp	a,#2
3334  078d 2603          	jrne	L614
3335  078f               L024:
3336  078f 4f            	clr	a
3337  0790 2010          	jra	L224
3338  0792               L614:
3339  0792 ae02ec        	ldw	x,#748
3340  0795 89            	pushw	x
3341  0796 ae0000        	ldw	x,#0
3342  0799 89            	pushw	x
3343  079a ae0000        	ldw	x,#L702
3344  079d cd0000        	call	_assert_failed
3346  07a0 5b04          	addw	sp,#4
3347  07a2               L224:
3348                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3350  07a2 0d02          	tnz	(OFST+2,sp)
3351  07a4 2706          	jreq	L624
3352  07a6 7b02          	ld	a,(OFST+2,sp)
3353  07a8 a101          	cp	a,#1
3354  07aa 2603          	jrne	L424
3355  07ac               L624:
3356  07ac 4f            	clr	a
3357  07ad 2010          	jra	L034
3358  07af               L424:
3359  07af ae02ed        	ldw	x,#749
3360  07b2 89            	pushw	x
3361  07b3 ae0000        	ldw	x,#0
3362  07b6 89            	pushw	x
3363  07b7 ae0000        	ldw	x,#L702
3364  07ba cd0000        	call	_assert_failed
3366  07bd 5b04          	addw	sp,#4
3367  07bf               L034:
3368                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3370  07bf 0d01          	tnz	(OFST+1,sp)
3371  07c1 2610          	jrne	L5621
3372                     ; 754     if (NewState != DISABLE)
3374  07c3 0d02          	tnz	(OFST+2,sp)
3375  07c5 2706          	jreq	L7621
3376                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3378  07c7 72105308      	bset	21256,#0
3380  07cb 202a          	jra	L3721
3381  07cd               L7621:
3382                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3384  07cd 72115308      	bres	21256,#0
3385  07d1 2024          	jra	L3721
3386  07d3               L5621:
3387                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3389  07d3 7b01          	ld	a,(OFST+1,sp)
3390  07d5 a101          	cp	a,#1
3391  07d7 2610          	jrne	L5721
3392                     ; 767     if (NewState != DISABLE)
3394  07d9 0d02          	tnz	(OFST+2,sp)
3395  07db 2706          	jreq	L7721
3396                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3398  07dd 72185308      	bset	21256,#4
3400  07e1 2014          	jra	L3721
3401  07e3               L7721:
3402                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3404  07e3 72195308      	bres	21256,#4
3405  07e7 200e          	jra	L3721
3406  07e9               L5721:
3407                     ; 779     if (NewState != DISABLE)
3409  07e9 0d02          	tnz	(OFST+2,sp)
3410  07eb 2706          	jreq	L5031
3411                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3413  07ed 72105309      	bset	21257,#0
3415  07f1 2004          	jra	L3721
3416  07f3               L5031:
3417                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3419  07f3 72115309      	bres	21257,#0
3420  07f7               L3721:
3421                     ; 788 }
3424  07f7 85            	popw	x
3425  07f8 81            	ret
3471                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3471                     ; 811 {
3472                     	switch	.text
3473  07f9               _TIM2_SelectOCxM:
3475  07f9 89            	pushw	x
3476       00000000      OFST:	set	0
3479                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3481  07fa 9e            	ld	a,xh
3482  07fb 4d            	tnz	a
3483  07fc 270a          	jreq	L634
3484  07fe 9e            	ld	a,xh
3485  07ff a101          	cp	a,#1
3486  0801 2705          	jreq	L634
3487  0803 9e            	ld	a,xh
3488  0804 a102          	cp	a,#2
3489  0806 2603          	jrne	L434
3490  0808               L634:
3491  0808 4f            	clr	a
3492  0809 2010          	jra	L044
3493  080b               L434:
3494  080b ae032d        	ldw	x,#813
3495  080e 89            	pushw	x
3496  080f ae0000        	ldw	x,#0
3497  0812 89            	pushw	x
3498  0813 ae0000        	ldw	x,#L702
3499  0816 cd0000        	call	_assert_failed
3501  0819 5b04          	addw	sp,#4
3502  081b               L044:
3503                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3505  081b 0d02          	tnz	(OFST+2,sp)
3506  081d 272a          	jreq	L444
3507  081f 7b02          	ld	a,(OFST+2,sp)
3508  0821 a110          	cp	a,#16
3509  0823 2724          	jreq	L444
3510  0825 7b02          	ld	a,(OFST+2,sp)
3511  0827 a120          	cp	a,#32
3512  0829 271e          	jreq	L444
3513  082b 7b02          	ld	a,(OFST+2,sp)
3514  082d a130          	cp	a,#48
3515  082f 2718          	jreq	L444
3516  0831 7b02          	ld	a,(OFST+2,sp)
3517  0833 a160          	cp	a,#96
3518  0835 2712          	jreq	L444
3519  0837 7b02          	ld	a,(OFST+2,sp)
3520  0839 a170          	cp	a,#112
3521  083b 270c          	jreq	L444
3522  083d 7b02          	ld	a,(OFST+2,sp)
3523  083f a150          	cp	a,#80
3524  0841 2706          	jreq	L444
3525  0843 7b02          	ld	a,(OFST+2,sp)
3526  0845 a140          	cp	a,#64
3527  0847 2603          	jrne	L244
3528  0849               L444:
3529  0849 4f            	clr	a
3530  084a 2010          	jra	L644
3531  084c               L244:
3532  084c ae032e        	ldw	x,#814
3533  084f 89            	pushw	x
3534  0850 ae0000        	ldw	x,#0
3535  0853 89            	pushw	x
3536  0854 ae0000        	ldw	x,#L702
3537  0857 cd0000        	call	_assert_failed
3539  085a 5b04          	addw	sp,#4
3540  085c               L644:
3541                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3543  085c 0d01          	tnz	(OFST+1,sp)
3544  085e 2610          	jrne	L3331
3545                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3547  0860 72115308      	bres	21256,#0
3548                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3548                     ; 823                             | (uint8_t)TIM2_OCMode);
3550  0864 c65305        	ld	a,21253
3551  0867 a48f          	and	a,#143
3552  0869 1a02          	or	a,(OFST+2,sp)
3553  086b c75305        	ld	21253,a
3555  086e 2024          	jra	L5331
3556  0870               L3331:
3557                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3559  0870 7b01          	ld	a,(OFST+1,sp)
3560  0872 a101          	cp	a,#1
3561  0874 2610          	jrne	L7331
3562                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3564  0876 72195308      	bres	21256,#4
3565                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3565                     ; 832                             | (uint8_t)TIM2_OCMode);
3567  087a c65306        	ld	a,21254
3568  087d a48f          	and	a,#143
3569  087f 1a02          	or	a,(OFST+2,sp)
3570  0881 c75306        	ld	21254,a
3572  0884 200e          	jra	L5331
3573  0886               L7331:
3574                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3576  0886 72115309      	bres	21257,#0
3577                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3577                     ; 841                             | (uint8_t)TIM2_OCMode);
3579  088a c65307        	ld	a,21255
3580  088d a48f          	and	a,#143
3581  088f 1a02          	or	a,(OFST+2,sp)
3582  0891 c75307        	ld	21255,a
3583  0894               L5331:
3584                     ; 843 }
3587  0894 85            	popw	x
3588  0895 81            	ret
3622                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3622                     ; 852 {
3623                     	switch	.text
3624  0896               _TIM2_SetCounter:
3628                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3630  0896 9e            	ld	a,xh
3631  0897 c7530a        	ld	21258,a
3632                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3634  089a 9f            	ld	a,xl
3635  089b c7530b        	ld	21259,a
3636                     ; 856 }
3639  089e 81            	ret
3673                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3673                     ; 865 {
3674                     	switch	.text
3675  089f               _TIM2_SetAutoreload:
3679                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3681  089f 9e            	ld	a,xh
3682  08a0 c7530d        	ld	21261,a
3683                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3685  08a3 9f            	ld	a,xl
3686  08a4 c7530e        	ld	21262,a
3687                     ; 869 }
3690  08a7 81            	ret
3724                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3724                     ; 878 {
3725                     	switch	.text
3726  08a8               _TIM2_SetCompare1:
3730                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3732  08a8 9e            	ld	a,xh
3733  08a9 c7530f        	ld	21263,a
3734                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3736  08ac 9f            	ld	a,xl
3737  08ad c75310        	ld	21264,a
3738                     ; 882 }
3741  08b0 81            	ret
3775                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3775                     ; 891 {
3776                     	switch	.text
3777  08b1               _TIM2_SetCompare2:
3781                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3783  08b1 9e            	ld	a,xh
3784  08b2 c75311        	ld	21265,a
3785                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3787  08b5 9f            	ld	a,xl
3788  08b6 c75312        	ld	21266,a
3789                     ; 895 }
3792  08b9 81            	ret
3826                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3826                     ; 904 {
3827                     	switch	.text
3828  08ba               _TIM2_SetCompare3:
3832                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3834  08ba 9e            	ld	a,xh
3835  08bb c75313        	ld	21267,a
3836                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3838  08be 9f            	ld	a,xl
3839  08bf c75314        	ld	21268,a
3840                     ; 908 }
3843  08c2 81            	ret
3880                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3880                     ; 921 {
3881                     	switch	.text
3882  08c3               _TIM2_SetIC1Prescaler:
3884  08c3 88            	push	a
3885       00000000      OFST:	set	0
3888                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3890  08c4 4d            	tnz	a
3891  08c5 270c          	jreq	L664
3892  08c7 a104          	cp	a,#4
3893  08c9 2708          	jreq	L664
3894  08cb a108          	cp	a,#8
3895  08cd 2704          	jreq	L664
3896  08cf a10c          	cp	a,#12
3897  08d1 2603          	jrne	L464
3898  08d3               L664:
3899  08d3 4f            	clr	a
3900  08d4 2010          	jra	L074
3901  08d6               L464:
3902  08d6 ae039b        	ldw	x,#923
3903  08d9 89            	pushw	x
3904  08da ae0000        	ldw	x,#0
3905  08dd 89            	pushw	x
3906  08de ae0000        	ldw	x,#L702
3907  08e1 cd0000        	call	_assert_failed
3909  08e4 5b04          	addw	sp,#4
3910  08e6               L074:
3911                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3911                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3913  08e6 c65305        	ld	a,21253
3914  08e9 a4f3          	and	a,#243
3915  08eb 1a01          	or	a,(OFST+1,sp)
3916  08ed c75305        	ld	21253,a
3917                     ; 928 }
3920  08f0 84            	pop	a
3921  08f1 81            	ret
3958                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3958                     ; 941 {
3959                     	switch	.text
3960  08f2               _TIM2_SetIC2Prescaler:
3962  08f2 88            	push	a
3963       00000000      OFST:	set	0
3966                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3968  08f3 4d            	tnz	a
3969  08f4 270c          	jreq	L674
3970  08f6 a104          	cp	a,#4
3971  08f8 2708          	jreq	L674
3972  08fa a108          	cp	a,#8
3973  08fc 2704          	jreq	L674
3974  08fe a10c          	cp	a,#12
3975  0900 2603          	jrne	L474
3976  0902               L674:
3977  0902 4f            	clr	a
3978  0903 2010          	jra	L005
3979  0905               L474:
3980  0905 ae03af        	ldw	x,#943
3981  0908 89            	pushw	x
3982  0909 ae0000        	ldw	x,#0
3983  090c 89            	pushw	x
3984  090d ae0000        	ldw	x,#L702
3985  0910 cd0000        	call	_assert_failed
3987  0913 5b04          	addw	sp,#4
3988  0915               L005:
3989                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3989                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3991  0915 c65306        	ld	a,21254
3992  0918 a4f3          	and	a,#243
3993  091a 1a01          	or	a,(OFST+1,sp)
3994  091c c75306        	ld	21254,a
3995                     ; 948 }
3998  091f 84            	pop	a
3999  0920 81            	ret
4036                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
4036                     ; 961 {
4037                     	switch	.text
4038  0921               _TIM2_SetIC3Prescaler:
4040  0921 88            	push	a
4041       00000000      OFST:	set	0
4044                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
4046  0922 4d            	tnz	a
4047  0923 270c          	jreq	L605
4048  0925 a104          	cp	a,#4
4049  0927 2708          	jreq	L605
4050  0929 a108          	cp	a,#8
4051  092b 2704          	jreq	L605
4052  092d a10c          	cp	a,#12
4053  092f 2603          	jrne	L405
4054  0931               L605:
4055  0931 4f            	clr	a
4056  0932 2010          	jra	L015
4057  0934               L405:
4058  0934 ae03c4        	ldw	x,#964
4059  0937 89            	pushw	x
4060  0938 ae0000        	ldw	x,#0
4061  093b 89            	pushw	x
4062  093c ae0000        	ldw	x,#L702
4063  093f cd0000        	call	_assert_failed
4065  0942 5b04          	addw	sp,#4
4066  0944               L015:
4067                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
4067                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
4069  0944 c65307        	ld	a,21255
4070  0947 a4f3          	and	a,#243
4071  0949 1a01          	or	a,(OFST+1,sp)
4072  094b c75307        	ld	21255,a
4073                     ; 968 }
4076  094e 84            	pop	a
4077  094f 81            	ret
4129                     ; 975 uint16_t TIM2_GetCapture1(void)
4129                     ; 976 {
4130                     	switch	.text
4131  0950               _TIM2_GetCapture1:
4133  0950 5204          	subw	sp,#4
4134       00000004      OFST:	set	4
4137                     ; 978   uint16_t tmpccr1 = 0;
4139                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
4143                     ; 981   tmpccr1h = TIM2->CCR1H;
4145  0952 c6530f        	ld	a,21263
4146  0955 6b02          	ld	(OFST-2,sp),a
4147                     ; 982   tmpccr1l = TIM2->CCR1L;
4149  0957 c65310        	ld	a,21264
4150  095a 6b01          	ld	(OFST-3,sp),a
4151                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
4153  095c 7b01          	ld	a,(OFST-3,sp)
4154  095e 5f            	clrw	x
4155  095f 97            	ld	xl,a
4156  0960 1f03          	ldw	(OFST-1,sp),x
4157                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
4159  0962 7b02          	ld	a,(OFST-2,sp)
4160  0964 5f            	clrw	x
4161  0965 97            	ld	xl,a
4162  0966 4f            	clr	a
4163  0967 02            	rlwa	x,a
4164  0968 01            	rrwa	x,a
4165  0969 1a04          	or	a,(OFST+0,sp)
4166  096b 01            	rrwa	x,a
4167  096c 1a03          	or	a,(OFST-1,sp)
4168  096e 01            	rrwa	x,a
4169  096f 1f03          	ldw	(OFST-1,sp),x
4170                     ; 987   return (uint16_t)tmpccr1;
4172  0971 1e03          	ldw	x,(OFST-1,sp)
4175  0973 5b04          	addw	sp,#4
4176  0975 81            	ret
4228                     ; 995 uint16_t TIM2_GetCapture2(void)
4228                     ; 996 {
4229                     	switch	.text
4230  0976               _TIM2_GetCapture2:
4232  0976 5204          	subw	sp,#4
4233       00000004      OFST:	set	4
4236                     ; 998   uint16_t tmpccr2 = 0;
4238                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
4242                     ; 1001   tmpccr2h = TIM2->CCR2H;
4244  0978 c65311        	ld	a,21265
4245  097b 6b02          	ld	(OFST-2,sp),a
4246                     ; 1002   tmpccr2l = TIM2->CCR2L;
4248  097d c65312        	ld	a,21266
4249  0980 6b01          	ld	(OFST-3,sp),a
4250                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
4252  0982 7b01          	ld	a,(OFST-3,sp)
4253  0984 5f            	clrw	x
4254  0985 97            	ld	xl,a
4255  0986 1f03          	ldw	(OFST-1,sp),x
4256                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
4258  0988 7b02          	ld	a,(OFST-2,sp)
4259  098a 5f            	clrw	x
4260  098b 97            	ld	xl,a
4261  098c 4f            	clr	a
4262  098d 02            	rlwa	x,a
4263  098e 01            	rrwa	x,a
4264  098f 1a04          	or	a,(OFST+0,sp)
4265  0991 01            	rrwa	x,a
4266  0992 1a03          	or	a,(OFST-1,sp)
4267  0994 01            	rrwa	x,a
4268  0995 1f03          	ldw	(OFST-1,sp),x
4269                     ; 1007   return (uint16_t)tmpccr2;
4271  0997 1e03          	ldw	x,(OFST-1,sp)
4274  0999 5b04          	addw	sp,#4
4275  099b 81            	ret
4327                     ; 1015 uint16_t TIM2_GetCapture3(void)
4327                     ; 1016 {
4328                     	switch	.text
4329  099c               _TIM2_GetCapture3:
4331  099c 5204          	subw	sp,#4
4332       00000004      OFST:	set	4
4335                     ; 1018   uint16_t tmpccr3 = 0;
4337                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
4341                     ; 1021   tmpccr3h = TIM2->CCR3H;
4343  099e c65313        	ld	a,21267
4344  09a1 6b02          	ld	(OFST-2,sp),a
4345                     ; 1022   tmpccr3l = TIM2->CCR3L;
4347  09a3 c65314        	ld	a,21268
4348  09a6 6b01          	ld	(OFST-3,sp),a
4349                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
4351  09a8 7b01          	ld	a,(OFST-3,sp)
4352  09aa 5f            	clrw	x
4353  09ab 97            	ld	xl,a
4354  09ac 1f03          	ldw	(OFST-1,sp),x
4355                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4357  09ae 7b02          	ld	a,(OFST-2,sp)
4358  09b0 5f            	clrw	x
4359  09b1 97            	ld	xl,a
4360  09b2 4f            	clr	a
4361  09b3 02            	rlwa	x,a
4362  09b4 01            	rrwa	x,a
4363  09b5 1a04          	or	a,(OFST+0,sp)
4364  09b7 01            	rrwa	x,a
4365  09b8 1a03          	or	a,(OFST-1,sp)
4366  09ba 01            	rrwa	x,a
4367  09bb 1f03          	ldw	(OFST-1,sp),x
4368                     ; 1027   return (uint16_t)tmpccr3;
4370  09bd 1e03          	ldw	x,(OFST-1,sp)
4373  09bf 5b04          	addw	sp,#4
4374  09c1 81            	ret
4408                     ; 1035 uint16_t TIM2_GetCounter(void)
4408                     ; 1036 {
4409                     	switch	.text
4410  09c2               _TIM2_GetCounter:
4412  09c2 89            	pushw	x
4413       00000002      OFST:	set	2
4416                     ; 1037   uint16_t tmpcntr = 0;
4418                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4420  09c3 c6530a        	ld	a,21258
4421  09c6 5f            	clrw	x
4422  09c7 97            	ld	xl,a
4423  09c8 4f            	clr	a
4424  09c9 02            	rlwa	x,a
4425  09ca 1f01          	ldw	(OFST-1,sp),x
4426                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4428  09cc c6530b        	ld	a,21259
4429  09cf 5f            	clrw	x
4430  09d0 97            	ld	xl,a
4431  09d1 01            	rrwa	x,a
4432  09d2 1a02          	or	a,(OFST+0,sp)
4433  09d4 01            	rrwa	x,a
4434  09d5 1a01          	or	a,(OFST-1,sp)
4435  09d7 01            	rrwa	x,a
4438  09d8 5b02          	addw	sp,#2
4439  09da 81            	ret
4463                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4463                     ; 1050 {
4464                     	switch	.text
4465  09db               _TIM2_GetPrescaler:
4469                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4471  09db c6530c        	ld	a,21260
4474  09de 81            	ret
4614                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4614                     ; 1069 {
4615                     	switch	.text
4616  09df               _TIM2_GetFlagStatus:
4618  09df 89            	pushw	x
4619  09e0 89            	pushw	x
4620       00000002      OFST:	set	2
4623                     ; 1070   FlagStatus bitstatus = RESET;
4625                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4629                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4631  09e1 a30001        	cpw	x,#1
4632  09e4 271e          	jreq	L035
4633  09e6 a30002        	cpw	x,#2
4634  09e9 2719          	jreq	L035
4635  09eb a30004        	cpw	x,#4
4636  09ee 2714          	jreq	L035
4637  09f0 a30008        	cpw	x,#8
4638  09f3 270f          	jreq	L035
4639  09f5 a30200        	cpw	x,#512
4640  09f8 270a          	jreq	L035
4641  09fa a30400        	cpw	x,#1024
4642  09fd 2705          	jreq	L035
4643  09ff a30800        	cpw	x,#2048
4644  0a02 2603          	jrne	L625
4645  0a04               L035:
4646  0a04 4f            	clr	a
4647  0a05 2010          	jra	L235
4648  0a07               L625:
4649  0a07 ae0432        	ldw	x,#1074
4650  0a0a 89            	pushw	x
4651  0a0b ae0000        	ldw	x,#0
4652  0a0e 89            	pushw	x
4653  0a0f ae0000        	ldw	x,#L702
4654  0a12 cd0000        	call	_assert_failed
4656  0a15 5b04          	addw	sp,#4
4657  0a17               L235:
4658                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4660  0a17 c65302        	ld	a,21250
4661  0a1a 1404          	and	a,(OFST+2,sp)
4662  0a1c 6b01          	ld	(OFST-1,sp),a
4663                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4665  0a1e 7b03          	ld	a,(OFST+1,sp)
4666  0a20 6b02          	ld	(OFST+0,sp),a
4667                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4669  0a22 c65303        	ld	a,21251
4670  0a25 1402          	and	a,(OFST+0,sp)
4671  0a27 1a01          	or	a,(OFST-1,sp)
4672  0a29 2706          	jreq	L7371
4673                     ; 1081     bitstatus = SET;
4675  0a2b a601          	ld	a,#1
4676  0a2d 6b02          	ld	(OFST+0,sp),a
4678  0a2f 2002          	jra	L1471
4679  0a31               L7371:
4680                     ; 1085     bitstatus = RESET;
4682  0a31 0f02          	clr	(OFST+0,sp)
4683  0a33               L1471:
4684                     ; 1087   return (FlagStatus)bitstatus;
4686  0a33 7b02          	ld	a,(OFST+0,sp)
4689  0a35 5b04          	addw	sp,#4
4690  0a37 81            	ret
4726                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4726                     ; 1104 {
4727                     	switch	.text
4728  0a38               _TIM2_ClearFlag:
4730  0a38 89            	pushw	x
4731       00000000      OFST:	set	0
4734                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4736  0a39 01            	rrwa	x,a
4737  0a3a a4f0          	and	a,#240
4738  0a3c 01            	rrwa	x,a
4739  0a3d a4f1          	and	a,#241
4740  0a3f 01            	rrwa	x,a
4741  0a40 a30000        	cpw	x,#0
4742  0a43 2607          	jrne	L635
4743  0a45 1e01          	ldw	x,(OFST+1,sp)
4744  0a47 2703          	jreq	L635
4745  0a49 4f            	clr	a
4746  0a4a 2010          	jra	L045
4747  0a4c               L635:
4748  0a4c ae0452        	ldw	x,#1106
4749  0a4f 89            	pushw	x
4750  0a50 ae0000        	ldw	x,#0
4751  0a53 89            	pushw	x
4752  0a54 ae0000        	ldw	x,#L702
4753  0a57 cd0000        	call	_assert_failed
4755  0a5a 5b04          	addw	sp,#4
4756  0a5c               L045:
4757                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4759  0a5c 7b02          	ld	a,(OFST+2,sp)
4760  0a5e 43            	cpl	a
4761  0a5f c75302        	ld	21250,a
4762                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4764  0a62 35ff5303      	mov	21251,#255
4765                     ; 1111 }
4768  0a66 85            	popw	x
4769  0a67 81            	ret
4834                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4834                     ; 1124 {
4835                     	switch	.text
4836  0a68               _TIM2_GetITStatus:
4838  0a68 88            	push	a
4839  0a69 89            	pushw	x
4840       00000002      OFST:	set	2
4843                     ; 1125   ITStatus bitstatus = RESET;
4845                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4849                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4851  0a6a a101          	cp	a,#1
4852  0a6c 270c          	jreq	L645
4853  0a6e a102          	cp	a,#2
4854  0a70 2708          	jreq	L645
4855  0a72 a104          	cp	a,#4
4856  0a74 2704          	jreq	L645
4857  0a76 a108          	cp	a,#8
4858  0a78 2603          	jrne	L445
4859  0a7a               L645:
4860  0a7a 4f            	clr	a
4861  0a7b 2010          	jra	L055
4862  0a7d               L445:
4863  0a7d ae0469        	ldw	x,#1129
4864  0a80 89            	pushw	x
4865  0a81 ae0000        	ldw	x,#0
4866  0a84 89            	pushw	x
4867  0a85 ae0000        	ldw	x,#L702
4868  0a88 cd0000        	call	_assert_failed
4870  0a8b 5b04          	addw	sp,#4
4871  0a8d               L055:
4872                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4874  0a8d c65302        	ld	a,21250
4875  0a90 1403          	and	a,(OFST+1,sp)
4876  0a92 6b01          	ld	(OFST-1,sp),a
4877                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4879  0a94 c65301        	ld	a,21249
4880  0a97 1403          	and	a,(OFST+1,sp)
4881  0a99 6b02          	ld	(OFST+0,sp),a
4882                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4884  0a9b 0d01          	tnz	(OFST-1,sp)
4885  0a9d 270a          	jreq	L3102
4887  0a9f 0d02          	tnz	(OFST+0,sp)
4888  0aa1 2706          	jreq	L3102
4889                     ; 1137     bitstatus = SET;
4891  0aa3 a601          	ld	a,#1
4892  0aa5 6b02          	ld	(OFST+0,sp),a
4894  0aa7 2002          	jra	L5102
4895  0aa9               L3102:
4896                     ; 1141     bitstatus = RESET;
4898  0aa9 0f02          	clr	(OFST+0,sp)
4899  0aab               L5102:
4900                     ; 1143   return (ITStatus)(bitstatus);
4902  0aab 7b02          	ld	a,(OFST+0,sp)
4905  0aad 5b03          	addw	sp,#3
4906  0aaf 81            	ret
4943                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4943                     ; 1157 {
4944                     	switch	.text
4945  0ab0               _TIM2_ClearITPendingBit:
4947  0ab0 88            	push	a
4948       00000000      OFST:	set	0
4951                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4953  0ab1 4d            	tnz	a
4954  0ab2 2707          	jreq	L455
4955  0ab4 a110          	cp	a,#16
4956  0ab6 2403          	jruge	L455
4957  0ab8 4f            	clr	a
4958  0ab9 2010          	jra	L655
4959  0abb               L455:
4960  0abb ae0487        	ldw	x,#1159
4961  0abe 89            	pushw	x
4962  0abf ae0000        	ldw	x,#0
4963  0ac2 89            	pushw	x
4964  0ac3 ae0000        	ldw	x,#L702
4965  0ac6 cd0000        	call	_assert_failed
4967  0ac9 5b04          	addw	sp,#4
4968  0acb               L655:
4969                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4971  0acb 7b01          	ld	a,(OFST+1,sp)
4972  0acd 43            	cpl	a
4973  0ace c75302        	ld	21250,a
4974                     ; 1163 }
4977  0ad1 84            	pop	a
4978  0ad2 81            	ret
5030                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
5030                     ; 1182                        uint8_t TIM2_ICSelection,
5030                     ; 1183                        uint8_t TIM2_ICFilter)
5030                     ; 1184 {
5031                     	switch	.text
5032  0ad3               L3_TI1_Config:
5034  0ad3 89            	pushw	x
5035  0ad4 88            	push	a
5036       00000001      OFST:	set	1
5039                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
5041  0ad5 72115308      	bres	21256,#0
5042                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
5042                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5044  0ad9 7b06          	ld	a,(OFST+5,sp)
5045  0adb 97            	ld	xl,a
5046  0adc a610          	ld	a,#16
5047  0ade 42            	mul	x,a
5048  0adf 9f            	ld	a,xl
5049  0ae0 1a03          	or	a,(OFST+2,sp)
5050  0ae2 6b01          	ld	(OFST+0,sp),a
5051  0ae4 c65305        	ld	a,21253
5052  0ae7 a40c          	and	a,#12
5053  0ae9 1a01          	or	a,(OFST+0,sp)
5054  0aeb c75305        	ld	21253,a
5055                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5057  0aee 0d02          	tnz	(OFST+1,sp)
5058  0af0 2706          	jreq	L3602
5059                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
5061  0af2 72125308      	bset	21256,#1
5063  0af6 2004          	jra	L5602
5064  0af8               L3602:
5065                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
5067  0af8 72135308      	bres	21256,#1
5068  0afc               L5602:
5069                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
5071  0afc 72105308      	bset	21256,#0
5072                     ; 1203 }
5075  0b00 5b03          	addw	sp,#3
5076  0b02 81            	ret
5128                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
5128                     ; 1222                        uint8_t TIM2_ICSelection,
5128                     ; 1223                        uint8_t TIM2_ICFilter)
5128                     ; 1224 {
5129                     	switch	.text
5130  0b03               L5_TI2_Config:
5132  0b03 89            	pushw	x
5133  0b04 88            	push	a
5134       00000001      OFST:	set	1
5137                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
5139  0b05 72195308      	bres	21256,#4
5140                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
5140                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5142  0b09 7b06          	ld	a,(OFST+5,sp)
5143  0b0b 97            	ld	xl,a
5144  0b0c a610          	ld	a,#16
5145  0b0e 42            	mul	x,a
5146  0b0f 9f            	ld	a,xl
5147  0b10 1a03          	or	a,(OFST+2,sp)
5148  0b12 6b01          	ld	(OFST+0,sp),a
5149  0b14 c65306        	ld	a,21254
5150  0b17 a40c          	and	a,#12
5151  0b19 1a01          	or	a,(OFST+0,sp)
5152  0b1b c75306        	ld	21254,a
5153                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5155  0b1e 0d02          	tnz	(OFST+1,sp)
5156  0b20 2706          	jreq	L5112
5157                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
5159  0b22 721a5308      	bset	21256,#5
5161  0b26 2004          	jra	L7112
5162  0b28               L5112:
5163                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
5165  0b28 721b5308      	bres	21256,#5
5166  0b2c               L7112:
5167                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
5169  0b2c 72185308      	bset	21256,#4
5170                     ; 1245 }
5173  0b30 5b03          	addw	sp,#3
5174  0b32 81            	ret
5226                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
5226                     ; 1262                        uint8_t TIM2_ICFilter)
5226                     ; 1263 {
5227                     	switch	.text
5228  0b33               L7_TI3_Config:
5230  0b33 89            	pushw	x
5231  0b34 88            	push	a
5232       00000001      OFST:	set	1
5235                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
5237  0b35 72115309      	bres	21257,#0
5238                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
5238                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
5240  0b39 7b06          	ld	a,(OFST+5,sp)
5241  0b3b 97            	ld	xl,a
5242  0b3c a610          	ld	a,#16
5243  0b3e 42            	mul	x,a
5244  0b3f 9f            	ld	a,xl
5245  0b40 1a03          	or	a,(OFST+2,sp)
5246  0b42 6b01          	ld	(OFST+0,sp),a
5247  0b44 c65307        	ld	a,21255
5248  0b47 a40c          	and	a,#12
5249  0b49 1a01          	or	a,(OFST+0,sp)
5250  0b4b c75307        	ld	21255,a
5251                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
5253  0b4e 0d02          	tnz	(OFST+1,sp)
5254  0b50 2706          	jreq	L7412
5255                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
5257  0b52 72125309      	bset	21257,#1
5259  0b56 2004          	jra	L1512
5260  0b58               L7412:
5261                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
5263  0b58 72135309      	bres	21257,#1
5264  0b5c               L1512:
5265                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
5267  0b5c 72105309      	bset	21257,#0
5268                     ; 1283 }
5271  0b60 5b03          	addw	sp,#3
5272  0b62 81            	ret
5285                     	xdef	_TIM2_ClearITPendingBit
5286                     	xdef	_TIM2_GetITStatus
5287                     	xdef	_TIM2_ClearFlag
5288                     	xdef	_TIM2_GetFlagStatus
5289                     	xdef	_TIM2_GetPrescaler
5290                     	xdef	_TIM2_GetCounter
5291                     	xdef	_TIM2_GetCapture3
5292                     	xdef	_TIM2_GetCapture2
5293                     	xdef	_TIM2_GetCapture1
5294                     	xdef	_TIM2_SetIC3Prescaler
5295                     	xdef	_TIM2_SetIC2Prescaler
5296                     	xdef	_TIM2_SetIC1Prescaler
5297                     	xdef	_TIM2_SetCompare3
5298                     	xdef	_TIM2_SetCompare2
5299                     	xdef	_TIM2_SetCompare1
5300                     	xdef	_TIM2_SetAutoreload
5301                     	xdef	_TIM2_SetCounter
5302                     	xdef	_TIM2_SelectOCxM
5303                     	xdef	_TIM2_CCxCmd
5304                     	xdef	_TIM2_OC3PolarityConfig
5305                     	xdef	_TIM2_OC2PolarityConfig
5306                     	xdef	_TIM2_OC1PolarityConfig
5307                     	xdef	_TIM2_GenerateEvent
5308                     	xdef	_TIM2_OC3PreloadConfig
5309                     	xdef	_TIM2_OC2PreloadConfig
5310                     	xdef	_TIM2_OC1PreloadConfig
5311                     	xdef	_TIM2_ARRPreloadConfig
5312                     	xdef	_TIM2_ForcedOC3Config
5313                     	xdef	_TIM2_ForcedOC2Config
5314                     	xdef	_TIM2_ForcedOC1Config
5315                     	xdef	_TIM2_PrescalerConfig
5316                     	xdef	_TIM2_SelectOnePulseMode
5317                     	xdef	_TIM2_UpdateRequestConfig
5318                     	xdef	_TIM2_UpdateDisableConfig
5319                     	xdef	_TIM2_ITConfig
5320                     	xdef	_TIM2_Cmd
5321                     	xdef	_TIM2_PWMIConfig
5322                     	xdef	_TIM2_ICInit
5323                     	xdef	_TIM2_OC3Init
5324                     	xdef	_TIM2_OC2Init
5325                     	xdef	_TIM2_OC1Init
5326                     	xdef	_TIM2_TimeBaseInit
5327                     	xdef	_TIM2_DeInit
5328                     	xref	_assert_failed
5329                     .const:	section	.text
5330  0000               L702:
5331  0000 6c6962726172  	dc.b	"library\stm8s_tim2"
5332  0012 2e6300        	dc.b	".c",0
5352                     	end
