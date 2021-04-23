   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 51 void TIM3_DeInit(void)
  42                     ; 52 {
  44                     	switch	.text
  45  0000               _TIM3_DeInit:
  49                     ; 53   TIM3->CR1 = (uint8_t)TIM3_CR1_RESET_VALUE;
  51  0000 725f5320      	clr	21280
  52                     ; 54   TIM3->IER = (uint8_t)TIM3_IER_RESET_VALUE;
  54  0004 725f5321      	clr	21281
  55                     ; 55   TIM3->SR2 = (uint8_t)TIM3_SR2_RESET_VALUE;
  57  0008 725f5323      	clr	21283
  58                     ; 58   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  60  000c 725f5327      	clr	21287
  61                     ; 61   TIM3->CCER1 = (uint8_t)TIM3_CCER1_RESET_VALUE;
  63  0010 725f5327      	clr	21287
  64                     ; 62   TIM3->CCMR1 = (uint8_t)TIM3_CCMR1_RESET_VALUE;
  66  0014 725f5325      	clr	21285
  67                     ; 63   TIM3->CCMR2 = (uint8_t)TIM3_CCMR2_RESET_VALUE;
  69  0018 725f5326      	clr	21286
  70                     ; 64   TIM3->CNTRH = (uint8_t)TIM3_CNTRH_RESET_VALUE;
  72  001c 725f5328      	clr	21288
  73                     ; 65   TIM3->CNTRL = (uint8_t)TIM3_CNTRL_RESET_VALUE;
  75  0020 725f5329      	clr	21289
  76                     ; 66   TIM3->PSCR = (uint8_t)TIM3_PSCR_RESET_VALUE;
  78  0024 725f532a      	clr	21290
  79                     ; 67   TIM3->ARRH  = (uint8_t)TIM3_ARRH_RESET_VALUE;
  81  0028 35ff532b      	mov	21291,#255
  82                     ; 68   TIM3->ARRL  = (uint8_t)TIM3_ARRL_RESET_VALUE;
  84  002c 35ff532c      	mov	21292,#255
  85                     ; 69   TIM3->CCR1H = (uint8_t)TIM3_CCR1H_RESET_VALUE;
  87  0030 725f532d      	clr	21293
  88                     ; 70   TIM3->CCR1L = (uint8_t)TIM3_CCR1L_RESET_VALUE;
  90  0034 725f532e      	clr	21294
  91                     ; 71   TIM3->CCR2H = (uint8_t)TIM3_CCR2H_RESET_VALUE;
  93  0038 725f532f      	clr	21295
  94                     ; 72   TIM3->CCR2L = (uint8_t)TIM3_CCR2L_RESET_VALUE;
  96  003c 725f5330      	clr	21296
  97                     ; 73   TIM3->SR1 = (uint8_t)TIM3_SR1_RESET_VALUE;
  99  0040 725f5322      	clr	21282
 100                     ; 74 }
 103  0044 81            	ret
 271                     ; 82 void TIM3_TimeBaseInit( TIM3_Prescaler_TypeDef TIM3_Prescaler,
 271                     ; 83                         uint16_t TIM3_Period)
 271                     ; 84 {
 272                     	switch	.text
 273  0045               _TIM3_TimeBaseInit:
 275  0045 88            	push	a
 276       00000000      OFST:	set	0
 279                     ; 86   TIM3->PSCR = (uint8_t)(TIM3_Prescaler);
 281  0046 c7532a        	ld	21290,a
 282                     ; 88   TIM3->ARRH = (uint8_t)(TIM3_Period >> 8);
 284  0049 7b04          	ld	a,(OFST+4,sp)
 285  004b c7532b        	ld	21291,a
 286                     ; 89   TIM3->ARRL = (uint8_t)(TIM3_Period);
 288  004e 7b05          	ld	a,(OFST+5,sp)
 289  0050 c7532c        	ld	21292,a
 290                     ; 90 }
 293  0053 84            	pop	a
 294  0054 81            	ret
 452                     ; 100 void TIM3_OC1Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 452                     ; 101                   TIM3_OutputState_TypeDef TIM3_OutputState,
 452                     ; 102                   uint16_t TIM3_Pulse,
 452                     ; 103                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 452                     ; 104 {
 453                     	switch	.text
 454  0055               _TIM3_OC1Init:
 456  0055 89            	pushw	x
 457  0056 88            	push	a
 458       00000001      OFST:	set	1
 461                     ; 106   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 463  0057 9e            	ld	a,xh
 464  0058 4d            	tnz	a
 465  0059 2719          	jreq	L41
 466  005b 9e            	ld	a,xh
 467  005c a110          	cp	a,#16
 468  005e 2714          	jreq	L41
 469  0060 9e            	ld	a,xh
 470  0061 a120          	cp	a,#32
 471  0063 270f          	jreq	L41
 472  0065 9e            	ld	a,xh
 473  0066 a130          	cp	a,#48
 474  0068 270a          	jreq	L41
 475  006a 9e            	ld	a,xh
 476  006b a160          	cp	a,#96
 477  006d 2705          	jreq	L41
 478  006f 9e            	ld	a,xh
 479  0070 a170          	cp	a,#112
 480  0072 2603          	jrne	L21
 481  0074               L41:
 482  0074 4f            	clr	a
 483  0075 2010          	jra	L61
 484  0077               L21:
 485  0077 ae006a        	ldw	x,#106
 486  007a 89            	pushw	x
 487  007b ae0000        	ldw	x,#0
 488  007e 89            	pushw	x
 489  007f ae0000        	ldw	x,#L502
 490  0082 cd0000        	call	_assert_failed
 492  0085 5b04          	addw	sp,#4
 493  0087               L61:
 494                     ; 107   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 496  0087 0d03          	tnz	(OFST+2,sp)
 497  0089 2706          	jreq	L22
 498  008b 7b03          	ld	a,(OFST+2,sp)
 499  008d a111          	cp	a,#17
 500  008f 2603          	jrne	L02
 501  0091               L22:
 502  0091 4f            	clr	a
 503  0092 2010          	jra	L42
 504  0094               L02:
 505  0094 ae006b        	ldw	x,#107
 506  0097 89            	pushw	x
 507  0098 ae0000        	ldw	x,#0
 508  009b 89            	pushw	x
 509  009c ae0000        	ldw	x,#L502
 510  009f cd0000        	call	_assert_failed
 512  00a2 5b04          	addw	sp,#4
 513  00a4               L42:
 514                     ; 108   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 516  00a4 0d08          	tnz	(OFST+7,sp)
 517  00a6 2706          	jreq	L03
 518  00a8 7b08          	ld	a,(OFST+7,sp)
 519  00aa a122          	cp	a,#34
 520  00ac 2603          	jrne	L62
 521  00ae               L03:
 522  00ae 4f            	clr	a
 523  00af 2010          	jra	L23
 524  00b1               L62:
 525  00b1 ae006c        	ldw	x,#108
 526  00b4 89            	pushw	x
 527  00b5 ae0000        	ldw	x,#0
 528  00b8 89            	pushw	x
 529  00b9 ae0000        	ldw	x,#L502
 530  00bc cd0000        	call	_assert_failed
 532  00bf 5b04          	addw	sp,#4
 533  00c1               L23:
 534                     ; 111   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC1E | TIM3_CCER1_CC1P));
 536  00c1 c65327        	ld	a,21287
 537  00c4 a4fc          	and	a,#252
 538  00c6 c75327        	ld	21287,a
 539                     ; 113   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC1E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC1P   ));
 541  00c9 7b08          	ld	a,(OFST+7,sp)
 542  00cb a402          	and	a,#2
 543  00cd 6b01          	ld	(OFST+0,sp),a
 544  00cf 7b03          	ld	a,(OFST+2,sp)
 545  00d1 a401          	and	a,#1
 546  00d3 1a01          	or	a,(OFST+0,sp)
 547  00d5 ca5327        	or	a,21287
 548  00d8 c75327        	ld	21287,a
 549                     ; 116   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 551  00db c65325        	ld	a,21285
 552  00de a48f          	and	a,#143
 553  00e0 1a02          	or	a,(OFST+1,sp)
 554  00e2 c75325        	ld	21285,a
 555                     ; 119   TIM3->CCR1H = (uint8_t)(TIM3_Pulse >> 8);
 557  00e5 7b06          	ld	a,(OFST+5,sp)
 558  00e7 c7532d        	ld	21293,a
 559                     ; 120   TIM3->CCR1L = (uint8_t)(TIM3_Pulse);
 561  00ea 7b07          	ld	a,(OFST+6,sp)
 562  00ec c7532e        	ld	21294,a
 563                     ; 121 }
 566  00ef 5b03          	addw	sp,#3
 567  00f1 81            	ret
 632                     ; 131 void TIM3_OC2Init(TIM3_OCMode_TypeDef TIM3_OCMode,
 632                     ; 132                   TIM3_OutputState_TypeDef TIM3_OutputState,
 632                     ; 133                   uint16_t TIM3_Pulse,
 632                     ; 134                   TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
 632                     ; 135 {
 633                     	switch	.text
 634  00f2               _TIM3_OC2Init:
 636  00f2 89            	pushw	x
 637  00f3 88            	push	a
 638       00000001      OFST:	set	1
 641                     ; 137   assert_param(IS_TIM3_OC_MODE_OK(TIM3_OCMode));
 643  00f4 9e            	ld	a,xh
 644  00f5 4d            	tnz	a
 645  00f6 2719          	jreq	L04
 646  00f8 9e            	ld	a,xh
 647  00f9 a110          	cp	a,#16
 648  00fb 2714          	jreq	L04
 649  00fd 9e            	ld	a,xh
 650  00fe a120          	cp	a,#32
 651  0100 270f          	jreq	L04
 652  0102 9e            	ld	a,xh
 653  0103 a130          	cp	a,#48
 654  0105 270a          	jreq	L04
 655  0107 9e            	ld	a,xh
 656  0108 a160          	cp	a,#96
 657  010a 2705          	jreq	L04
 658  010c 9e            	ld	a,xh
 659  010d a170          	cp	a,#112
 660  010f 2603          	jrne	L63
 661  0111               L04:
 662  0111 4f            	clr	a
 663  0112 2010          	jra	L24
 664  0114               L63:
 665  0114 ae0089        	ldw	x,#137
 666  0117 89            	pushw	x
 667  0118 ae0000        	ldw	x,#0
 668  011b 89            	pushw	x
 669  011c ae0000        	ldw	x,#L502
 670  011f cd0000        	call	_assert_failed
 672  0122 5b04          	addw	sp,#4
 673  0124               L24:
 674                     ; 138   assert_param(IS_TIM3_OUTPUT_STATE_OK(TIM3_OutputState));
 676  0124 0d03          	tnz	(OFST+2,sp)
 677  0126 2706          	jreq	L64
 678  0128 7b03          	ld	a,(OFST+2,sp)
 679  012a a111          	cp	a,#17
 680  012c 2603          	jrne	L44
 681  012e               L64:
 682  012e 4f            	clr	a
 683  012f 2010          	jra	L05
 684  0131               L44:
 685  0131 ae008a        	ldw	x,#138
 686  0134 89            	pushw	x
 687  0135 ae0000        	ldw	x,#0
 688  0138 89            	pushw	x
 689  0139 ae0000        	ldw	x,#L502
 690  013c cd0000        	call	_assert_failed
 692  013f 5b04          	addw	sp,#4
 693  0141               L05:
 694                     ; 139   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
 696  0141 0d08          	tnz	(OFST+7,sp)
 697  0143 2706          	jreq	L45
 698  0145 7b08          	ld	a,(OFST+7,sp)
 699  0147 a122          	cp	a,#34
 700  0149 2603          	jrne	L25
 701  014b               L45:
 702  014b 4f            	clr	a
 703  014c 2010          	jra	L65
 704  014e               L25:
 705  014e ae008b        	ldw	x,#139
 706  0151 89            	pushw	x
 707  0152 ae0000        	ldw	x,#0
 708  0155 89            	pushw	x
 709  0156 ae0000        	ldw	x,#L502
 710  0159 cd0000        	call	_assert_failed
 712  015c 5b04          	addw	sp,#4
 713  015e               L65:
 714                     ; 143   TIM3->CCER1 &= (uint8_t)(~( TIM3_CCER1_CC2E |  TIM3_CCER1_CC2P ));
 716  015e c65327        	ld	a,21287
 717  0161 a4cf          	and	a,#207
 718  0163 c75327        	ld	21287,a
 719                     ; 145   TIM3->CCER1 |= (uint8_t)((uint8_t)(TIM3_OutputState  & TIM3_CCER1_CC2E   ) | (uint8_t)(TIM3_OCPolarity   & TIM3_CCER1_CC2P ));
 721  0166 7b08          	ld	a,(OFST+7,sp)
 722  0168 a420          	and	a,#32
 723  016a 6b01          	ld	(OFST+0,sp),a
 724  016c 7b03          	ld	a,(OFST+2,sp)
 725  016e a410          	and	a,#16
 726  0170 1a01          	or	a,(OFST+0,sp)
 727  0172 ca5327        	or	a,21287
 728  0175 c75327        	ld	21287,a
 729                     ; 149   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
 731  0178 c65326        	ld	a,21286
 732  017b a48f          	and	a,#143
 733  017d 1a02          	or	a,(OFST+1,sp)
 734  017f c75326        	ld	21286,a
 735                     ; 153   TIM3->CCR2H = (uint8_t)(TIM3_Pulse >> 8);
 737  0182 7b06          	ld	a,(OFST+5,sp)
 738  0184 c7532f        	ld	21295,a
 739                     ; 154   TIM3->CCR2L = (uint8_t)(TIM3_Pulse);
 741  0187 7b07          	ld	a,(OFST+6,sp)
 742  0189 c75330        	ld	21296,a
 743                     ; 155 }
 746  018c 5b03          	addw	sp,#3
 747  018e 81            	ret
 932                     ; 166 void TIM3_ICInit(TIM3_Channel_TypeDef TIM3_Channel,
 932                     ; 167                  TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
 932                     ; 168                  TIM3_ICSelection_TypeDef TIM3_ICSelection,
 932                     ; 169                  TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
 932                     ; 170                  uint8_t TIM3_ICFilter)
 932                     ; 171 {
 933                     	switch	.text
 934  018f               _TIM3_ICInit:
 936  018f 89            	pushw	x
 937       00000000      OFST:	set	0
 940                     ; 173   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
 942  0190 9e            	ld	a,xh
 943  0191 4d            	tnz	a
 944  0192 2705          	jreq	L46
 945  0194 9e            	ld	a,xh
 946  0195 a101          	cp	a,#1
 947  0197 2603          	jrne	L26
 948  0199               L46:
 949  0199 4f            	clr	a
 950  019a 2010          	jra	L66
 951  019c               L26:
 952  019c ae00ad        	ldw	x,#173
 953  019f 89            	pushw	x
 954  01a0 ae0000        	ldw	x,#0
 955  01a3 89            	pushw	x
 956  01a4 ae0000        	ldw	x,#L502
 957  01a7 cd0000        	call	_assert_failed
 959  01aa 5b04          	addw	sp,#4
 960  01ac               L66:
 961                     ; 174   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
 963  01ac 0d02          	tnz	(OFST+2,sp)
 964  01ae 2706          	jreq	L27
 965  01b0 7b02          	ld	a,(OFST+2,sp)
 966  01b2 a144          	cp	a,#68
 967  01b4 2603          	jrne	L07
 968  01b6               L27:
 969  01b6 4f            	clr	a
 970  01b7 2010          	jra	L47
 971  01b9               L07:
 972  01b9 ae00ae        	ldw	x,#174
 973  01bc 89            	pushw	x
 974  01bd ae0000        	ldw	x,#0
 975  01c0 89            	pushw	x
 976  01c1 ae0000        	ldw	x,#L502
 977  01c4 cd0000        	call	_assert_failed
 979  01c7 5b04          	addw	sp,#4
 980  01c9               L47:
 981                     ; 175   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
 983  01c9 7b05          	ld	a,(OFST+5,sp)
 984  01cb a101          	cp	a,#1
 985  01cd 270c          	jreq	L001
 986  01cf 7b05          	ld	a,(OFST+5,sp)
 987  01d1 a102          	cp	a,#2
 988  01d3 2706          	jreq	L001
 989  01d5 7b05          	ld	a,(OFST+5,sp)
 990  01d7 a103          	cp	a,#3
 991  01d9 2603          	jrne	L67
 992  01db               L001:
 993  01db 4f            	clr	a
 994  01dc 2010          	jra	L201
 995  01de               L67:
 996  01de ae00af        	ldw	x,#175
 997  01e1 89            	pushw	x
 998  01e2 ae0000        	ldw	x,#0
 999  01e5 89            	pushw	x
1000  01e6 ae0000        	ldw	x,#L502
1001  01e9 cd0000        	call	_assert_failed
1003  01ec 5b04          	addw	sp,#4
1004  01ee               L201:
1005                     ; 176   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1007  01ee 0d06          	tnz	(OFST+6,sp)
1008  01f0 2712          	jreq	L601
1009  01f2 7b06          	ld	a,(OFST+6,sp)
1010  01f4 a104          	cp	a,#4
1011  01f6 270c          	jreq	L601
1012  01f8 7b06          	ld	a,(OFST+6,sp)
1013  01fa a108          	cp	a,#8
1014  01fc 2706          	jreq	L601
1015  01fe 7b06          	ld	a,(OFST+6,sp)
1016  0200 a10c          	cp	a,#12
1017  0202 2603          	jrne	L401
1018  0204               L601:
1019  0204 4f            	clr	a
1020  0205 2010          	jra	L011
1021  0207               L401:
1022  0207 ae00b0        	ldw	x,#176
1023  020a 89            	pushw	x
1024  020b ae0000        	ldw	x,#0
1025  020e 89            	pushw	x
1026  020f ae0000        	ldw	x,#L502
1027  0212 cd0000        	call	_assert_failed
1029  0215 5b04          	addw	sp,#4
1030  0217               L011:
1031                     ; 177   assert_param(IS_TIM3_IC_FILTER_OK(TIM3_ICFilter));
1033  0217 7b07          	ld	a,(OFST+7,sp)
1034  0219 a110          	cp	a,#16
1035  021b 2403          	jruge	L211
1036  021d 4f            	clr	a
1037  021e 2010          	jra	L411
1038  0220               L211:
1039  0220 ae00b1        	ldw	x,#177
1040  0223 89            	pushw	x
1041  0224 ae0000        	ldw	x,#0
1042  0227 89            	pushw	x
1043  0228 ae0000        	ldw	x,#L502
1044  022b cd0000        	call	_assert_failed
1046  022e 5b04          	addw	sp,#4
1047  0230               L411:
1048                     ; 179   if (TIM3_Channel != TIM3_CHANNEL_2)
1050  0230 7b01          	ld	a,(OFST+1,sp)
1051  0232 a101          	cp	a,#1
1052  0234 2714          	jreq	L543
1053                     ; 182     TI1_Config((uint8_t)TIM3_ICPolarity,
1053                     ; 183                (uint8_t)TIM3_ICSelection,
1053                     ; 184                (uint8_t)TIM3_ICFilter);
1055  0236 7b07          	ld	a,(OFST+7,sp)
1056  0238 88            	push	a
1057  0239 7b06          	ld	a,(OFST+6,sp)
1058  023b 97            	ld	xl,a
1059  023c 7b03          	ld	a,(OFST+3,sp)
1060  023e 95            	ld	xh,a
1061  023f cd08e9        	call	L3_TI1_Config
1063  0242 84            	pop	a
1064                     ; 187     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1066  0243 7b06          	ld	a,(OFST+6,sp)
1067  0245 cd073a        	call	_TIM3_SetIC1Prescaler
1070  0248 2012          	jra	L743
1071  024a               L543:
1072                     ; 192     TI2_Config((uint8_t)TIM3_ICPolarity,
1072                     ; 193                (uint8_t)TIM3_ICSelection,
1072                     ; 194                (uint8_t)TIM3_ICFilter);
1074  024a 7b07          	ld	a,(OFST+7,sp)
1075  024c 88            	push	a
1076  024d 7b06          	ld	a,(OFST+6,sp)
1077  024f 97            	ld	xl,a
1078  0250 7b03          	ld	a,(OFST+3,sp)
1079  0252 95            	ld	xh,a
1080  0253 cd0919        	call	L5_TI2_Config
1082  0256 84            	pop	a
1083                     ; 197     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1085  0257 7b06          	ld	a,(OFST+6,sp)
1086  0259 cd0769        	call	_TIM3_SetIC2Prescaler
1088  025c               L743:
1089                     ; 199 }
1092  025c 85            	popw	x
1093  025d 81            	ret
1190                     ; 210 void TIM3_PWMIConfig(TIM3_Channel_TypeDef TIM3_Channel,
1190                     ; 211                      TIM3_ICPolarity_TypeDef TIM3_ICPolarity,
1190                     ; 212                      TIM3_ICSelection_TypeDef TIM3_ICSelection,
1190                     ; 213                      TIM3_ICPSC_TypeDef TIM3_ICPrescaler,
1190                     ; 214                      uint8_t TIM3_ICFilter)
1190                     ; 215 {
1191                     	switch	.text
1192  025e               _TIM3_PWMIConfig:
1194  025e 89            	pushw	x
1195  025f 89            	pushw	x
1196       00000002      OFST:	set	2
1199                     ; 216   uint8_t icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1201                     ; 217   uint8_t icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1203                     ; 220   assert_param(IS_TIM3_PWMI_CHANNEL_OK(TIM3_Channel));
1205  0260 9e            	ld	a,xh
1206  0261 4d            	tnz	a
1207  0262 2705          	jreq	L221
1208  0264 9e            	ld	a,xh
1209  0265 a101          	cp	a,#1
1210  0267 2603          	jrne	L021
1211  0269               L221:
1212  0269 4f            	clr	a
1213  026a 2010          	jra	L421
1214  026c               L021:
1215  026c ae00dc        	ldw	x,#220
1216  026f 89            	pushw	x
1217  0270 ae0000        	ldw	x,#0
1218  0273 89            	pushw	x
1219  0274 ae0000        	ldw	x,#L502
1220  0277 cd0000        	call	_assert_failed
1222  027a 5b04          	addw	sp,#4
1223  027c               L421:
1224                     ; 221   assert_param(IS_TIM3_IC_POLARITY_OK(TIM3_ICPolarity));
1226  027c 0d04          	tnz	(OFST+2,sp)
1227  027e 2706          	jreq	L031
1228  0280 7b04          	ld	a,(OFST+2,sp)
1229  0282 a144          	cp	a,#68
1230  0284 2603          	jrne	L621
1231  0286               L031:
1232  0286 4f            	clr	a
1233  0287 2010          	jra	L231
1234  0289               L621:
1235  0289 ae00dd        	ldw	x,#221
1236  028c 89            	pushw	x
1237  028d ae0000        	ldw	x,#0
1238  0290 89            	pushw	x
1239  0291 ae0000        	ldw	x,#L502
1240  0294 cd0000        	call	_assert_failed
1242  0297 5b04          	addw	sp,#4
1243  0299               L231:
1244                     ; 222   assert_param(IS_TIM3_IC_SELECTION_OK(TIM3_ICSelection));
1246  0299 7b07          	ld	a,(OFST+5,sp)
1247  029b a101          	cp	a,#1
1248  029d 270c          	jreq	L631
1249  029f 7b07          	ld	a,(OFST+5,sp)
1250  02a1 a102          	cp	a,#2
1251  02a3 2706          	jreq	L631
1252  02a5 7b07          	ld	a,(OFST+5,sp)
1253  02a7 a103          	cp	a,#3
1254  02a9 2603          	jrne	L431
1255  02ab               L631:
1256  02ab 4f            	clr	a
1257  02ac 2010          	jra	L041
1258  02ae               L431:
1259  02ae ae00de        	ldw	x,#222
1260  02b1 89            	pushw	x
1261  02b2 ae0000        	ldw	x,#0
1262  02b5 89            	pushw	x
1263  02b6 ae0000        	ldw	x,#L502
1264  02b9 cd0000        	call	_assert_failed
1266  02bc 5b04          	addw	sp,#4
1267  02be               L041:
1268                     ; 223   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_ICPrescaler));
1270  02be 0d08          	tnz	(OFST+6,sp)
1271  02c0 2712          	jreq	L441
1272  02c2 7b08          	ld	a,(OFST+6,sp)
1273  02c4 a104          	cp	a,#4
1274  02c6 270c          	jreq	L441
1275  02c8 7b08          	ld	a,(OFST+6,sp)
1276  02ca a108          	cp	a,#8
1277  02cc 2706          	jreq	L441
1278  02ce 7b08          	ld	a,(OFST+6,sp)
1279  02d0 a10c          	cp	a,#12
1280  02d2 2603          	jrne	L241
1281  02d4               L441:
1282  02d4 4f            	clr	a
1283  02d5 2010          	jra	L641
1284  02d7               L241:
1285  02d7 ae00df        	ldw	x,#223
1286  02da 89            	pushw	x
1287  02db ae0000        	ldw	x,#0
1288  02de 89            	pushw	x
1289  02df ae0000        	ldw	x,#L502
1290  02e2 cd0000        	call	_assert_failed
1292  02e5 5b04          	addw	sp,#4
1293  02e7               L641:
1294                     ; 226   if (TIM3_ICPolarity != TIM3_ICPOLARITY_FALLING)
1296  02e7 7b04          	ld	a,(OFST+2,sp)
1297  02e9 a144          	cp	a,#68
1298  02eb 2706          	jreq	L714
1299                     ; 228     icpolarity = (uint8_t)TIM3_ICPOLARITY_FALLING;
1301  02ed a644          	ld	a,#68
1302  02ef 6b01          	ld	(OFST-1,sp),a
1304  02f1 2002          	jra	L124
1305  02f3               L714:
1306                     ; 232     icpolarity = (uint8_t)TIM3_ICPOLARITY_RISING;
1308  02f3 0f01          	clr	(OFST-1,sp)
1309  02f5               L124:
1310                     ; 236   if (TIM3_ICSelection == TIM3_ICSELECTION_DIRECTTI)
1312  02f5 7b07          	ld	a,(OFST+5,sp)
1313  02f7 a101          	cp	a,#1
1314  02f9 2606          	jrne	L324
1315                     ; 238     icselection = (uint8_t)TIM3_ICSELECTION_INDIRECTTI;
1317  02fb a602          	ld	a,#2
1318  02fd 6b02          	ld	(OFST+0,sp),a
1320  02ff 2004          	jra	L524
1321  0301               L324:
1322                     ; 242     icselection = (uint8_t)TIM3_ICSELECTION_DIRECTTI;
1324  0301 a601          	ld	a,#1
1325  0303 6b02          	ld	(OFST+0,sp),a
1326  0305               L524:
1327                     ; 245   if (TIM3_Channel != TIM3_CHANNEL_2)
1329  0305 7b03          	ld	a,(OFST+1,sp)
1330  0307 a101          	cp	a,#1
1331  0309 2726          	jreq	L724
1332                     ; 248     TI1_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1332                     ; 249                (uint8_t)TIM3_ICFilter);
1334  030b 7b09          	ld	a,(OFST+7,sp)
1335  030d 88            	push	a
1336  030e 7b08          	ld	a,(OFST+6,sp)
1337  0310 97            	ld	xl,a
1338  0311 7b05          	ld	a,(OFST+3,sp)
1339  0313 95            	ld	xh,a
1340  0314 cd08e9        	call	L3_TI1_Config
1342  0317 84            	pop	a
1343                     ; 252     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1345  0318 7b08          	ld	a,(OFST+6,sp)
1346  031a cd073a        	call	_TIM3_SetIC1Prescaler
1348                     ; 255     TI2_Config(icpolarity, icselection, TIM3_ICFilter);
1350  031d 7b09          	ld	a,(OFST+7,sp)
1351  031f 88            	push	a
1352  0320 7b03          	ld	a,(OFST+1,sp)
1353  0322 97            	ld	xl,a
1354  0323 7b02          	ld	a,(OFST+0,sp)
1355  0325 95            	ld	xh,a
1356  0326 cd0919        	call	L5_TI2_Config
1358  0329 84            	pop	a
1359                     ; 258     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1361  032a 7b08          	ld	a,(OFST+6,sp)
1362  032c cd0769        	call	_TIM3_SetIC2Prescaler
1365  032f 2024          	jra	L134
1366  0331               L724:
1367                     ; 263     TI2_Config((uint8_t)TIM3_ICPolarity, (uint8_t)TIM3_ICSelection,
1367                     ; 264                (uint8_t)TIM3_ICFilter);
1369  0331 7b09          	ld	a,(OFST+7,sp)
1370  0333 88            	push	a
1371  0334 7b08          	ld	a,(OFST+6,sp)
1372  0336 97            	ld	xl,a
1373  0337 7b05          	ld	a,(OFST+3,sp)
1374  0339 95            	ld	xh,a
1375  033a cd0919        	call	L5_TI2_Config
1377  033d 84            	pop	a
1378                     ; 267     TIM3_SetIC2Prescaler(TIM3_ICPrescaler);
1380  033e 7b08          	ld	a,(OFST+6,sp)
1381  0340 cd0769        	call	_TIM3_SetIC2Prescaler
1383                     ; 270     TI1_Config(icpolarity, icselection, TIM3_ICFilter);
1385  0343 7b09          	ld	a,(OFST+7,sp)
1386  0345 88            	push	a
1387  0346 7b03          	ld	a,(OFST+1,sp)
1388  0348 97            	ld	xl,a
1389  0349 7b02          	ld	a,(OFST+0,sp)
1390  034b 95            	ld	xh,a
1391  034c cd08e9        	call	L3_TI1_Config
1393  034f 84            	pop	a
1394                     ; 273     TIM3_SetIC1Prescaler(TIM3_ICPrescaler);
1396  0350 7b08          	ld	a,(OFST+6,sp)
1397  0352 cd073a        	call	_TIM3_SetIC1Prescaler
1399  0355               L134:
1400                     ; 275 }
1403  0355 5b04          	addw	sp,#4
1404  0357 81            	ret
1460                     ; 283 void TIM3_Cmd(FunctionalState NewState)
1460                     ; 284 {
1461                     	switch	.text
1462  0358               _TIM3_Cmd:
1464  0358 88            	push	a
1465       00000000      OFST:	set	0
1468                     ; 286   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1470  0359 4d            	tnz	a
1471  035a 2704          	jreq	L451
1472  035c a101          	cp	a,#1
1473  035e 2603          	jrne	L251
1474  0360               L451:
1475  0360 4f            	clr	a
1476  0361 2010          	jra	L651
1477  0363               L251:
1478  0363 ae011e        	ldw	x,#286
1479  0366 89            	pushw	x
1480  0367 ae0000        	ldw	x,#0
1481  036a 89            	pushw	x
1482  036b ae0000        	ldw	x,#L502
1483  036e cd0000        	call	_assert_failed
1485  0371 5b04          	addw	sp,#4
1486  0373               L651:
1487                     ; 289   if (NewState != DISABLE)
1489  0373 0d01          	tnz	(OFST+1,sp)
1490  0375 2706          	jreq	L164
1491                     ; 291     TIM3->CR1 |= (uint8_t)TIM3_CR1_CEN;
1493  0377 72105320      	bset	21280,#0
1495  037b 2004          	jra	L364
1496  037d               L164:
1497                     ; 295     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_CEN);
1499  037d 72115320      	bres	21280,#0
1500  0381               L364:
1501                     ; 297 }
1504  0381 84            	pop	a
1505  0382 81            	ret
1578                     ; 311 void TIM3_ITConfig(TIM3_IT_TypeDef TIM3_IT, FunctionalState NewState)
1578                     ; 312 {
1579                     	switch	.text
1580  0383               _TIM3_ITConfig:
1582  0383 89            	pushw	x
1583       00000000      OFST:	set	0
1586                     ; 314   assert_param(IS_TIM3_IT_OK(TIM3_IT));
1588  0384 9e            	ld	a,xh
1589  0385 4d            	tnz	a
1590  0386 2708          	jreq	L261
1591  0388 9e            	ld	a,xh
1592  0389 a108          	cp	a,#8
1593  038b 2403          	jruge	L261
1594  038d 4f            	clr	a
1595  038e 2010          	jra	L461
1596  0390               L261:
1597  0390 ae013a        	ldw	x,#314
1598  0393 89            	pushw	x
1599  0394 ae0000        	ldw	x,#0
1600  0397 89            	pushw	x
1601  0398 ae0000        	ldw	x,#L502
1602  039b cd0000        	call	_assert_failed
1604  039e 5b04          	addw	sp,#4
1605  03a0               L461:
1606                     ; 315   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1608  03a0 0d02          	tnz	(OFST+2,sp)
1609  03a2 2706          	jreq	L071
1610  03a4 7b02          	ld	a,(OFST+2,sp)
1611  03a6 a101          	cp	a,#1
1612  03a8 2603          	jrne	L661
1613  03aa               L071:
1614  03aa 4f            	clr	a
1615  03ab 2010          	jra	L271
1616  03ad               L661:
1617  03ad ae013b        	ldw	x,#315
1618  03b0 89            	pushw	x
1619  03b1 ae0000        	ldw	x,#0
1620  03b4 89            	pushw	x
1621  03b5 ae0000        	ldw	x,#L502
1622  03b8 cd0000        	call	_assert_failed
1624  03bb 5b04          	addw	sp,#4
1625  03bd               L271:
1626                     ; 317   if (NewState != DISABLE)
1628  03bd 0d02          	tnz	(OFST+2,sp)
1629  03bf 270a          	jreq	L125
1630                     ; 320     TIM3->IER |= (uint8_t)TIM3_IT;
1632  03c1 c65321        	ld	a,21281
1633  03c4 1a01          	or	a,(OFST+1,sp)
1634  03c6 c75321        	ld	21281,a
1636  03c9 2009          	jra	L325
1637  03cb               L125:
1638                     ; 325     TIM3->IER &= (uint8_t)(~TIM3_IT);
1640  03cb 7b01          	ld	a,(OFST+1,sp)
1641  03cd 43            	cpl	a
1642  03ce c45321        	and	a,21281
1643  03d1 c75321        	ld	21281,a
1644  03d4               L325:
1645                     ; 327 }
1648  03d4 85            	popw	x
1649  03d5 81            	ret
1686                     ; 335 void TIM3_UpdateDisableConfig(FunctionalState NewState)
1686                     ; 336 {
1687                     	switch	.text
1688  03d6               _TIM3_UpdateDisableConfig:
1690  03d6 88            	push	a
1691       00000000      OFST:	set	0
1694                     ; 338   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1696  03d7 4d            	tnz	a
1697  03d8 2704          	jreq	L002
1698  03da a101          	cp	a,#1
1699  03dc 2603          	jrne	L671
1700  03de               L002:
1701  03de 4f            	clr	a
1702  03df 2010          	jra	L202
1703  03e1               L671:
1704  03e1 ae0152        	ldw	x,#338
1705  03e4 89            	pushw	x
1706  03e5 ae0000        	ldw	x,#0
1707  03e8 89            	pushw	x
1708  03e9 ae0000        	ldw	x,#L502
1709  03ec cd0000        	call	_assert_failed
1711  03ef 5b04          	addw	sp,#4
1712  03f1               L202:
1713                     ; 341   if (NewState != DISABLE)
1715  03f1 0d01          	tnz	(OFST+1,sp)
1716  03f3 2706          	jreq	L345
1717                     ; 343     TIM3->CR1 |= TIM3_CR1_UDIS;
1719  03f5 72125320      	bset	21280,#1
1721  03f9 2004          	jra	L545
1722  03fb               L345:
1723                     ; 347     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_UDIS);
1725  03fb 72135320      	bres	21280,#1
1726  03ff               L545:
1727                     ; 349 }
1730  03ff 84            	pop	a
1731  0400 81            	ret
1790                     ; 359 void TIM3_UpdateRequestConfig(TIM3_UpdateSource_TypeDef TIM3_UpdateSource)
1790                     ; 360 {
1791                     	switch	.text
1792  0401               _TIM3_UpdateRequestConfig:
1794  0401 88            	push	a
1795       00000000      OFST:	set	0
1798                     ; 362   assert_param(IS_TIM3_UPDATE_SOURCE_OK(TIM3_UpdateSource));
1800  0402 4d            	tnz	a
1801  0403 2704          	jreq	L012
1802  0405 a101          	cp	a,#1
1803  0407 2603          	jrne	L602
1804  0409               L012:
1805  0409 4f            	clr	a
1806  040a 2010          	jra	L212
1807  040c               L602:
1808  040c ae016a        	ldw	x,#362
1809  040f 89            	pushw	x
1810  0410 ae0000        	ldw	x,#0
1811  0413 89            	pushw	x
1812  0414 ae0000        	ldw	x,#L502
1813  0417 cd0000        	call	_assert_failed
1815  041a 5b04          	addw	sp,#4
1816  041c               L212:
1817                     ; 365   if (TIM3_UpdateSource != TIM3_UPDATESOURCE_GLOBAL)
1819  041c 0d01          	tnz	(OFST+1,sp)
1820  041e 2706          	jreq	L575
1821                     ; 367     TIM3->CR1 |= TIM3_CR1_URS;
1823  0420 72145320      	bset	21280,#2
1825  0424 2004          	jra	L775
1826  0426               L575:
1827                     ; 371     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_URS);
1829  0426 72155320      	bres	21280,#2
1830  042a               L775:
1831                     ; 373 }
1834  042a 84            	pop	a
1835  042b 81            	ret
1893                     ; 383 void TIM3_SelectOnePulseMode(TIM3_OPMode_TypeDef TIM3_OPMode)
1893                     ; 384 {
1894                     	switch	.text
1895  042c               _TIM3_SelectOnePulseMode:
1897  042c 88            	push	a
1898       00000000      OFST:	set	0
1901                     ; 386   assert_param(IS_TIM3_OPM_MODE_OK(TIM3_OPMode));
1903  042d a101          	cp	a,#1
1904  042f 2703          	jreq	L022
1905  0431 4d            	tnz	a
1906  0432 2603          	jrne	L612
1907  0434               L022:
1908  0434 4f            	clr	a
1909  0435 2010          	jra	L222
1910  0437               L612:
1911  0437 ae0182        	ldw	x,#386
1912  043a 89            	pushw	x
1913  043b ae0000        	ldw	x,#0
1914  043e 89            	pushw	x
1915  043f ae0000        	ldw	x,#L502
1916  0442 cd0000        	call	_assert_failed
1918  0445 5b04          	addw	sp,#4
1919  0447               L222:
1920                     ; 389   if (TIM3_OPMode != TIM3_OPMODE_REPETITIVE)
1922  0447 0d01          	tnz	(OFST+1,sp)
1923  0449 2706          	jreq	L726
1924                     ; 391     TIM3->CR1 |= TIM3_CR1_OPM;
1926  044b 72165320      	bset	21280,#3
1928  044f 2004          	jra	L136
1929  0451               L726:
1930                     ; 395     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_OPM);
1932  0451 72175320      	bres	21280,#3
1933  0455               L136:
1934                     ; 397 }
1937  0455 84            	pop	a
1938  0456 81            	ret
2007                     ; 427 void TIM3_PrescalerConfig(TIM3_Prescaler_TypeDef Prescaler,
2007                     ; 428                           TIM3_PSCReloadMode_TypeDef TIM3_PSCReloadMode)
2007                     ; 429 {
2008                     	switch	.text
2009  0457               _TIM3_PrescalerConfig:
2011  0457 89            	pushw	x
2012       00000000      OFST:	set	0
2015                     ; 431   assert_param(IS_TIM3_PRESCALER_RELOAD_OK(TIM3_PSCReloadMode));
2017  0458 9f            	ld	a,xl
2018  0459 4d            	tnz	a
2019  045a 2705          	jreq	L032
2020  045c 9f            	ld	a,xl
2021  045d a101          	cp	a,#1
2022  045f 2603          	jrne	L622
2023  0461               L032:
2024  0461 4f            	clr	a
2025  0462 2010          	jra	L232
2026  0464               L622:
2027  0464 ae01af        	ldw	x,#431
2028  0467 89            	pushw	x
2029  0468 ae0000        	ldw	x,#0
2030  046b 89            	pushw	x
2031  046c ae0000        	ldw	x,#L502
2032  046f cd0000        	call	_assert_failed
2034  0472 5b04          	addw	sp,#4
2035  0474               L232:
2036                     ; 432   assert_param(IS_TIM3_PRESCALER_OK(Prescaler));
2038  0474 0d01          	tnz	(OFST+1,sp)
2039  0476 275a          	jreq	L632
2040  0478 7b01          	ld	a,(OFST+1,sp)
2041  047a a101          	cp	a,#1
2042  047c 2754          	jreq	L632
2043  047e 7b01          	ld	a,(OFST+1,sp)
2044  0480 a102          	cp	a,#2
2045  0482 274e          	jreq	L632
2046  0484 7b01          	ld	a,(OFST+1,sp)
2047  0486 a103          	cp	a,#3
2048  0488 2748          	jreq	L632
2049  048a 7b01          	ld	a,(OFST+1,sp)
2050  048c a104          	cp	a,#4
2051  048e 2742          	jreq	L632
2052  0490 7b01          	ld	a,(OFST+1,sp)
2053  0492 a105          	cp	a,#5
2054  0494 273c          	jreq	L632
2055  0496 7b01          	ld	a,(OFST+1,sp)
2056  0498 a106          	cp	a,#6
2057  049a 2736          	jreq	L632
2058  049c 7b01          	ld	a,(OFST+1,sp)
2059  049e a107          	cp	a,#7
2060  04a0 2730          	jreq	L632
2061  04a2 7b01          	ld	a,(OFST+1,sp)
2062  04a4 a108          	cp	a,#8
2063  04a6 272a          	jreq	L632
2064  04a8 7b01          	ld	a,(OFST+1,sp)
2065  04aa a109          	cp	a,#9
2066  04ac 2724          	jreq	L632
2067  04ae 7b01          	ld	a,(OFST+1,sp)
2068  04b0 a10a          	cp	a,#10
2069  04b2 271e          	jreq	L632
2070  04b4 7b01          	ld	a,(OFST+1,sp)
2071  04b6 a10b          	cp	a,#11
2072  04b8 2718          	jreq	L632
2073  04ba 7b01          	ld	a,(OFST+1,sp)
2074  04bc a10c          	cp	a,#12
2075  04be 2712          	jreq	L632
2076  04c0 7b01          	ld	a,(OFST+1,sp)
2077  04c2 a10d          	cp	a,#13
2078  04c4 270c          	jreq	L632
2079  04c6 7b01          	ld	a,(OFST+1,sp)
2080  04c8 a10e          	cp	a,#14
2081  04ca 2706          	jreq	L632
2082  04cc 7b01          	ld	a,(OFST+1,sp)
2083  04ce a10f          	cp	a,#15
2084  04d0 2603          	jrne	L432
2085  04d2               L632:
2086  04d2 4f            	clr	a
2087  04d3 2010          	jra	L042
2088  04d5               L432:
2089  04d5 ae01b0        	ldw	x,#432
2090  04d8 89            	pushw	x
2091  04d9 ae0000        	ldw	x,#0
2092  04dc 89            	pushw	x
2093  04dd ae0000        	ldw	x,#L502
2094  04e0 cd0000        	call	_assert_failed
2096  04e3 5b04          	addw	sp,#4
2097  04e5               L042:
2098                     ; 435   TIM3->PSCR = (uint8_t)Prescaler;
2100  04e5 7b01          	ld	a,(OFST+1,sp)
2101  04e7 c7532a        	ld	21290,a
2102                     ; 438   TIM3->EGR = (uint8_t)TIM3_PSCReloadMode;
2104  04ea 7b02          	ld	a,(OFST+2,sp)
2105  04ec c75324        	ld	21284,a
2106                     ; 439 }
2109  04ef 85            	popw	x
2110  04f0 81            	ret
2169                     ; 450 void TIM3_ForcedOC1Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2169                     ; 451 {
2170                     	switch	.text
2171  04f1               _TIM3_ForcedOC1Config:
2173  04f1 88            	push	a
2174       00000000      OFST:	set	0
2177                     ; 453   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2179  04f2 a150          	cp	a,#80
2180  04f4 2704          	jreq	L642
2181  04f6 a140          	cp	a,#64
2182  04f8 2603          	jrne	L442
2183  04fa               L642:
2184  04fa 4f            	clr	a
2185  04fb 2010          	jra	L052
2186  04fd               L442:
2187  04fd ae01c5        	ldw	x,#453
2188  0500 89            	pushw	x
2189  0501 ae0000        	ldw	x,#0
2190  0504 89            	pushw	x
2191  0505 ae0000        	ldw	x,#L502
2192  0508 cd0000        	call	_assert_failed
2194  050b 5b04          	addw	sp,#4
2195  050d               L052:
2196                     ; 456   TIM3->CCMR1 =  (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM))  | (uint8_t)TIM3_ForcedAction);
2198  050d c65325        	ld	a,21285
2199  0510 a48f          	and	a,#143
2200  0512 1a01          	or	a,(OFST+1,sp)
2201  0514 c75325        	ld	21285,a
2202                     ; 457 }
2205  0517 84            	pop	a
2206  0518 81            	ret
2243                     ; 468 void TIM3_ForcedOC2Config(TIM3_ForcedAction_TypeDef TIM3_ForcedAction)
2243                     ; 469 {
2244                     	switch	.text
2245  0519               _TIM3_ForcedOC2Config:
2247  0519 88            	push	a
2248       00000000      OFST:	set	0
2251                     ; 471   assert_param(IS_TIM3_FORCED_ACTION_OK(TIM3_ForcedAction));
2253  051a a150          	cp	a,#80
2254  051c 2704          	jreq	L652
2255  051e a140          	cp	a,#64
2256  0520 2603          	jrne	L452
2257  0522               L652:
2258  0522 4f            	clr	a
2259  0523 2010          	jra	L062
2260  0525               L452:
2261  0525 ae01d7        	ldw	x,#471
2262  0528 89            	pushw	x
2263  0529 ae0000        	ldw	x,#0
2264  052c 89            	pushw	x
2265  052d ae0000        	ldw	x,#L502
2266  0530 cd0000        	call	_assert_failed
2268  0533 5b04          	addw	sp,#4
2269  0535               L062:
2270                     ; 474   TIM3->CCMR2 =  (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_ForcedAction);
2272  0535 c65326        	ld	a,21286
2273  0538 a48f          	and	a,#143
2274  053a 1a01          	or	a,(OFST+1,sp)
2275  053c c75326        	ld	21286,a
2276                     ; 475 }
2279  053f 84            	pop	a
2280  0540 81            	ret
2317                     ; 483 void TIM3_ARRPreloadConfig(FunctionalState NewState)
2317                     ; 484 {
2318                     	switch	.text
2319  0541               _TIM3_ARRPreloadConfig:
2321  0541 88            	push	a
2322       00000000      OFST:	set	0
2325                     ; 486   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2327  0542 4d            	tnz	a
2328  0543 2704          	jreq	L662
2329  0545 a101          	cp	a,#1
2330  0547 2603          	jrne	L462
2331  0549               L662:
2332  0549 4f            	clr	a
2333  054a 2010          	jra	L072
2334  054c               L462:
2335  054c ae01e6        	ldw	x,#486
2336  054f 89            	pushw	x
2337  0550 ae0000        	ldw	x,#0
2338  0553 89            	pushw	x
2339  0554 ae0000        	ldw	x,#L502
2340  0557 cd0000        	call	_assert_failed
2342  055a 5b04          	addw	sp,#4
2343  055c               L072:
2344                     ; 489   if (NewState != DISABLE)
2346  055c 0d01          	tnz	(OFST+1,sp)
2347  055e 2706          	jreq	L747
2348                     ; 491     TIM3->CR1 |= TIM3_CR1_ARPE;
2350  0560 721e5320      	bset	21280,#7
2352  0564 2004          	jra	L157
2353  0566               L747:
2354                     ; 495     TIM3->CR1 &= (uint8_t)(~TIM3_CR1_ARPE);
2356  0566 721f5320      	bres	21280,#7
2357  056a               L157:
2358                     ; 497 }
2361  056a 84            	pop	a
2362  056b 81            	ret
2399                     ; 505 void TIM3_OC1PreloadConfig(FunctionalState NewState)
2399                     ; 506 {
2400                     	switch	.text
2401  056c               _TIM3_OC1PreloadConfig:
2403  056c 88            	push	a
2404       00000000      OFST:	set	0
2407                     ; 508   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2409  056d 4d            	tnz	a
2410  056e 2704          	jreq	L672
2411  0570 a101          	cp	a,#1
2412  0572 2603          	jrne	L472
2413  0574               L672:
2414  0574 4f            	clr	a
2415  0575 2010          	jra	L003
2416  0577               L472:
2417  0577 ae01fc        	ldw	x,#508
2418  057a 89            	pushw	x
2419  057b ae0000        	ldw	x,#0
2420  057e 89            	pushw	x
2421  057f ae0000        	ldw	x,#L502
2422  0582 cd0000        	call	_assert_failed
2424  0585 5b04          	addw	sp,#4
2425  0587               L003:
2426                     ; 511   if (NewState != DISABLE)
2428  0587 0d01          	tnz	(OFST+1,sp)
2429  0589 2706          	jreq	L177
2430                     ; 513     TIM3->CCMR1 |= TIM3_CCMR_OCxPE;
2432  058b 72165325      	bset	21285,#3
2434  058f 2004          	jra	L377
2435  0591               L177:
2436                     ; 517     TIM3->CCMR1 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2438  0591 72175325      	bres	21285,#3
2439  0595               L377:
2440                     ; 519 }
2443  0595 84            	pop	a
2444  0596 81            	ret
2481                     ; 527 void TIM3_OC2PreloadConfig(FunctionalState NewState)
2481                     ; 528 {
2482                     	switch	.text
2483  0597               _TIM3_OC2PreloadConfig:
2485  0597 88            	push	a
2486       00000000      OFST:	set	0
2489                     ; 530   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2491  0598 4d            	tnz	a
2492  0599 2704          	jreq	L603
2493  059b a101          	cp	a,#1
2494  059d 2603          	jrne	L403
2495  059f               L603:
2496  059f 4f            	clr	a
2497  05a0 2010          	jra	L013
2498  05a2               L403:
2499  05a2 ae0212        	ldw	x,#530
2500  05a5 89            	pushw	x
2501  05a6 ae0000        	ldw	x,#0
2502  05a9 89            	pushw	x
2503  05aa ae0000        	ldw	x,#L502
2504  05ad cd0000        	call	_assert_failed
2506  05b0 5b04          	addw	sp,#4
2507  05b2               L013:
2508                     ; 533   if (NewState != DISABLE)
2510  05b2 0d01          	tnz	(OFST+1,sp)
2511  05b4 2706          	jreq	L3101
2512                     ; 535     TIM3->CCMR2 |= TIM3_CCMR_OCxPE;
2514  05b6 72165326      	bset	21286,#3
2516  05ba 2004          	jra	L5101
2517  05bc               L3101:
2518                     ; 539     TIM3->CCMR2 &= (uint8_t)(~TIM3_CCMR_OCxPE);
2520  05bc 72175326      	bres	21286,#3
2521  05c0               L5101:
2522                     ; 541 }
2525  05c0 84            	pop	a
2526  05c1 81            	ret
2592                     ; 552 void TIM3_GenerateEvent(TIM3_EventSource_TypeDef TIM3_EventSource)
2592                     ; 553 {
2593                     	switch	.text
2594  05c2               _TIM3_GenerateEvent:
2596  05c2 88            	push	a
2597       00000000      OFST:	set	0
2600                     ; 555   assert_param(IS_TIM3_EVENT_SOURCE_OK(TIM3_EventSource));
2602  05c3 4d            	tnz	a
2603  05c4 2703          	jreq	L413
2604  05c6 4f            	clr	a
2605  05c7 2010          	jra	L613
2606  05c9               L413:
2607  05c9 ae022b        	ldw	x,#555
2608  05cc 89            	pushw	x
2609  05cd ae0000        	ldw	x,#0
2610  05d0 89            	pushw	x
2611  05d1 ae0000        	ldw	x,#L502
2612  05d4 cd0000        	call	_assert_failed
2614  05d7 5b04          	addw	sp,#4
2615  05d9               L613:
2616                     ; 558   TIM3->EGR = (uint8_t)TIM3_EventSource;
2618  05d9 7b01          	ld	a,(OFST+1,sp)
2619  05db c75324        	ld	21284,a
2620                     ; 559 }
2623  05de 84            	pop	a
2624  05df 81            	ret
2661                     ; 569 void TIM3_OC1PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2661                     ; 570 {
2662                     	switch	.text
2663  05e0               _TIM3_OC1PolarityConfig:
2665  05e0 88            	push	a
2666       00000000      OFST:	set	0
2669                     ; 572   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2671  05e1 4d            	tnz	a
2672  05e2 2704          	jreq	L423
2673  05e4 a122          	cp	a,#34
2674  05e6 2603          	jrne	L223
2675  05e8               L423:
2676  05e8 4f            	clr	a
2677  05e9 2010          	jra	L623
2678  05eb               L223:
2679  05eb ae023c        	ldw	x,#572
2680  05ee 89            	pushw	x
2681  05ef ae0000        	ldw	x,#0
2682  05f2 89            	pushw	x
2683  05f3 ae0000        	ldw	x,#L502
2684  05f6 cd0000        	call	_assert_failed
2686  05f9 5b04          	addw	sp,#4
2687  05fb               L623:
2688                     ; 575   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2690  05fb 0d01          	tnz	(OFST+1,sp)
2691  05fd 2706          	jreq	L5601
2692                     ; 577     TIM3->CCER1 |= TIM3_CCER1_CC1P;
2694  05ff 72125327      	bset	21287,#1
2696  0603 2004          	jra	L7601
2697  0605               L5601:
2698                     ; 581     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
2700  0605 72135327      	bres	21287,#1
2701  0609               L7601:
2702                     ; 583 }
2705  0609 84            	pop	a
2706  060a 81            	ret
2743                     ; 593 void TIM3_OC2PolarityConfig(TIM3_OCPolarity_TypeDef TIM3_OCPolarity)
2743                     ; 594 {
2744                     	switch	.text
2745  060b               _TIM3_OC2PolarityConfig:
2747  060b 88            	push	a
2748       00000000      OFST:	set	0
2751                     ; 596   assert_param(IS_TIM3_OC_POLARITY_OK(TIM3_OCPolarity));
2753  060c 4d            	tnz	a
2754  060d 2704          	jreq	L433
2755  060f a122          	cp	a,#34
2756  0611 2603          	jrne	L233
2757  0613               L433:
2758  0613 4f            	clr	a
2759  0614 2010          	jra	L633
2760  0616               L233:
2761  0616 ae0254        	ldw	x,#596
2762  0619 89            	pushw	x
2763  061a ae0000        	ldw	x,#0
2764  061d 89            	pushw	x
2765  061e ae0000        	ldw	x,#L502
2766  0621 cd0000        	call	_assert_failed
2768  0624 5b04          	addw	sp,#4
2769  0626               L633:
2770                     ; 599   if (TIM3_OCPolarity != TIM3_OCPOLARITY_HIGH)
2772  0626 0d01          	tnz	(OFST+1,sp)
2773  0628 2706          	jreq	L7011
2774                     ; 601     TIM3->CCER1 |= TIM3_CCER1_CC2P;
2776  062a 721a5327      	bset	21287,#5
2778  062e 2004          	jra	L1111
2779  0630               L7011:
2780                     ; 605     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
2782  0630 721b5327      	bres	21287,#5
2783  0634               L1111:
2784                     ; 607 }
2787  0634 84            	pop	a
2788  0635 81            	ret
2834                     ; 619 void TIM3_CCxCmd(TIM3_Channel_TypeDef TIM3_Channel, FunctionalState NewState)
2834                     ; 620 {
2835                     	switch	.text
2836  0636               _TIM3_CCxCmd:
2838  0636 89            	pushw	x
2839       00000000      OFST:	set	0
2842                     ; 622   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2844  0637 9e            	ld	a,xh
2845  0638 4d            	tnz	a
2846  0639 2705          	jreq	L443
2847  063b 9e            	ld	a,xh
2848  063c a101          	cp	a,#1
2849  063e 2603          	jrne	L243
2850  0640               L443:
2851  0640 4f            	clr	a
2852  0641 2010          	jra	L643
2853  0643               L243:
2854  0643 ae026e        	ldw	x,#622
2855  0646 89            	pushw	x
2856  0647 ae0000        	ldw	x,#0
2857  064a 89            	pushw	x
2858  064b ae0000        	ldw	x,#L502
2859  064e cd0000        	call	_assert_failed
2861  0651 5b04          	addw	sp,#4
2862  0653               L643:
2863                     ; 623   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2865  0653 0d02          	tnz	(OFST+2,sp)
2866  0655 2706          	jreq	L253
2867  0657 7b02          	ld	a,(OFST+2,sp)
2868  0659 a101          	cp	a,#1
2869  065b 2603          	jrne	L053
2870  065d               L253:
2871  065d 4f            	clr	a
2872  065e 2010          	jra	L453
2873  0660               L053:
2874  0660 ae026f        	ldw	x,#623
2875  0663 89            	pushw	x
2876  0664 ae0000        	ldw	x,#0
2877  0667 89            	pushw	x
2878  0668 ae0000        	ldw	x,#L502
2879  066b cd0000        	call	_assert_failed
2881  066e 5b04          	addw	sp,#4
2882  0670               L453:
2883                     ; 625   if (TIM3_Channel == TIM3_CHANNEL_1)
2885  0670 0d01          	tnz	(OFST+1,sp)
2886  0672 2610          	jrne	L5311
2887                     ; 628     if (NewState != DISABLE)
2889  0674 0d02          	tnz	(OFST+2,sp)
2890  0676 2706          	jreq	L7311
2891                     ; 630       TIM3->CCER1 |= TIM3_CCER1_CC1E;
2893  0678 72105327      	bset	21287,#0
2895  067c 2014          	jra	L3411
2896  067e               L7311:
2897                     ; 634       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
2899  067e 72115327      	bres	21287,#0
2900  0682 200e          	jra	L3411
2901  0684               L5311:
2902                     ; 641     if (NewState != DISABLE)
2904  0684 0d02          	tnz	(OFST+2,sp)
2905  0686 2706          	jreq	L5411
2906                     ; 643       TIM3->CCER1 |= TIM3_CCER1_CC2E;
2908  0688 72185327      	bset	21287,#4
2910  068c 2004          	jra	L3411
2911  068e               L5411:
2912                     ; 647       TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
2914  068e 72195327      	bres	21287,#4
2915  0692               L3411:
2916                     ; 650 }
2919  0692 85            	popw	x
2920  0693 81            	ret
2966                     ; 671 void TIM3_SelectOCxM(TIM3_Channel_TypeDef TIM3_Channel, TIM3_OCMode_TypeDef TIM3_OCMode)
2966                     ; 672 {
2967                     	switch	.text
2968  0694               _TIM3_SelectOCxM:
2970  0694 89            	pushw	x
2971       00000000      OFST:	set	0
2974                     ; 674   assert_param(IS_TIM3_CHANNEL_OK(TIM3_Channel));
2976  0695 9e            	ld	a,xh
2977  0696 4d            	tnz	a
2978  0697 2705          	jreq	L263
2979  0699 9e            	ld	a,xh
2980  069a a101          	cp	a,#1
2981  069c 2603          	jrne	L063
2982  069e               L263:
2983  069e 4f            	clr	a
2984  069f 2010          	jra	L463
2985  06a1               L063:
2986  06a1 ae02a2        	ldw	x,#674
2987  06a4 89            	pushw	x
2988  06a5 ae0000        	ldw	x,#0
2989  06a8 89            	pushw	x
2990  06a9 ae0000        	ldw	x,#L502
2991  06ac cd0000        	call	_assert_failed
2993  06af 5b04          	addw	sp,#4
2994  06b1               L463:
2995                     ; 675   assert_param(IS_TIM3_OCM_OK(TIM3_OCMode));
2997  06b1 0d02          	tnz	(OFST+2,sp)
2998  06b3 272a          	jreq	L073
2999  06b5 7b02          	ld	a,(OFST+2,sp)
3000  06b7 a110          	cp	a,#16
3001  06b9 2724          	jreq	L073
3002  06bb 7b02          	ld	a,(OFST+2,sp)
3003  06bd a120          	cp	a,#32
3004  06bf 271e          	jreq	L073
3005  06c1 7b02          	ld	a,(OFST+2,sp)
3006  06c3 a130          	cp	a,#48
3007  06c5 2718          	jreq	L073
3008  06c7 7b02          	ld	a,(OFST+2,sp)
3009  06c9 a160          	cp	a,#96
3010  06cb 2712          	jreq	L073
3011  06cd 7b02          	ld	a,(OFST+2,sp)
3012  06cf a170          	cp	a,#112
3013  06d1 270c          	jreq	L073
3014  06d3 7b02          	ld	a,(OFST+2,sp)
3015  06d5 a150          	cp	a,#80
3016  06d7 2706          	jreq	L073
3017  06d9 7b02          	ld	a,(OFST+2,sp)
3018  06db a140          	cp	a,#64
3019  06dd 2603          	jrne	L663
3020  06df               L073:
3021  06df 4f            	clr	a
3022  06e0 2010          	jra	L273
3023  06e2               L663:
3024  06e2 ae02a3        	ldw	x,#675
3025  06e5 89            	pushw	x
3026  06e6 ae0000        	ldw	x,#0
3027  06e9 89            	pushw	x
3028  06ea ae0000        	ldw	x,#L502
3029  06ed cd0000        	call	_assert_failed
3031  06f0 5b04          	addw	sp,#4
3032  06f2               L273:
3033                     ; 677   if (TIM3_Channel == TIM3_CHANNEL_1)
3035  06f2 0d01          	tnz	(OFST+1,sp)
3036  06f4 2610          	jrne	L3711
3037                     ; 680     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
3039  06f6 72115327      	bres	21287,#0
3040                     ; 683     TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
3042  06fa c65325        	ld	a,21285
3043  06fd a48f          	and	a,#143
3044  06ff 1a02          	or	a,(OFST+2,sp)
3045  0701 c75325        	ld	21285,a
3047  0704 200e          	jra	L5711
3048  0706               L3711:
3049                     ; 688     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2E);
3051  0706 72195327      	bres	21287,#4
3052                     ; 691     TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_OCM)) | (uint8_t)TIM3_OCMode);
3054  070a c65326        	ld	a,21286
3055  070d a48f          	and	a,#143
3056  070f 1a02          	or	a,(OFST+2,sp)
3057  0711 c75326        	ld	21286,a
3058  0714               L5711:
3059                     ; 693 }
3062  0714 85            	popw	x
3063  0715 81            	ret
3097                     ; 701 void TIM3_SetCounter(uint16_t Counter)
3097                     ; 702 {
3098                     	switch	.text
3099  0716               _TIM3_SetCounter:
3103                     ; 704   TIM3->CNTRH = (uint8_t)(Counter >> 8);
3105  0716 9e            	ld	a,xh
3106  0717 c75328        	ld	21288,a
3107                     ; 705   TIM3->CNTRL = (uint8_t)(Counter);
3109  071a 9f            	ld	a,xl
3110  071b c75329        	ld	21289,a
3111                     ; 706 }
3114  071e 81            	ret
3148                     ; 714 void TIM3_SetAutoreload(uint16_t Autoreload)
3148                     ; 715 {
3149                     	switch	.text
3150  071f               _TIM3_SetAutoreload:
3154                     ; 717   TIM3->ARRH = (uint8_t)(Autoreload >> 8);
3156  071f 9e            	ld	a,xh
3157  0720 c7532b        	ld	21291,a
3158                     ; 718   TIM3->ARRL = (uint8_t)(Autoreload);
3160  0723 9f            	ld	a,xl
3161  0724 c7532c        	ld	21292,a
3162                     ; 719 }
3165  0727 81            	ret
3199                     ; 727 void TIM3_SetCompare1(uint16_t Compare1)
3199                     ; 728 {
3200                     	switch	.text
3201  0728               _TIM3_SetCompare1:
3205                     ; 730   TIM3->CCR1H = (uint8_t)(Compare1 >> 8);
3207  0728 9e            	ld	a,xh
3208  0729 c7532d        	ld	21293,a
3209                     ; 731   TIM3->CCR1L = (uint8_t)(Compare1);
3211  072c 9f            	ld	a,xl
3212  072d c7532e        	ld	21294,a
3213                     ; 732 }
3216  0730 81            	ret
3250                     ; 740 void TIM3_SetCompare2(uint16_t Compare2)
3250                     ; 741 {
3251                     	switch	.text
3252  0731               _TIM3_SetCompare2:
3256                     ; 743   TIM3->CCR2H = (uint8_t)(Compare2 >> 8);
3258  0731 9e            	ld	a,xh
3259  0732 c7532f        	ld	21295,a
3260                     ; 744   TIM3->CCR2L = (uint8_t)(Compare2);
3262  0735 9f            	ld	a,xl
3263  0736 c75330        	ld	21296,a
3264                     ; 745 }
3267  0739 81            	ret
3304                     ; 757 void TIM3_SetIC1Prescaler(TIM3_ICPSC_TypeDef TIM3_IC1Prescaler)
3304                     ; 758 {
3305                     	switch	.text
3306  073a               _TIM3_SetIC1Prescaler:
3308  073a 88            	push	a
3309       00000000      OFST:	set	0
3312                     ; 760   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC1Prescaler));
3314  073b 4d            	tnz	a
3315  073c 270c          	jreq	L014
3316  073e a104          	cp	a,#4
3317  0740 2708          	jreq	L014
3318  0742 a108          	cp	a,#8
3319  0744 2704          	jreq	L014
3320  0746 a10c          	cp	a,#12
3321  0748 2603          	jrne	L604
3322  074a               L014:
3323  074a 4f            	clr	a
3324  074b 2010          	jra	L214
3325  074d               L604:
3326  074d ae02f8        	ldw	x,#760
3327  0750 89            	pushw	x
3328  0751 ae0000        	ldw	x,#0
3329  0754 89            	pushw	x
3330  0755 ae0000        	ldw	x,#L502
3331  0758 cd0000        	call	_assert_failed
3333  075b 5b04          	addw	sp,#4
3334  075d               L214:
3335                     ; 763   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC1Prescaler);
3337  075d c65325        	ld	a,21285
3338  0760 a4f3          	and	a,#243
3339  0762 1a01          	or	a,(OFST+1,sp)
3340  0764 c75325        	ld	21285,a
3341                     ; 764 }
3344  0767 84            	pop	a
3345  0768 81            	ret
3382                     ; 776 void TIM3_SetIC2Prescaler(TIM3_ICPSC_TypeDef TIM3_IC2Prescaler)
3382                     ; 777 {
3383                     	switch	.text
3384  0769               _TIM3_SetIC2Prescaler:
3386  0769 88            	push	a
3387       00000000      OFST:	set	0
3390                     ; 779   assert_param(IS_TIM3_IC_PRESCALER_OK(TIM3_IC2Prescaler));
3392  076a 4d            	tnz	a
3393  076b 270c          	jreq	L024
3394  076d a104          	cp	a,#4
3395  076f 2708          	jreq	L024
3396  0771 a108          	cp	a,#8
3397  0773 2704          	jreq	L024
3398  0775 a10c          	cp	a,#12
3399  0777 2603          	jrne	L614
3400  0779               L024:
3401  0779 4f            	clr	a
3402  077a 2010          	jra	L224
3403  077c               L614:
3404  077c ae030b        	ldw	x,#779
3405  077f 89            	pushw	x
3406  0780 ae0000        	ldw	x,#0
3407  0783 89            	pushw	x
3408  0784 ae0000        	ldw	x,#L502
3409  0787 cd0000        	call	_assert_failed
3411  078a 5b04          	addw	sp,#4
3412  078c               L224:
3413                     ; 782   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~TIM3_CCMR_ICxPSC)) | (uint8_t)TIM3_IC2Prescaler);
3415  078c c65326        	ld	a,21286
3416  078f a4f3          	and	a,#243
3417  0791 1a01          	or	a,(OFST+1,sp)
3418  0793 c75326        	ld	21286,a
3419                     ; 783 }
3422  0796 84            	pop	a
3423  0797 81            	ret
3475                     ; 790 uint16_t TIM3_GetCapture1(void)
3475                     ; 791 {
3476                     	switch	.text
3477  0798               _TIM3_GetCapture1:
3479  0798 5204          	subw	sp,#4
3480       00000004      OFST:	set	4
3483                     ; 793   uint16_t tmpccr1 = 0;
3485                     ; 794   uint8_t tmpccr1l=0, tmpccr1h=0;
3489                     ; 796   tmpccr1h = TIM3->CCR1H;
3491  079a c6532d        	ld	a,21293
3492  079d 6b02          	ld	(OFST-2,sp),a
3493                     ; 797   tmpccr1l = TIM3->CCR1L;
3495  079f c6532e        	ld	a,21294
3496  07a2 6b01          	ld	(OFST-3,sp),a
3497                     ; 799   tmpccr1 = (uint16_t)(tmpccr1l);
3499  07a4 7b01          	ld	a,(OFST-3,sp)
3500  07a6 5f            	clrw	x
3501  07a7 97            	ld	xl,a
3502  07a8 1f03          	ldw	(OFST-1,sp),x
3503                     ; 800   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3505  07aa 7b02          	ld	a,(OFST-2,sp)
3506  07ac 5f            	clrw	x
3507  07ad 97            	ld	xl,a
3508  07ae 4f            	clr	a
3509  07af 02            	rlwa	x,a
3510  07b0 01            	rrwa	x,a
3511  07b1 1a04          	or	a,(OFST+0,sp)
3512  07b3 01            	rrwa	x,a
3513  07b4 1a03          	or	a,(OFST-1,sp)
3514  07b6 01            	rrwa	x,a
3515  07b7 1f03          	ldw	(OFST-1,sp),x
3516                     ; 802   return (uint16_t)tmpccr1;
3518  07b9 1e03          	ldw	x,(OFST-1,sp)
3521  07bb 5b04          	addw	sp,#4
3522  07bd 81            	ret
3574                     ; 810 uint16_t TIM3_GetCapture2(void)
3574                     ; 811 {
3575                     	switch	.text
3576  07be               _TIM3_GetCapture2:
3578  07be 5204          	subw	sp,#4
3579       00000004      OFST:	set	4
3582                     ; 813   uint16_t tmpccr2 = 0;
3584                     ; 814   uint8_t tmpccr2l=0, tmpccr2h=0;
3588                     ; 816   tmpccr2h = TIM3->CCR2H;
3590  07c0 c6532f        	ld	a,21295
3591  07c3 6b02          	ld	(OFST-2,sp),a
3592                     ; 817   tmpccr2l = TIM3->CCR2L;
3594  07c5 c65330        	ld	a,21296
3595  07c8 6b01          	ld	(OFST-3,sp),a
3596                     ; 819   tmpccr2 = (uint16_t)(tmpccr2l);
3598  07ca 7b01          	ld	a,(OFST-3,sp)
3599  07cc 5f            	clrw	x
3600  07cd 97            	ld	xl,a
3601  07ce 1f03          	ldw	(OFST-1,sp),x
3602                     ; 820   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3604  07d0 7b02          	ld	a,(OFST-2,sp)
3605  07d2 5f            	clrw	x
3606  07d3 97            	ld	xl,a
3607  07d4 4f            	clr	a
3608  07d5 02            	rlwa	x,a
3609  07d6 01            	rrwa	x,a
3610  07d7 1a04          	or	a,(OFST+0,sp)
3611  07d9 01            	rrwa	x,a
3612  07da 1a03          	or	a,(OFST-1,sp)
3613  07dc 01            	rrwa	x,a
3614  07dd 1f03          	ldw	(OFST-1,sp),x
3615                     ; 822   return (uint16_t)tmpccr2;
3617  07df 1e03          	ldw	x,(OFST-1,sp)
3620  07e1 5b04          	addw	sp,#4
3621  07e3 81            	ret
3655                     ; 830 uint16_t TIM3_GetCounter(void)
3655                     ; 831 {
3656                     	switch	.text
3657  07e4               _TIM3_GetCounter:
3659  07e4 89            	pushw	x
3660       00000002      OFST:	set	2
3663                     ; 832   uint16_t tmpcntr = 0;
3665                     ; 834   tmpcntr = ((uint16_t)TIM3->CNTRH << 8);
3667  07e5 c65328        	ld	a,21288
3668  07e8 5f            	clrw	x
3669  07e9 97            	ld	xl,a
3670  07ea 4f            	clr	a
3671  07eb 02            	rlwa	x,a
3672  07ec 1f01          	ldw	(OFST-1,sp),x
3673                     ; 836   return (uint16_t)( tmpcntr| (uint16_t)(TIM3->CNTRL));
3675  07ee c65329        	ld	a,21289
3676  07f1 5f            	clrw	x
3677  07f2 97            	ld	xl,a
3678  07f3 01            	rrwa	x,a
3679  07f4 1a02          	or	a,(OFST+0,sp)
3680  07f6 01            	rrwa	x,a
3681  07f7 1a01          	or	a,(OFST-1,sp)
3682  07f9 01            	rrwa	x,a
3685  07fa 5b02          	addw	sp,#2
3686  07fc 81            	ret
3710                     ; 844 TIM3_Prescaler_TypeDef TIM3_GetPrescaler(void)
3710                     ; 845 {
3711                     	switch	.text
3712  07fd               _TIM3_GetPrescaler:
3716                     ; 847   return (TIM3_Prescaler_TypeDef)(TIM3->PSCR);
3718  07fd c6532a        	ld	a,21290
3721  0800 81            	ret
3847                     ; 861 FlagStatus TIM3_GetFlagStatus(TIM3_FLAG_TypeDef TIM3_FLAG)
3847                     ; 862 {
3848                     	switch	.text
3849  0801               _TIM3_GetFlagStatus:
3851  0801 89            	pushw	x
3852  0802 89            	pushw	x
3853       00000002      OFST:	set	2
3856                     ; 863   FlagStatus bitstatus = RESET;
3858                     ; 864   uint8_t tim3_flag_l = 0, tim3_flag_h = 0;
3862                     ; 867   assert_param(IS_TIM3_GET_FLAG_OK(TIM3_FLAG));
3864  0803 a30001        	cpw	x,#1
3865  0806 2714          	jreq	L044
3866  0808 a30002        	cpw	x,#2
3867  080b 270f          	jreq	L044
3868  080d a30004        	cpw	x,#4
3869  0810 270a          	jreq	L044
3870  0812 a30200        	cpw	x,#512
3871  0815 2705          	jreq	L044
3872  0817 a30400        	cpw	x,#1024
3873  081a 2603          	jrne	L634
3874  081c               L044:
3875  081c 4f            	clr	a
3876  081d 2010          	jra	L244
3877  081f               L634:
3878  081f ae0363        	ldw	x,#867
3879  0822 89            	pushw	x
3880  0823 ae0000        	ldw	x,#0
3881  0826 89            	pushw	x
3882  0827 ae0000        	ldw	x,#L502
3883  082a cd0000        	call	_assert_failed
3885  082d 5b04          	addw	sp,#4
3886  082f               L244:
3887                     ; 869   tim3_flag_l = (uint8_t)(TIM3->SR1 & (uint8_t)TIM3_FLAG);
3889  082f c65322        	ld	a,21282
3890  0832 1404          	and	a,(OFST+2,sp)
3891  0834 6b01          	ld	(OFST-1,sp),a
3892                     ; 870   tim3_flag_h = (uint8_t)((uint16_t)TIM3_FLAG >> 8);
3894  0836 7b03          	ld	a,(OFST+1,sp)
3895  0838 6b02          	ld	(OFST+0,sp),a
3896                     ; 872   if (((tim3_flag_l) | (uint8_t)(TIM3->SR2 & tim3_flag_h)) != (uint8_t)RESET )
3898  083a c65323        	ld	a,21283
3899  083d 1402          	and	a,(OFST+0,sp)
3900  083f 1a01          	or	a,(OFST-1,sp)
3901  0841 2706          	jreq	L5051
3902                     ; 874     bitstatus = SET;
3904  0843 a601          	ld	a,#1
3905  0845 6b02          	ld	(OFST+0,sp),a
3907  0847 2002          	jra	L7051
3908  0849               L5051:
3909                     ; 878     bitstatus = RESET;
3911  0849 0f02          	clr	(OFST+0,sp)
3912  084b               L7051:
3913                     ; 880   return (FlagStatus)bitstatus;
3915  084b 7b02          	ld	a,(OFST+0,sp)
3918  084d 5b04          	addw	sp,#4
3919  084f 81            	ret
3955                     ; 894 void TIM3_ClearFlag(TIM3_FLAG_TypeDef TIM3_FLAG)
3955                     ; 895 {
3956                     	switch	.text
3957  0850               _TIM3_ClearFlag:
3959  0850 89            	pushw	x
3960       00000000      OFST:	set	0
3963                     ; 897   assert_param(IS_TIM3_CLEAR_FLAG_OK(TIM3_FLAG));
3965  0851 01            	rrwa	x,a
3966  0852 a4f8          	and	a,#248
3967  0854 01            	rrwa	x,a
3968  0855 a4f9          	and	a,#249
3969  0857 01            	rrwa	x,a
3970  0858 a30000        	cpw	x,#0
3971  085b 2607          	jrne	L644
3972  085d 1e01          	ldw	x,(OFST+1,sp)
3973  085f 2703          	jreq	L644
3974  0861 4f            	clr	a
3975  0862 2010          	jra	L054
3976  0864               L644:
3977  0864 ae0381        	ldw	x,#897
3978  0867 89            	pushw	x
3979  0868 ae0000        	ldw	x,#0
3980  086b 89            	pushw	x
3981  086c ae0000        	ldw	x,#L502
3982  086f cd0000        	call	_assert_failed
3984  0872 5b04          	addw	sp,#4
3985  0874               L054:
3986                     ; 900   TIM3->SR1 = (uint8_t)(~((uint8_t)(TIM3_FLAG)));
3988  0874 7b02          	ld	a,(OFST+2,sp)
3989  0876 43            	cpl	a
3990  0877 c75322        	ld	21282,a
3991                     ; 901   TIM3->SR2 = (uint8_t)(~((uint8_t)((uint16_t)TIM3_FLAG >> 8)));
3993  087a 7b01          	ld	a,(OFST+1,sp)
3994  087c 43            	cpl	a
3995  087d c75323        	ld	21283,a
3996                     ; 902 }
3999  0880 85            	popw	x
4000  0881 81            	ret
4065                     ; 913 ITStatus TIM3_GetITStatus(TIM3_IT_TypeDef TIM3_IT)
4065                     ; 914 {
4066                     	switch	.text
4067  0882               _TIM3_GetITStatus:
4069  0882 88            	push	a
4070  0883 89            	pushw	x
4071       00000002      OFST:	set	2
4074                     ; 915   ITStatus bitstatus = RESET;
4076                     ; 916   uint8_t TIM3_itStatus = 0, TIM3_itEnable = 0;
4080                     ; 919   assert_param(IS_TIM3_GET_IT_OK(TIM3_IT));
4082  0884 a101          	cp	a,#1
4083  0886 2708          	jreq	L654
4084  0888 a102          	cp	a,#2
4085  088a 2704          	jreq	L654
4086  088c a104          	cp	a,#4
4087  088e 2603          	jrne	L454
4088  0890               L654:
4089  0890 4f            	clr	a
4090  0891 2010          	jra	L064
4091  0893               L454:
4092  0893 ae0397        	ldw	x,#919
4093  0896 89            	pushw	x
4094  0897 ae0000        	ldw	x,#0
4095  089a 89            	pushw	x
4096  089b ae0000        	ldw	x,#L502
4097  089e cd0000        	call	_assert_failed
4099  08a1 5b04          	addw	sp,#4
4100  08a3               L064:
4101                     ; 921   TIM3_itStatus = (uint8_t)(TIM3->SR1 & TIM3_IT);
4103  08a3 c65322        	ld	a,21282
4104  08a6 1403          	and	a,(OFST+1,sp)
4105  08a8 6b01          	ld	(OFST-1,sp),a
4106                     ; 923   TIM3_itEnable = (uint8_t)(TIM3->IER & TIM3_IT);
4108  08aa c65321        	ld	a,21281
4109  08ad 1403          	and	a,(OFST+1,sp)
4110  08af 6b02          	ld	(OFST+0,sp),a
4111                     ; 925   if ((TIM3_itStatus != (uint8_t)RESET ) && (TIM3_itEnable != (uint8_t)RESET ))
4113  08b1 0d01          	tnz	(OFST-1,sp)
4114  08b3 270a          	jreq	L1651
4116  08b5 0d02          	tnz	(OFST+0,sp)
4117  08b7 2706          	jreq	L1651
4118                     ; 927     bitstatus = SET;
4120  08b9 a601          	ld	a,#1
4121  08bb 6b02          	ld	(OFST+0,sp),a
4123  08bd 2002          	jra	L3651
4124  08bf               L1651:
4125                     ; 931     bitstatus = RESET;
4127  08bf 0f02          	clr	(OFST+0,sp)
4128  08c1               L3651:
4129                     ; 933   return (ITStatus)(bitstatus);
4131  08c1 7b02          	ld	a,(OFST+0,sp)
4134  08c3 5b03          	addw	sp,#3
4135  08c5 81            	ret
4172                     ; 945 void TIM3_ClearITPendingBit(TIM3_IT_TypeDef TIM3_IT)
4172                     ; 946 {
4173                     	switch	.text
4174  08c6               _TIM3_ClearITPendingBit:
4176  08c6 88            	push	a
4177       00000000      OFST:	set	0
4180                     ; 948   assert_param(IS_TIM3_IT_OK(TIM3_IT));
4182  08c7 4d            	tnz	a
4183  08c8 2707          	jreq	L464
4184  08ca a108          	cp	a,#8
4185  08cc 2403          	jruge	L464
4186  08ce 4f            	clr	a
4187  08cf 2010          	jra	L664
4188  08d1               L464:
4189  08d1 ae03b4        	ldw	x,#948
4190  08d4 89            	pushw	x
4191  08d5 ae0000        	ldw	x,#0
4192  08d8 89            	pushw	x
4193  08d9 ae0000        	ldw	x,#L502
4194  08dc cd0000        	call	_assert_failed
4196  08df 5b04          	addw	sp,#4
4197  08e1               L664:
4198                     ; 951   TIM3->SR1 = (uint8_t)(~TIM3_IT);
4200  08e1 7b01          	ld	a,(OFST+1,sp)
4201  08e3 43            	cpl	a
4202  08e4 c75322        	ld	21282,a
4203                     ; 952 }
4206  08e7 84            	pop	a
4207  08e8 81            	ret
4259                     ; 970 static void TI1_Config(uint8_t TIM3_ICPolarity,
4259                     ; 971                        uint8_t TIM3_ICSelection,
4259                     ; 972                        uint8_t TIM3_ICFilter)
4259                     ; 973 {
4260                     	switch	.text
4261  08e9               L3_TI1_Config:
4263  08e9 89            	pushw	x
4264  08ea 88            	push	a
4265       00000001      OFST:	set	1
4268                     ; 975   TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1E);
4270  08eb 72115327      	bres	21287,#0
4271                     ; 978   TIM3->CCMR1 = (uint8_t)((uint8_t)(TIM3->CCMR1 & (uint8_t)(~( TIM3_CCMR_CCxS | TIM3_CCMR_ICxF))) | (uint8_t)(( (TIM3_ICSelection)) | ((uint8_t)( TIM3_ICFilter << 4))));
4273  08ef 7b06          	ld	a,(OFST+5,sp)
4274  08f1 97            	ld	xl,a
4275  08f2 a610          	ld	a,#16
4276  08f4 42            	mul	x,a
4277  08f5 9f            	ld	a,xl
4278  08f6 1a03          	or	a,(OFST+2,sp)
4279  08f8 6b01          	ld	(OFST+0,sp),a
4280  08fa c65325        	ld	a,21285
4281  08fd a40c          	and	a,#12
4282  08ff 1a01          	or	a,(OFST+0,sp)
4283  0901 c75325        	ld	21285,a
4284                     ; 981   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4286  0904 0d02          	tnz	(OFST+1,sp)
4287  0906 2706          	jreq	L1361
4288                     ; 983     TIM3->CCER1 |= TIM3_CCER1_CC1P;
4290  0908 72125327      	bset	21287,#1
4292  090c 2004          	jra	L3361
4293  090e               L1361:
4294                     ; 987     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC1P);
4296  090e 72135327      	bres	21287,#1
4297  0912               L3361:
4298                     ; 990   TIM3->CCER1 |= TIM3_CCER1_CC1E;
4300  0912 72105327      	bset	21287,#0
4301                     ; 991 }
4304  0916 5b03          	addw	sp,#3
4305  0918 81            	ret
4357                     ; 1009 static void TI2_Config(uint8_t TIM3_ICPolarity,
4357                     ; 1010                        uint8_t TIM3_ICSelection,
4357                     ; 1011                        uint8_t TIM3_ICFilter)
4357                     ; 1012 {
4358                     	switch	.text
4359  0919               L5_TI2_Config:
4361  0919 89            	pushw	x
4362  091a 88            	push	a
4363       00000001      OFST:	set	1
4366                     ; 1014   TIM3->CCER1 &=  (uint8_t)(~TIM3_CCER1_CC2E);
4368  091b 72195327      	bres	21287,#4
4369                     ; 1017   TIM3->CCMR2 = (uint8_t)((uint8_t)(TIM3->CCMR2 & (uint8_t)(~( TIM3_CCMR_CCxS |
4369                     ; 1018                                                               TIM3_CCMR_ICxF    ))) | (uint8_t)(( (TIM3_ICSelection)) | 
4369                     ; 1019                                                                                                 ((uint8_t)( TIM3_ICFilter << 4))));
4371  091f 7b06          	ld	a,(OFST+5,sp)
4372  0921 97            	ld	xl,a
4373  0922 a610          	ld	a,#16
4374  0924 42            	mul	x,a
4375  0925 9f            	ld	a,xl
4376  0926 1a03          	or	a,(OFST+2,sp)
4377  0928 6b01          	ld	(OFST+0,sp),a
4378  092a c65326        	ld	a,21286
4379  092d a40c          	and	a,#12
4380  092f 1a01          	or	a,(OFST+0,sp)
4381  0931 c75326        	ld	21286,a
4382                     ; 1022   if (TIM3_ICPolarity != TIM3_ICPOLARITY_RISING)
4384  0934 0d02          	tnz	(OFST+1,sp)
4385  0936 2706          	jreq	L3661
4386                     ; 1024     TIM3->CCER1 |= TIM3_CCER1_CC2P;
4388  0938 721a5327      	bset	21287,#5
4390  093c 2004          	jra	L5661
4391  093e               L3661:
4392                     ; 1028     TIM3->CCER1 &= (uint8_t)(~TIM3_CCER1_CC2P);
4394  093e 721b5327      	bres	21287,#5
4395  0942               L5661:
4396                     ; 1032   TIM3->CCER1 |= TIM3_CCER1_CC2E;
4398  0942 72185327      	bset	21287,#4
4399                     ; 1033 }
4402  0946 5b03          	addw	sp,#3
4403  0948 81            	ret
4416                     	xdef	_TIM3_ClearITPendingBit
4417                     	xdef	_TIM3_GetITStatus
4418                     	xdef	_TIM3_ClearFlag
4419                     	xdef	_TIM3_GetFlagStatus
4420                     	xdef	_TIM3_GetPrescaler
4421                     	xdef	_TIM3_GetCounter
4422                     	xdef	_TIM3_GetCapture2
4423                     	xdef	_TIM3_GetCapture1
4424                     	xdef	_TIM3_SetIC2Prescaler
4425                     	xdef	_TIM3_SetIC1Prescaler
4426                     	xdef	_TIM3_SetCompare2
4427                     	xdef	_TIM3_SetCompare1
4428                     	xdef	_TIM3_SetAutoreload
4429                     	xdef	_TIM3_SetCounter
4430                     	xdef	_TIM3_SelectOCxM
4431                     	xdef	_TIM3_CCxCmd
4432                     	xdef	_TIM3_OC2PolarityConfig
4433                     	xdef	_TIM3_OC1PolarityConfig
4434                     	xdef	_TIM3_GenerateEvent
4435                     	xdef	_TIM3_OC2PreloadConfig
4436                     	xdef	_TIM3_OC1PreloadConfig
4437                     	xdef	_TIM3_ARRPreloadConfig
4438                     	xdef	_TIM3_ForcedOC2Config
4439                     	xdef	_TIM3_ForcedOC1Config
4440                     	xdef	_TIM3_PrescalerConfig
4441                     	xdef	_TIM3_SelectOnePulseMode
4442                     	xdef	_TIM3_UpdateRequestConfig
4443                     	xdef	_TIM3_UpdateDisableConfig
4444                     	xdef	_TIM3_ITConfig
4445                     	xdef	_TIM3_Cmd
4446                     	xdef	_TIM3_PWMIConfig
4447                     	xdef	_TIM3_ICInit
4448                     	xdef	_TIM3_OC2Init
4449                     	xdef	_TIM3_OC1Init
4450                     	xdef	_TIM3_TimeBaseInit
4451                     	xdef	_TIM3_DeInit
4452                     	xref	_assert_failed
4453                     .const:	section	.text
4454  0000               L502:
4455  0000 6c6962726172  	dc.b	"library\stm8s_tim3"
4456  0012 2e6300        	dc.b	".c",0
4476                     	end
