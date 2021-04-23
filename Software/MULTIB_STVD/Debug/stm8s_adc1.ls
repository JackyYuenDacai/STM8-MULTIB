   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 52 void ADC1_DeInit(void)
  42                     ; 53 {
  44                     	switch	.text
  45  0000               _ADC1_DeInit:
  49                     ; 54   ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  51  0000 725f5400      	clr	21504
  52                     ; 55   ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  54  0004 725f5401      	clr	21505
  55                     ; 56   ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  57  0008 725f5402      	clr	21506
  58                     ; 57   ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  60  000c 725f5403      	clr	21507
  61                     ; 58   ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  63  0010 725f5406      	clr	21510
  64                     ; 59   ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  66  0014 725f5407      	clr	21511
  67                     ; 60   ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  69  0018 35ff5408      	mov	21512,#255
  70                     ; 61   ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  72  001c 35035409      	mov	21513,#3
  73                     ; 62   ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  75  0020 725f540a      	clr	21514
  76                     ; 63   ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  78  0024 725f540b      	clr	21515
  79                     ; 64   ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  81  0028 725f540e      	clr	21518
  82                     ; 65   ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  84  002c 725f540f      	clr	21519
  85                     ; 66 }
  88  0030 81            	ret
 540                     ; 88 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 540                     ; 89 {
 541                     	switch	.text
 542  0031               _ADC1_Init:
 544  0031 89            	pushw	x
 545       00000000      OFST:	set	0
 548                     ; 91   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 550  0032 9e            	ld	a,xh
 551  0033 4d            	tnz	a
 552  0034 2705          	jreq	L21
 553  0036 9e            	ld	a,xh
 554  0037 a101          	cp	a,#1
 555  0039 2603          	jrne	L01
 556  003b               L21:
 557  003b 4f            	clr	a
 558  003c 2010          	jra	L41
 559  003e               L01:
 560  003e ae005b        	ldw	x,#91
 561  0041 89            	pushw	x
 562  0042 ae0000        	ldw	x,#0
 563  0045 89            	pushw	x
 564  0046 ae0000        	ldw	x,#L542
 565  0049 cd0000        	call	_assert_failed
 567  004c 5b04          	addw	sp,#4
 568  004e               L41:
 569                     ; 92   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 571  004e 0d02          	tnz	(OFST+2,sp)
 572  0050 273c          	jreq	L02
 573  0052 7b02          	ld	a,(OFST+2,sp)
 574  0054 a101          	cp	a,#1
 575  0056 2736          	jreq	L02
 576  0058 7b02          	ld	a,(OFST+2,sp)
 577  005a a102          	cp	a,#2
 578  005c 2730          	jreq	L02
 579  005e 7b02          	ld	a,(OFST+2,sp)
 580  0060 a103          	cp	a,#3
 581  0062 272a          	jreq	L02
 582  0064 7b02          	ld	a,(OFST+2,sp)
 583  0066 a104          	cp	a,#4
 584  0068 2724          	jreq	L02
 585  006a 7b02          	ld	a,(OFST+2,sp)
 586  006c a105          	cp	a,#5
 587  006e 271e          	jreq	L02
 588  0070 7b02          	ld	a,(OFST+2,sp)
 589  0072 a106          	cp	a,#6
 590  0074 2718          	jreq	L02
 591  0076 7b02          	ld	a,(OFST+2,sp)
 592  0078 a107          	cp	a,#7
 593  007a 2712          	jreq	L02
 594  007c 7b02          	ld	a,(OFST+2,sp)
 595  007e a108          	cp	a,#8
 596  0080 270c          	jreq	L02
 597  0082 7b02          	ld	a,(OFST+2,sp)
 598  0084 a10c          	cp	a,#12
 599  0086 2706          	jreq	L02
 600  0088 7b02          	ld	a,(OFST+2,sp)
 601  008a a109          	cp	a,#9
 602  008c 2603          	jrne	L61
 603  008e               L02:
 604  008e 4f            	clr	a
 605  008f 2010          	jra	L22
 606  0091               L61:
 607  0091 ae005c        	ldw	x,#92
 608  0094 89            	pushw	x
 609  0095 ae0000        	ldw	x,#0
 610  0098 89            	pushw	x
 611  0099 ae0000        	ldw	x,#L542
 612  009c cd0000        	call	_assert_failed
 614  009f 5b04          	addw	sp,#4
 615  00a1               L22:
 616                     ; 93   assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 618  00a1 0d05          	tnz	(OFST+5,sp)
 619  00a3 272a          	jreq	L62
 620  00a5 7b05          	ld	a,(OFST+5,sp)
 621  00a7 a110          	cp	a,#16
 622  00a9 2724          	jreq	L62
 623  00ab 7b05          	ld	a,(OFST+5,sp)
 624  00ad a120          	cp	a,#32
 625  00af 271e          	jreq	L62
 626  00b1 7b05          	ld	a,(OFST+5,sp)
 627  00b3 a130          	cp	a,#48
 628  00b5 2718          	jreq	L62
 629  00b7 7b05          	ld	a,(OFST+5,sp)
 630  00b9 a140          	cp	a,#64
 631  00bb 2712          	jreq	L62
 632  00bd 7b05          	ld	a,(OFST+5,sp)
 633  00bf a150          	cp	a,#80
 634  00c1 270c          	jreq	L62
 635  00c3 7b05          	ld	a,(OFST+5,sp)
 636  00c5 a160          	cp	a,#96
 637  00c7 2706          	jreq	L62
 638  00c9 7b05          	ld	a,(OFST+5,sp)
 639  00cb a170          	cp	a,#112
 640  00cd 2603          	jrne	L42
 641  00cf               L62:
 642  00cf 4f            	clr	a
 643  00d0 2010          	jra	L03
 644  00d2               L42:
 645  00d2 ae005d        	ldw	x,#93
 646  00d5 89            	pushw	x
 647  00d6 ae0000        	ldw	x,#0
 648  00d9 89            	pushw	x
 649  00da ae0000        	ldw	x,#L542
 650  00dd cd0000        	call	_assert_failed
 652  00e0 5b04          	addw	sp,#4
 653  00e2               L03:
 654                     ; 94   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 656  00e2 0d06          	tnz	(OFST+6,sp)
 657  00e4 2706          	jreq	L43
 658  00e6 7b06          	ld	a,(OFST+6,sp)
 659  00e8 a110          	cp	a,#16
 660  00ea 2603          	jrne	L23
 661  00ec               L43:
 662  00ec 4f            	clr	a
 663  00ed 2010          	jra	L63
 664  00ef               L23:
 665  00ef ae005e        	ldw	x,#94
 666  00f2 89            	pushw	x
 667  00f3 ae0000        	ldw	x,#0
 668  00f6 89            	pushw	x
 669  00f7 ae0000        	ldw	x,#L542
 670  00fa cd0000        	call	_assert_failed
 672  00fd 5b04          	addw	sp,#4
 673  00ff               L63:
 674                     ; 95   assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 676  00ff 0d07          	tnz	(OFST+7,sp)
 677  0101 2706          	jreq	L24
 678  0103 7b07          	ld	a,(OFST+7,sp)
 679  0105 a101          	cp	a,#1
 680  0107 2603          	jrne	L04
 681  0109               L24:
 682  0109 4f            	clr	a
 683  010a 2010          	jra	L44
 684  010c               L04:
 685  010c ae005f        	ldw	x,#95
 686  010f 89            	pushw	x
 687  0110 ae0000        	ldw	x,#0
 688  0113 89            	pushw	x
 689  0114 ae0000        	ldw	x,#L542
 690  0117 cd0000        	call	_assert_failed
 692  011a 5b04          	addw	sp,#4
 693  011c               L44:
 694                     ; 96   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 696  011c 0d08          	tnz	(OFST+8,sp)
 697  011e 2706          	jreq	L05
 698  0120 7b08          	ld	a,(OFST+8,sp)
 699  0122 a108          	cp	a,#8
 700  0124 2603          	jrne	L64
 701  0126               L05:
 702  0126 4f            	clr	a
 703  0127 2010          	jra	L25
 704  0129               L64:
 705  0129 ae0060        	ldw	x,#96
 706  012c 89            	pushw	x
 707  012d ae0000        	ldw	x,#0
 708  0130 89            	pushw	x
 709  0131 ae0000        	ldw	x,#L542
 710  0134 cd0000        	call	_assert_failed
 712  0137 5b04          	addw	sp,#4
 713  0139               L25:
 714                     ; 97   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 716  0139 0d09          	tnz	(OFST+9,sp)
 717  013b 2742          	jreq	L65
 718  013d 7b09          	ld	a,(OFST+9,sp)
 719  013f a101          	cp	a,#1
 720  0141 273c          	jreq	L65
 721  0143 7b09          	ld	a,(OFST+9,sp)
 722  0145 a102          	cp	a,#2
 723  0147 2736          	jreq	L65
 724  0149 7b09          	ld	a,(OFST+9,sp)
 725  014b a103          	cp	a,#3
 726  014d 2730          	jreq	L65
 727  014f 7b09          	ld	a,(OFST+9,sp)
 728  0151 a104          	cp	a,#4
 729  0153 272a          	jreq	L65
 730  0155 7b09          	ld	a,(OFST+9,sp)
 731  0157 a105          	cp	a,#5
 732  0159 2724          	jreq	L65
 733  015b 7b09          	ld	a,(OFST+9,sp)
 734  015d a106          	cp	a,#6
 735  015f 271e          	jreq	L65
 736  0161 7b09          	ld	a,(OFST+9,sp)
 737  0163 a107          	cp	a,#7
 738  0165 2718          	jreq	L65
 739  0167 7b09          	ld	a,(OFST+9,sp)
 740  0169 a108          	cp	a,#8
 741  016b 2712          	jreq	L65
 742  016d 7b09          	ld	a,(OFST+9,sp)
 743  016f a10c          	cp	a,#12
 744  0171 270c          	jreq	L65
 745  0173 7b09          	ld	a,(OFST+9,sp)
 746  0175 a1ff          	cp	a,#255
 747  0177 2706          	jreq	L65
 748  0179 7b09          	ld	a,(OFST+9,sp)
 749  017b a109          	cp	a,#9
 750  017d 2603          	jrne	L45
 751  017f               L65:
 752  017f 4f            	clr	a
 753  0180 2010          	jra	L06
 754  0182               L45:
 755  0182 ae0061        	ldw	x,#97
 756  0185 89            	pushw	x
 757  0186 ae0000        	ldw	x,#0
 758  0189 89            	pushw	x
 759  018a ae0000        	ldw	x,#L542
 760  018d cd0000        	call	_assert_failed
 762  0190 5b04          	addw	sp,#4
 763  0192               L06:
 764                     ; 98   assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 766  0192 0d0a          	tnz	(OFST+10,sp)
 767  0194 2706          	jreq	L46
 768  0196 7b0a          	ld	a,(OFST+10,sp)
 769  0198 a101          	cp	a,#1
 770  019a 2603          	jrne	L26
 771  019c               L46:
 772  019c 4f            	clr	a
 773  019d 2010          	jra	L66
 774  019f               L26:
 775  019f ae0062        	ldw	x,#98
 776  01a2 89            	pushw	x
 777  01a3 ae0000        	ldw	x,#0
 778  01a6 89            	pushw	x
 779  01a7 ae0000        	ldw	x,#L542
 780  01aa cd0000        	call	_assert_failed
 782  01ad 5b04          	addw	sp,#4
 783  01af               L66:
 784                     ; 103   ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 786  01af 7b08          	ld	a,(OFST+8,sp)
 787  01b1 88            	push	a
 788  01b2 7b03          	ld	a,(OFST+3,sp)
 789  01b4 97            	ld	xl,a
 790  01b5 7b02          	ld	a,(OFST+2,sp)
 791  01b7 95            	ld	xh,a
 792  01b8 cd03ed        	call	_ADC1_ConversionConfig
 794  01bb 84            	pop	a
 795                     ; 105   ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 797  01bc 7b05          	ld	a,(OFST+5,sp)
 798  01be cd02ae        	call	_ADC1_PrescalerConfig
 800                     ; 110   ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 802  01c1 7b07          	ld	a,(OFST+7,sp)
 803  01c3 97            	ld	xl,a
 804  01c4 7b06          	ld	a,(OFST+6,sp)
 805  01c6 95            	ld	xh,a
 806  01c7 cd04a8        	call	_ADC1_ExternalTriggerConfig
 808                     ; 115   ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 810  01ca 7b0a          	ld	a,(OFST+10,sp)
 811  01cc 97            	ld	xl,a
 812  01cd 7b09          	ld	a,(OFST+9,sp)
 813  01cf 95            	ld	xh,a
 814  01d0 cd02f3        	call	_ADC1_SchmittTriggerConfig
 816                     ; 118   ADC1->CR1 |= ADC1_CR1_ADON;
 818  01d3 72105401      	bset	21505,#0
 819                     ; 119 }
 822  01d7 85            	popw	x
 823  01d8 81            	ret
 859                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 859                     ; 127 {
 860                     	switch	.text
 861  01d9               _ADC1_Cmd:
 863  01d9 88            	push	a
 864       00000000      OFST:	set	0
 867                     ; 129   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 869  01da 4d            	tnz	a
 870  01db 2704          	jreq	L47
 871  01dd a101          	cp	a,#1
 872  01df 2603          	jrne	L27
 873  01e1               L47:
 874  01e1 4f            	clr	a
 875  01e2 2010          	jra	L67
 876  01e4               L27:
 877  01e4 ae0081        	ldw	x,#129
 878  01e7 89            	pushw	x
 879  01e8 ae0000        	ldw	x,#0
 880  01eb 89            	pushw	x
 881  01ec ae0000        	ldw	x,#L542
 882  01ef cd0000        	call	_assert_failed
 884  01f2 5b04          	addw	sp,#4
 885  01f4               L67:
 886                     ; 131   if (NewState != DISABLE)
 888  01f4 0d01          	tnz	(OFST+1,sp)
 889  01f6 2706          	jreq	L562
 890                     ; 133     ADC1->CR1 |= ADC1_CR1_ADON;
 892  01f8 72105401      	bset	21505,#0
 894  01fc 2004          	jra	L762
 895  01fe               L562:
 896                     ; 137     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 898  01fe 72115401      	bres	21505,#0
 899  0202               L762:
 900                     ; 139 }
 903  0202 84            	pop	a
 904  0203 81            	ret
 940                     ; 146 void ADC1_ScanModeCmd(FunctionalState NewState)
 940                     ; 147 {
 941                     	switch	.text
 942  0204               _ADC1_ScanModeCmd:
 944  0204 88            	push	a
 945       00000000      OFST:	set	0
 948                     ; 149   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 950  0205 4d            	tnz	a
 951  0206 2704          	jreq	L401
 952  0208 a101          	cp	a,#1
 953  020a 2603          	jrne	L201
 954  020c               L401:
 955  020c 4f            	clr	a
 956  020d 2010          	jra	L601
 957  020f               L201:
 958  020f ae0095        	ldw	x,#149
 959  0212 89            	pushw	x
 960  0213 ae0000        	ldw	x,#0
 961  0216 89            	pushw	x
 962  0217 ae0000        	ldw	x,#L542
 963  021a cd0000        	call	_assert_failed
 965  021d 5b04          	addw	sp,#4
 966  021f               L601:
 967                     ; 151   if (NewState != DISABLE)
 969  021f 0d01          	tnz	(OFST+1,sp)
 970  0221 2706          	jreq	L703
 971                     ; 153     ADC1->CR2 |= ADC1_CR2_SCAN;
 973  0223 72125402      	bset	21506,#1
 975  0227 2004          	jra	L113
 976  0229               L703:
 977                     ; 157     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 979  0229 72135402      	bres	21506,#1
 980  022d               L113:
 981                     ; 159 }
 984  022d 84            	pop	a
 985  022e 81            	ret
1021                     ; 166 void ADC1_DataBufferCmd(FunctionalState NewState)
1021                     ; 167 {
1022                     	switch	.text
1023  022f               _ADC1_DataBufferCmd:
1025  022f 88            	push	a
1026       00000000      OFST:	set	0
1029                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1031  0230 4d            	tnz	a
1032  0231 2704          	jreq	L411
1033  0233 a101          	cp	a,#1
1034  0235 2603          	jrne	L211
1035  0237               L411:
1036  0237 4f            	clr	a
1037  0238 2010          	jra	L611
1038  023a               L211:
1039  023a ae00a9        	ldw	x,#169
1040  023d 89            	pushw	x
1041  023e ae0000        	ldw	x,#0
1042  0241 89            	pushw	x
1043  0242 ae0000        	ldw	x,#L542
1044  0245 cd0000        	call	_assert_failed
1046  0248 5b04          	addw	sp,#4
1047  024a               L611:
1048                     ; 171   if (NewState != DISABLE)
1050  024a 0d01          	tnz	(OFST+1,sp)
1051  024c 2706          	jreq	L133
1052                     ; 173     ADC1->CR3 |= ADC1_CR3_DBUF;
1054  024e 721e5403      	bset	21507,#7
1056  0252 2004          	jra	L333
1057  0254               L133:
1058                     ; 177     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
1060  0254 721f5403      	bres	21507,#7
1061  0258               L333:
1062                     ; 179 }
1065  0258 84            	pop	a
1066  0259 81            	ret
1223                     ; 190 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1223                     ; 191 {
1224                     	switch	.text
1225  025a               _ADC1_ITConfig:
1227  025a 89            	pushw	x
1228       00000000      OFST:	set	0
1231                     ; 193   assert_param(IS_ADC1_IT_OK(ADC1_IT));
1233  025b a30020        	cpw	x,#32
1234  025e 2705          	jreq	L421
1235  0260 a30010        	cpw	x,#16
1236  0263 2603          	jrne	L221
1237  0265               L421:
1238  0265 4f            	clr	a
1239  0266 2010          	jra	L621
1240  0268               L221:
1241  0268 ae00c1        	ldw	x,#193
1242  026b 89            	pushw	x
1243  026c ae0000        	ldw	x,#0
1244  026f 89            	pushw	x
1245  0270 ae0000        	ldw	x,#L542
1246  0273 cd0000        	call	_assert_failed
1248  0276 5b04          	addw	sp,#4
1249  0278               L621:
1250                     ; 194   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1252  0278 0d05          	tnz	(OFST+5,sp)
1253  027a 2706          	jreq	L231
1254  027c 7b05          	ld	a,(OFST+5,sp)
1255  027e a101          	cp	a,#1
1256  0280 2603          	jrne	L031
1257  0282               L231:
1258  0282 4f            	clr	a
1259  0283 2010          	jra	L431
1260  0285               L031:
1261  0285 ae00c2        	ldw	x,#194
1262  0288 89            	pushw	x
1263  0289 ae0000        	ldw	x,#0
1264  028c 89            	pushw	x
1265  028d ae0000        	ldw	x,#L542
1266  0290 cd0000        	call	_assert_failed
1268  0293 5b04          	addw	sp,#4
1269  0295               L431:
1270                     ; 196   if (NewState != DISABLE)
1272  0295 0d05          	tnz	(OFST+5,sp)
1273  0297 270a          	jreq	L124
1274                     ; 199     ADC1->CSR |= (uint8_t)ADC1_IT;
1276  0299 c65400        	ld	a,21504
1277  029c 1a02          	or	a,(OFST+2,sp)
1278  029e c75400        	ld	21504,a
1280  02a1 2009          	jra	L324
1281  02a3               L124:
1282                     ; 204     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1284  02a3 7b02          	ld	a,(OFST+2,sp)
1285  02a5 43            	cpl	a
1286  02a6 c45400        	and	a,21504
1287  02a9 c75400        	ld	21504,a
1288  02ac               L324:
1289                     ; 206 }
1292  02ac 85            	popw	x
1293  02ad 81            	ret
1330                     ; 214 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1330                     ; 215 {
1331                     	switch	.text
1332  02ae               _ADC1_PrescalerConfig:
1334  02ae 88            	push	a
1335       00000000      OFST:	set	0
1338                     ; 217   assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1340  02af 4d            	tnz	a
1341  02b0 271c          	jreq	L241
1342  02b2 a110          	cp	a,#16
1343  02b4 2718          	jreq	L241
1344  02b6 a120          	cp	a,#32
1345  02b8 2714          	jreq	L241
1346  02ba a130          	cp	a,#48
1347  02bc 2710          	jreq	L241
1348  02be a140          	cp	a,#64
1349  02c0 270c          	jreq	L241
1350  02c2 a150          	cp	a,#80
1351  02c4 2708          	jreq	L241
1352  02c6 a160          	cp	a,#96
1353  02c8 2704          	jreq	L241
1354  02ca a170          	cp	a,#112
1355  02cc 2603          	jrne	L041
1356  02ce               L241:
1357  02ce 4f            	clr	a
1358  02cf 2010          	jra	L441
1359  02d1               L041:
1360  02d1 ae00d9        	ldw	x,#217
1361  02d4 89            	pushw	x
1362  02d5 ae0000        	ldw	x,#0
1363  02d8 89            	pushw	x
1364  02d9 ae0000        	ldw	x,#L542
1365  02dc cd0000        	call	_assert_failed
1367  02df 5b04          	addw	sp,#4
1368  02e1               L441:
1369                     ; 220   ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1371  02e1 c65401        	ld	a,21505
1372  02e4 a48f          	and	a,#143
1373  02e6 c75401        	ld	21505,a
1374                     ; 222   ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1376  02e9 c65401        	ld	a,21505
1377  02ec 1a01          	or	a,(OFST+1,sp)
1378  02ee c75401        	ld	21505,a
1379                     ; 223 }
1382  02f1 84            	pop	a
1383  02f2 81            	ret
1431                     ; 233 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1431                     ; 234 {
1432                     	switch	.text
1433  02f3               _ADC1_SchmittTriggerConfig:
1435  02f3 89            	pushw	x
1436       00000000      OFST:	set	0
1439                     ; 236   assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1441  02f4 9e            	ld	a,xh
1442  02f5 4d            	tnz	a
1443  02f6 2737          	jreq	L251
1444  02f8 9e            	ld	a,xh
1445  02f9 a101          	cp	a,#1
1446  02fb 2732          	jreq	L251
1447  02fd 9e            	ld	a,xh
1448  02fe a102          	cp	a,#2
1449  0300 272d          	jreq	L251
1450  0302 9e            	ld	a,xh
1451  0303 a103          	cp	a,#3
1452  0305 2728          	jreq	L251
1453  0307 9e            	ld	a,xh
1454  0308 a104          	cp	a,#4
1455  030a 2723          	jreq	L251
1456  030c 9e            	ld	a,xh
1457  030d a105          	cp	a,#5
1458  030f 271e          	jreq	L251
1459  0311 9e            	ld	a,xh
1460  0312 a106          	cp	a,#6
1461  0314 2719          	jreq	L251
1462  0316 9e            	ld	a,xh
1463  0317 a107          	cp	a,#7
1464  0319 2714          	jreq	L251
1465  031b 9e            	ld	a,xh
1466  031c a108          	cp	a,#8
1467  031e 270f          	jreq	L251
1468  0320 9e            	ld	a,xh
1469  0321 a10c          	cp	a,#12
1470  0323 270a          	jreq	L251
1471  0325 9e            	ld	a,xh
1472  0326 a1ff          	cp	a,#255
1473  0328 2705          	jreq	L251
1474  032a 9e            	ld	a,xh
1475  032b a109          	cp	a,#9
1476  032d 2603          	jrne	L051
1477  032f               L251:
1478  032f 4f            	clr	a
1479  0330 2010          	jra	L451
1480  0332               L051:
1481  0332 ae00ec        	ldw	x,#236
1482  0335 89            	pushw	x
1483  0336 ae0000        	ldw	x,#0
1484  0339 89            	pushw	x
1485  033a ae0000        	ldw	x,#L542
1486  033d cd0000        	call	_assert_failed
1488  0340 5b04          	addw	sp,#4
1489  0342               L451:
1490                     ; 237   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1492  0342 0d02          	tnz	(OFST+2,sp)
1493  0344 2706          	jreq	L061
1494  0346 7b02          	ld	a,(OFST+2,sp)
1495  0348 a101          	cp	a,#1
1496  034a 2603          	jrne	L651
1497  034c               L061:
1498  034c 4f            	clr	a
1499  034d 2010          	jra	L261
1500  034f               L651:
1501  034f ae00ed        	ldw	x,#237
1502  0352 89            	pushw	x
1503  0353 ae0000        	ldw	x,#0
1504  0356 89            	pushw	x
1505  0357 ae0000        	ldw	x,#L542
1506  035a cd0000        	call	_assert_failed
1508  035d 5b04          	addw	sp,#4
1509  035f               L261:
1510                     ; 239   if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1512  035f 7b01          	ld	a,(OFST+1,sp)
1513  0361 a1ff          	cp	a,#255
1514  0363 2620          	jrne	L564
1515                     ; 241     if (NewState != DISABLE)
1517  0365 0d02          	tnz	(OFST+2,sp)
1518  0367 270a          	jreq	L764
1519                     ; 243       ADC1->TDRL &= (uint8_t)0x0;
1521  0369 725f5407      	clr	21511
1522                     ; 244       ADC1->TDRH &= (uint8_t)0x0;
1524  036d 725f5406      	clr	21510
1526  0371 2078          	jra	L374
1527  0373               L764:
1528                     ; 248       ADC1->TDRL |= (uint8_t)0xFF;
1530  0373 c65407        	ld	a,21511
1531  0376 aaff          	or	a,#255
1532  0378 c75407        	ld	21511,a
1533                     ; 249       ADC1->TDRH |= (uint8_t)0xFF;
1535  037b c65406        	ld	a,21510
1536  037e aaff          	or	a,#255
1537  0380 c75406        	ld	21510,a
1538  0383 2066          	jra	L374
1539  0385               L564:
1540                     ; 252   else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1542  0385 7b01          	ld	a,(OFST+1,sp)
1543  0387 a108          	cp	a,#8
1544  0389 242f          	jruge	L574
1545                     ; 254     if (NewState != DISABLE)
1547  038b 0d02          	tnz	(OFST+2,sp)
1548  038d 2716          	jreq	L774
1549                     ; 256       ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1551  038f 7b01          	ld	a,(OFST+1,sp)
1552  0391 5f            	clrw	x
1553  0392 97            	ld	xl,a
1554  0393 a601          	ld	a,#1
1555  0395 5d            	tnzw	x
1556  0396 2704          	jreq	L461
1557  0398               L661:
1558  0398 48            	sll	a
1559  0399 5a            	decw	x
1560  039a 26fc          	jrne	L661
1561  039c               L461:
1562  039c 43            	cpl	a
1563  039d c45407        	and	a,21511
1564  03a0 c75407        	ld	21511,a
1566  03a3 2046          	jra	L374
1567  03a5               L774:
1568                     ; 260       ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1570  03a5 7b01          	ld	a,(OFST+1,sp)
1571  03a7 5f            	clrw	x
1572  03a8 97            	ld	xl,a
1573  03a9 a601          	ld	a,#1
1574  03ab 5d            	tnzw	x
1575  03ac 2704          	jreq	L071
1576  03ae               L271:
1577  03ae 48            	sll	a
1578  03af 5a            	decw	x
1579  03b0 26fc          	jrne	L271
1580  03b2               L071:
1581  03b2 ca5407        	or	a,21511
1582  03b5 c75407        	ld	21511,a
1583  03b8 2031          	jra	L374
1584  03ba               L574:
1585                     ; 265     if (NewState != DISABLE)
1587  03ba 0d02          	tnz	(OFST+2,sp)
1588  03bc 2718          	jreq	L505
1589                     ; 267       ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1591  03be 7b01          	ld	a,(OFST+1,sp)
1592  03c0 a008          	sub	a,#8
1593  03c2 5f            	clrw	x
1594  03c3 97            	ld	xl,a
1595  03c4 a601          	ld	a,#1
1596  03c6 5d            	tnzw	x
1597  03c7 2704          	jreq	L471
1598  03c9               L671:
1599  03c9 48            	sll	a
1600  03ca 5a            	decw	x
1601  03cb 26fc          	jrne	L671
1602  03cd               L471:
1603  03cd 43            	cpl	a
1604  03ce c45406        	and	a,21510
1605  03d1 c75406        	ld	21510,a
1607  03d4 2015          	jra	L374
1608  03d6               L505:
1609                     ; 271       ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1611  03d6 7b01          	ld	a,(OFST+1,sp)
1612  03d8 a008          	sub	a,#8
1613  03da 5f            	clrw	x
1614  03db 97            	ld	xl,a
1615  03dc a601          	ld	a,#1
1616  03de 5d            	tnzw	x
1617  03df 2704          	jreq	L002
1618  03e1               L202:
1619  03e1 48            	sll	a
1620  03e2 5a            	decw	x
1621  03e3 26fc          	jrne	L202
1622  03e5               L002:
1623  03e5 ca5406        	or	a,21510
1624  03e8 c75406        	ld	21510,a
1625  03eb               L374:
1626                     ; 274 }
1629  03eb 85            	popw	x
1630  03ec 81            	ret
1688                     ; 286 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1688                     ; 287 {
1689                     	switch	.text
1690  03ed               _ADC1_ConversionConfig:
1692  03ed 89            	pushw	x
1693       00000000      OFST:	set	0
1696                     ; 289   assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1698  03ee 9e            	ld	a,xh
1699  03ef 4d            	tnz	a
1700  03f0 2705          	jreq	L012
1701  03f2 9e            	ld	a,xh
1702  03f3 a101          	cp	a,#1
1703  03f5 2603          	jrne	L602
1704  03f7               L012:
1705  03f7 4f            	clr	a
1706  03f8 2010          	jra	L212
1707  03fa               L602:
1708  03fa ae0121        	ldw	x,#289
1709  03fd 89            	pushw	x
1710  03fe ae0000        	ldw	x,#0
1711  0401 89            	pushw	x
1712  0402 ae0000        	ldw	x,#L542
1713  0405 cd0000        	call	_assert_failed
1715  0408 5b04          	addw	sp,#4
1716  040a               L212:
1717                     ; 290   assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1719  040a 0d02          	tnz	(OFST+2,sp)
1720  040c 273c          	jreq	L612
1721  040e 7b02          	ld	a,(OFST+2,sp)
1722  0410 a101          	cp	a,#1
1723  0412 2736          	jreq	L612
1724  0414 7b02          	ld	a,(OFST+2,sp)
1725  0416 a102          	cp	a,#2
1726  0418 2730          	jreq	L612
1727  041a 7b02          	ld	a,(OFST+2,sp)
1728  041c a103          	cp	a,#3
1729  041e 272a          	jreq	L612
1730  0420 7b02          	ld	a,(OFST+2,sp)
1731  0422 a104          	cp	a,#4
1732  0424 2724          	jreq	L612
1733  0426 7b02          	ld	a,(OFST+2,sp)
1734  0428 a105          	cp	a,#5
1735  042a 271e          	jreq	L612
1736  042c 7b02          	ld	a,(OFST+2,sp)
1737  042e a106          	cp	a,#6
1738  0430 2718          	jreq	L612
1739  0432 7b02          	ld	a,(OFST+2,sp)
1740  0434 a107          	cp	a,#7
1741  0436 2712          	jreq	L612
1742  0438 7b02          	ld	a,(OFST+2,sp)
1743  043a a108          	cp	a,#8
1744  043c 270c          	jreq	L612
1745  043e 7b02          	ld	a,(OFST+2,sp)
1746  0440 a10c          	cp	a,#12
1747  0442 2706          	jreq	L612
1748  0444 7b02          	ld	a,(OFST+2,sp)
1749  0446 a109          	cp	a,#9
1750  0448 2603          	jrne	L412
1751  044a               L612:
1752  044a 4f            	clr	a
1753  044b 2010          	jra	L022
1754  044d               L412:
1755  044d ae0122        	ldw	x,#290
1756  0450 89            	pushw	x
1757  0451 ae0000        	ldw	x,#0
1758  0454 89            	pushw	x
1759  0455 ae0000        	ldw	x,#L542
1760  0458 cd0000        	call	_assert_failed
1762  045b 5b04          	addw	sp,#4
1763  045d               L022:
1764                     ; 291   assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1766  045d 0d05          	tnz	(OFST+5,sp)
1767  045f 2706          	jreq	L422
1768  0461 7b05          	ld	a,(OFST+5,sp)
1769  0463 a108          	cp	a,#8
1770  0465 2603          	jrne	L222
1771  0467               L422:
1772  0467 4f            	clr	a
1773  0468 2010          	jra	L622
1774  046a               L222:
1775  046a ae0123        	ldw	x,#291
1776  046d 89            	pushw	x
1777  046e ae0000        	ldw	x,#0
1778  0471 89            	pushw	x
1779  0472 ae0000        	ldw	x,#L542
1780  0475 cd0000        	call	_assert_failed
1782  0478 5b04          	addw	sp,#4
1783  047a               L622:
1784                     ; 294   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1786  047a 72175402      	bres	21506,#3
1787                     ; 296   ADC1->CR2 |= (uint8_t)(ADC1_Align);
1789  047e c65402        	ld	a,21506
1790  0481 1a05          	or	a,(OFST+5,sp)
1791  0483 c75402        	ld	21506,a
1792                     ; 298   if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1794  0486 7b01          	ld	a,(OFST+1,sp)
1795  0488 a101          	cp	a,#1
1796  048a 2606          	jrne	L735
1797                     ; 301     ADC1->CR1 |= ADC1_CR1_CONT;
1799  048c 72125401      	bset	21505,#1
1801  0490 2004          	jra	L145
1802  0492               L735:
1803                     ; 306     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1805  0492 72135401      	bres	21505,#1
1806  0496               L145:
1807                     ; 310   ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1809  0496 c65400        	ld	a,21504
1810  0499 a4f0          	and	a,#240
1811  049b c75400        	ld	21504,a
1812                     ; 312   ADC1->CSR |= (uint8_t)(ADC1_Channel);
1814  049e c65400        	ld	a,21504
1815  04a1 1a02          	or	a,(OFST+2,sp)
1816  04a3 c75400        	ld	21504,a
1817                     ; 313 }
1820  04a6 85            	popw	x
1821  04a7 81            	ret
1868                     ; 325 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1868                     ; 326 {
1869                     	switch	.text
1870  04a8               _ADC1_ExternalTriggerConfig:
1872  04a8 89            	pushw	x
1873       00000000      OFST:	set	0
1876                     ; 328   assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1878  04a9 9e            	ld	a,xh
1879  04aa 4d            	tnz	a
1880  04ab 2705          	jreq	L432
1881  04ad 9e            	ld	a,xh
1882  04ae a110          	cp	a,#16
1883  04b0 2603          	jrne	L232
1884  04b2               L432:
1885  04b2 4f            	clr	a
1886  04b3 2010          	jra	L632
1887  04b5               L232:
1888  04b5 ae0148        	ldw	x,#328
1889  04b8 89            	pushw	x
1890  04b9 ae0000        	ldw	x,#0
1891  04bc 89            	pushw	x
1892  04bd ae0000        	ldw	x,#L542
1893  04c0 cd0000        	call	_assert_failed
1895  04c3 5b04          	addw	sp,#4
1896  04c5               L632:
1897                     ; 329   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1899  04c5 0d02          	tnz	(OFST+2,sp)
1900  04c7 2706          	jreq	L242
1901  04c9 7b02          	ld	a,(OFST+2,sp)
1902  04cb a101          	cp	a,#1
1903  04cd 2603          	jrne	L042
1904  04cf               L242:
1905  04cf 4f            	clr	a
1906  04d0 2010          	jra	L442
1907  04d2               L042:
1908  04d2 ae0149        	ldw	x,#329
1909  04d5 89            	pushw	x
1910  04d6 ae0000        	ldw	x,#0
1911  04d9 89            	pushw	x
1912  04da ae0000        	ldw	x,#L542
1913  04dd cd0000        	call	_assert_failed
1915  04e0 5b04          	addw	sp,#4
1916  04e2               L442:
1917                     ; 332   ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1919  04e2 c65402        	ld	a,21506
1920  04e5 a4cf          	and	a,#207
1921  04e7 c75402        	ld	21506,a
1922                     ; 334   if (NewState != DISABLE)
1924  04ea 0d02          	tnz	(OFST+2,sp)
1925  04ec 2706          	jreq	L565
1926                     ; 337     ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1928  04ee 721c5402      	bset	21506,#6
1930  04f2 2004          	jra	L765
1931  04f4               L565:
1932                     ; 342     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1934  04f4 721d5402      	bres	21506,#6
1935  04f8               L765:
1936                     ; 346   ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1938  04f8 c65402        	ld	a,21506
1939  04fb 1a01          	or	a,(OFST+1,sp)
1940  04fd c75402        	ld	21506,a
1941                     ; 347 }
1944  0500 85            	popw	x
1945  0501 81            	ret
1969                     ; 358 void ADC1_StartConversion(void)
1969                     ; 359 {
1970                     	switch	.text
1971  0502               _ADC1_StartConversion:
1975                     ; 360   ADC1->CR1 |= ADC1_CR1_ADON;
1977  0502 72105401      	bset	21505,#0
1978                     ; 361 }
1981  0506 81            	ret
2025                     ; 370 uint16_t ADC1_GetConversionValue(void)
2025                     ; 371 {
2026                     	switch	.text
2027  0507               _ADC1_GetConversionValue:
2029  0507 5205          	subw	sp,#5
2030       00000005      OFST:	set	5
2033                     ; 372   uint16_t temph = 0;
2035                     ; 373   uint8_t templ = 0;
2037                     ; 375   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2039  0509 c65402        	ld	a,21506
2040  050c a508          	bcp	a,#8
2041  050e 2715          	jreq	L326
2042                     ; 378     templ = ADC1->DRL;
2044  0510 c65405        	ld	a,21509
2045  0513 6b03          	ld	(OFST-2,sp),a
2046                     ; 380     temph = ADC1->DRH;
2048  0515 c65404        	ld	a,21508
2049  0518 5f            	clrw	x
2050  0519 97            	ld	xl,a
2051  051a 1f04          	ldw	(OFST-1,sp),x
2052                     ; 382     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2054  051c 1e04          	ldw	x,(OFST-1,sp)
2055  051e 7b03          	ld	a,(OFST-2,sp)
2056  0520 02            	rlwa	x,a
2057  0521 1f04          	ldw	(OFST-1,sp),x
2059  0523 2021          	jra	L526
2060  0525               L326:
2061                     ; 387     temph = ADC1->DRH;
2063  0525 c65404        	ld	a,21508
2064  0528 5f            	clrw	x
2065  0529 97            	ld	xl,a
2066  052a 1f04          	ldw	(OFST-1,sp),x
2067                     ; 389     templ = ADC1->DRL;
2069  052c c65405        	ld	a,21509
2070  052f 6b03          	ld	(OFST-2,sp),a
2071                     ; 391     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
2073  0531 1e04          	ldw	x,(OFST-1,sp)
2074  0533 4f            	clr	a
2075  0534 02            	rlwa	x,a
2076  0535 1f01          	ldw	(OFST-4,sp),x
2077  0537 7b03          	ld	a,(OFST-2,sp)
2078  0539 97            	ld	xl,a
2079  053a a640          	ld	a,#64
2080  053c 42            	mul	x,a
2081  053d 01            	rrwa	x,a
2082  053e 1a02          	or	a,(OFST-3,sp)
2083  0540 01            	rrwa	x,a
2084  0541 1a01          	or	a,(OFST-4,sp)
2085  0543 01            	rrwa	x,a
2086  0544 1f04          	ldw	(OFST-1,sp),x
2087  0546               L526:
2088                     ; 394   return ((uint16_t)temph);
2090  0546 1e04          	ldw	x,(OFST-1,sp)
2093  0548 5b05          	addw	sp,#5
2094  054a 81            	ret
2141                     ; 405 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
2141                     ; 406 {
2142                     	switch	.text
2143  054b               _ADC1_AWDChannelConfig:
2145  054b 89            	pushw	x
2146       00000000      OFST:	set	0
2149                     ; 408   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2151  054c 9f            	ld	a,xl
2152  054d 4d            	tnz	a
2153  054e 2705          	jreq	L652
2154  0550 9f            	ld	a,xl
2155  0551 a101          	cp	a,#1
2156  0553 2603          	jrne	L452
2157  0555               L652:
2158  0555 4f            	clr	a
2159  0556 2010          	jra	L062
2160  0558               L452:
2161  0558 ae0198        	ldw	x,#408
2162  055b 89            	pushw	x
2163  055c ae0000        	ldw	x,#0
2164  055f 89            	pushw	x
2165  0560 ae0000        	ldw	x,#L542
2166  0563 cd0000        	call	_assert_failed
2168  0566 5b04          	addw	sp,#4
2169  0568               L062:
2170                     ; 409   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2172  0568 0d01          	tnz	(OFST+1,sp)
2173  056a 273c          	jreq	L462
2174  056c 7b01          	ld	a,(OFST+1,sp)
2175  056e a101          	cp	a,#1
2176  0570 2736          	jreq	L462
2177  0572 7b01          	ld	a,(OFST+1,sp)
2178  0574 a102          	cp	a,#2
2179  0576 2730          	jreq	L462
2180  0578 7b01          	ld	a,(OFST+1,sp)
2181  057a a103          	cp	a,#3
2182  057c 272a          	jreq	L462
2183  057e 7b01          	ld	a,(OFST+1,sp)
2184  0580 a104          	cp	a,#4
2185  0582 2724          	jreq	L462
2186  0584 7b01          	ld	a,(OFST+1,sp)
2187  0586 a105          	cp	a,#5
2188  0588 271e          	jreq	L462
2189  058a 7b01          	ld	a,(OFST+1,sp)
2190  058c a106          	cp	a,#6
2191  058e 2718          	jreq	L462
2192  0590 7b01          	ld	a,(OFST+1,sp)
2193  0592 a107          	cp	a,#7
2194  0594 2712          	jreq	L462
2195  0596 7b01          	ld	a,(OFST+1,sp)
2196  0598 a108          	cp	a,#8
2197  059a 270c          	jreq	L462
2198  059c 7b01          	ld	a,(OFST+1,sp)
2199  059e a10c          	cp	a,#12
2200  05a0 2706          	jreq	L462
2201  05a2 7b01          	ld	a,(OFST+1,sp)
2202  05a4 a109          	cp	a,#9
2203  05a6 2603          	jrne	L262
2204  05a8               L462:
2205  05a8 4f            	clr	a
2206  05a9 2010          	jra	L662
2207  05ab               L262:
2208  05ab ae0199        	ldw	x,#409
2209  05ae 89            	pushw	x
2210  05af ae0000        	ldw	x,#0
2211  05b2 89            	pushw	x
2212  05b3 ae0000        	ldw	x,#L542
2213  05b6 cd0000        	call	_assert_failed
2215  05b9 5b04          	addw	sp,#4
2216  05bb               L662:
2217                     ; 411   if (Channel < (uint8_t)8)
2219  05bb 7b01          	ld	a,(OFST+1,sp)
2220  05bd a108          	cp	a,#8
2221  05bf 242f          	jruge	L156
2222                     ; 413     if (NewState != DISABLE)
2224  05c1 0d02          	tnz	(OFST+2,sp)
2225  05c3 2715          	jreq	L356
2226                     ; 415       ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
2228  05c5 7b01          	ld	a,(OFST+1,sp)
2229  05c7 5f            	clrw	x
2230  05c8 97            	ld	xl,a
2231  05c9 a601          	ld	a,#1
2232  05cb 5d            	tnzw	x
2233  05cc 2704          	jreq	L072
2234  05ce               L272:
2235  05ce 48            	sll	a
2236  05cf 5a            	decw	x
2237  05d0 26fc          	jrne	L272
2238  05d2               L072:
2239  05d2 ca540f        	or	a,21519
2240  05d5 c7540f        	ld	21519,a
2242  05d8 2047          	jra	L756
2243  05da               L356:
2244                     ; 419       ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2246  05da 7b01          	ld	a,(OFST+1,sp)
2247  05dc 5f            	clrw	x
2248  05dd 97            	ld	xl,a
2249  05de a601          	ld	a,#1
2250  05e0 5d            	tnzw	x
2251  05e1 2704          	jreq	L472
2252  05e3               L672:
2253  05e3 48            	sll	a
2254  05e4 5a            	decw	x
2255  05e5 26fc          	jrne	L672
2256  05e7               L472:
2257  05e7 43            	cpl	a
2258  05e8 c4540f        	and	a,21519
2259  05eb c7540f        	ld	21519,a
2260  05ee 2031          	jra	L756
2261  05f0               L156:
2262                     ; 424     if (NewState != DISABLE)
2264  05f0 0d02          	tnz	(OFST+2,sp)
2265  05f2 2717          	jreq	L166
2266                     ; 426       ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2268  05f4 7b01          	ld	a,(OFST+1,sp)
2269  05f6 a008          	sub	a,#8
2270  05f8 5f            	clrw	x
2271  05f9 97            	ld	xl,a
2272  05fa a601          	ld	a,#1
2273  05fc 5d            	tnzw	x
2274  05fd 2704          	jreq	L003
2275  05ff               L203:
2276  05ff 48            	sll	a
2277  0600 5a            	decw	x
2278  0601 26fc          	jrne	L203
2279  0603               L003:
2280  0603 ca540e        	or	a,21518
2281  0606 c7540e        	ld	21518,a
2283  0609 2016          	jra	L756
2284  060b               L166:
2285                     ; 430       ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2287  060b 7b01          	ld	a,(OFST+1,sp)
2288  060d a008          	sub	a,#8
2289  060f 5f            	clrw	x
2290  0610 97            	ld	xl,a
2291  0611 a601          	ld	a,#1
2292  0613 5d            	tnzw	x
2293  0614 2704          	jreq	L403
2294  0616               L603:
2295  0616 48            	sll	a
2296  0617 5a            	decw	x
2297  0618 26fc          	jrne	L603
2298  061a               L403:
2299  061a 43            	cpl	a
2300  061b c4540e        	and	a,21518
2301  061e c7540e        	ld	21518,a
2302  0621               L756:
2303                     ; 433 }
2306  0621 85            	popw	x
2307  0622 81            	ret
2342                     ; 441 void ADC1_SetHighThreshold(uint16_t Threshold)
2342                     ; 442 {
2343                     	switch	.text
2344  0623               _ADC1_SetHighThreshold:
2346  0623 89            	pushw	x
2347       00000000      OFST:	set	0
2350                     ; 443   ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2352  0624 54            	srlw	x
2353  0625 54            	srlw	x
2354  0626 9f            	ld	a,xl
2355  0627 c75408        	ld	21512,a
2356                     ; 444   ADC1->HTRL = (uint8_t)Threshold;
2358  062a 7b02          	ld	a,(OFST+2,sp)
2359  062c c75409        	ld	21513,a
2360                     ; 445 }
2363  062f 85            	popw	x
2364  0630 81            	ret
2399                     ; 453 void ADC1_SetLowThreshold(uint16_t Threshold)
2399                     ; 454 {
2400                     	switch	.text
2401  0631               _ADC1_SetLowThreshold:
2405                     ; 455   ADC1->LTRL = (uint8_t)Threshold;
2407  0631 9f            	ld	a,xl
2408  0632 c7540b        	ld	21515,a
2409                     ; 456   ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2411  0635 54            	srlw	x
2412  0636 54            	srlw	x
2413  0637 9f            	ld	a,xl
2414  0638 c7540a        	ld	21514,a
2415                     ; 457 }
2418  063b 81            	ret
2472                     ; 466 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2472                     ; 467 {
2473                     	switch	.text
2474  063c               _ADC1_GetBufferValue:
2476  063c 88            	push	a
2477  063d 5205          	subw	sp,#5
2478       00000005      OFST:	set	5
2481                     ; 468   uint16_t temph = 0;
2483                     ; 469   uint8_t templ = 0;
2485                     ; 472   assert_param(IS_ADC1_BUFFER_OK(Buffer));
2487  063f a10a          	cp	a,#10
2488  0641 2403          	jruge	L613
2489  0643 4f            	clr	a
2490  0644 2010          	jra	L023
2491  0646               L613:
2492  0646 ae01d8        	ldw	x,#472
2493  0649 89            	pushw	x
2494  064a ae0000        	ldw	x,#0
2495  064d 89            	pushw	x
2496  064e ae0000        	ldw	x,#L542
2497  0651 cd0000        	call	_assert_failed
2499  0654 5b04          	addw	sp,#4
2500  0656               L023:
2501                     ; 474   if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2503  0656 c65402        	ld	a,21506
2504  0659 a508          	bcp	a,#8
2505  065b 271f          	jreq	L747
2506                     ; 477     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2508  065d 7b06          	ld	a,(OFST+1,sp)
2509  065f 48            	sll	a
2510  0660 5f            	clrw	x
2511  0661 97            	ld	xl,a
2512  0662 d653e1        	ld	a,(21473,x)
2513  0665 6b03          	ld	(OFST-2,sp),a
2514                     ; 479     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2516  0667 7b06          	ld	a,(OFST+1,sp)
2517  0669 48            	sll	a
2518  066a 5f            	clrw	x
2519  066b 97            	ld	xl,a
2520  066c d653e0        	ld	a,(21472,x)
2521  066f 5f            	clrw	x
2522  0670 97            	ld	xl,a
2523  0671 1f04          	ldw	(OFST-1,sp),x
2524                     ; 481     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2526  0673 1e04          	ldw	x,(OFST-1,sp)
2527  0675 7b03          	ld	a,(OFST-2,sp)
2528  0677 02            	rlwa	x,a
2529  0678 1f04          	ldw	(OFST-1,sp),x
2531  067a 202b          	jra	L157
2532  067c               L747:
2533                     ; 486     temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2535  067c 7b06          	ld	a,(OFST+1,sp)
2536  067e 48            	sll	a
2537  067f 5f            	clrw	x
2538  0680 97            	ld	xl,a
2539  0681 d653e0        	ld	a,(21472,x)
2540  0684 5f            	clrw	x
2541  0685 97            	ld	xl,a
2542  0686 1f04          	ldw	(OFST-1,sp),x
2543                     ; 488     templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2545  0688 7b06          	ld	a,(OFST+1,sp)
2546  068a 48            	sll	a
2547  068b 5f            	clrw	x
2548  068c 97            	ld	xl,a
2549  068d d653e1        	ld	a,(21473,x)
2550  0690 6b03          	ld	(OFST-2,sp),a
2551                     ; 490     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2553  0692 1e04          	ldw	x,(OFST-1,sp)
2554  0694 4f            	clr	a
2555  0695 02            	rlwa	x,a
2556  0696 1f01          	ldw	(OFST-4,sp),x
2557  0698 7b03          	ld	a,(OFST-2,sp)
2558  069a 97            	ld	xl,a
2559  069b a640          	ld	a,#64
2560  069d 42            	mul	x,a
2561  069e 01            	rrwa	x,a
2562  069f 1a02          	or	a,(OFST-3,sp)
2563  06a1 01            	rrwa	x,a
2564  06a2 1a01          	or	a,(OFST-4,sp)
2565  06a4 01            	rrwa	x,a
2566  06a5 1f04          	ldw	(OFST-1,sp),x
2567  06a7               L157:
2568                     ; 493   return ((uint16_t)temph);
2570  06a7 1e04          	ldw	x,(OFST-1,sp)
2573  06a9 5b06          	addw	sp,#6
2574  06ab 81            	ret
2641                     ; 502 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2641                     ; 503 {
2642                     	switch	.text
2643  06ac               _ADC1_GetAWDChannelStatus:
2645  06ac 88            	push	a
2646  06ad 88            	push	a
2647       00000001      OFST:	set	1
2650                     ; 504   uint8_t status = 0;
2652                     ; 507   assert_param(IS_ADC1_CHANNEL_OK(Channel));
2654  06ae 4d            	tnz	a
2655  06af 2728          	jreq	L623
2656  06b1 a101          	cp	a,#1
2657  06b3 2724          	jreq	L623
2658  06b5 a102          	cp	a,#2
2659  06b7 2720          	jreq	L623
2660  06b9 a103          	cp	a,#3
2661  06bb 271c          	jreq	L623
2662  06bd a104          	cp	a,#4
2663  06bf 2718          	jreq	L623
2664  06c1 a105          	cp	a,#5
2665  06c3 2714          	jreq	L623
2666  06c5 a106          	cp	a,#6
2667  06c7 2710          	jreq	L623
2668  06c9 a107          	cp	a,#7
2669  06cb 270c          	jreq	L623
2670  06cd a108          	cp	a,#8
2671  06cf 2708          	jreq	L623
2672  06d1 a10c          	cp	a,#12
2673  06d3 2704          	jreq	L623
2674  06d5 a109          	cp	a,#9
2675  06d7 2603          	jrne	L423
2676  06d9               L623:
2677  06d9 4f            	clr	a
2678  06da 2010          	jra	L033
2679  06dc               L423:
2680  06dc ae01fb        	ldw	x,#507
2681  06df 89            	pushw	x
2682  06e0 ae0000        	ldw	x,#0
2683  06e3 89            	pushw	x
2684  06e4 ae0000        	ldw	x,#L542
2685  06e7 cd0000        	call	_assert_failed
2687  06ea 5b04          	addw	sp,#4
2688  06ec               L033:
2689                     ; 509   if (Channel < (uint8_t)8)
2691  06ec 7b02          	ld	a,(OFST+1,sp)
2692  06ee a108          	cp	a,#8
2693  06f0 2414          	jruge	L5001
2694                     ; 511     status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2696  06f2 7b02          	ld	a,(OFST+1,sp)
2697  06f4 5f            	clrw	x
2698  06f5 97            	ld	xl,a
2699  06f6 a601          	ld	a,#1
2700  06f8 5d            	tnzw	x
2701  06f9 2704          	jreq	L233
2702  06fb               L433:
2703  06fb 48            	sll	a
2704  06fc 5a            	decw	x
2705  06fd 26fc          	jrne	L433
2706  06ff               L233:
2707  06ff c4540d        	and	a,21517
2708  0702 6b01          	ld	(OFST+0,sp),a
2710  0704 2014          	jra	L7001
2711  0706               L5001:
2712                     ; 515     status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2714  0706 7b02          	ld	a,(OFST+1,sp)
2715  0708 a008          	sub	a,#8
2716  070a 5f            	clrw	x
2717  070b 97            	ld	xl,a
2718  070c a601          	ld	a,#1
2719  070e 5d            	tnzw	x
2720  070f 2704          	jreq	L633
2721  0711               L043:
2722  0711 48            	sll	a
2723  0712 5a            	decw	x
2724  0713 26fc          	jrne	L043
2725  0715               L633:
2726  0715 c4540c        	and	a,21516
2727  0718 6b01          	ld	(OFST+0,sp),a
2728  071a               L7001:
2729                     ; 518   return ((FlagStatus)status);
2731  071a 7b01          	ld	a,(OFST+0,sp)
2734  071c 85            	popw	x
2735  071d 81            	ret
2894                     ; 527 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2894                     ; 528 {
2895                     	switch	.text
2896  071e               _ADC1_GetFlagStatus:
2898  071e 88            	push	a
2899  071f 88            	push	a
2900       00000001      OFST:	set	1
2903                     ; 529   uint8_t flagstatus = 0;
2905                     ; 530   uint8_t temp = 0;
2907                     ; 533   assert_param(IS_ADC1_FLAG_OK(Flag));
2909  0720 a180          	cp	a,#128
2910  0722 2730          	jreq	L643
2911  0724 a141          	cp	a,#65
2912  0726 272c          	jreq	L643
2913  0728 a140          	cp	a,#64
2914  072a 2728          	jreq	L643
2915  072c a110          	cp	a,#16
2916  072e 2724          	jreq	L643
2917  0730 a111          	cp	a,#17
2918  0732 2720          	jreq	L643
2919  0734 a112          	cp	a,#18
2920  0736 271c          	jreq	L643
2921  0738 a113          	cp	a,#19
2922  073a 2718          	jreq	L643
2923  073c a114          	cp	a,#20
2924  073e 2714          	jreq	L643
2925  0740 a115          	cp	a,#21
2926  0742 2710          	jreq	L643
2927  0744 a116          	cp	a,#22
2928  0746 270c          	jreq	L643
2929  0748 a117          	cp	a,#23
2930  074a 2708          	jreq	L643
2931  074c a118          	cp	a,#24
2932  074e 2704          	jreq	L643
2933  0750 a119          	cp	a,#25
2934  0752 2603          	jrne	L443
2935  0754               L643:
2936  0754 4f            	clr	a
2937  0755 2010          	jra	L053
2938  0757               L443:
2939  0757 ae0215        	ldw	x,#533
2940  075a 89            	pushw	x
2941  075b ae0000        	ldw	x,#0
2942  075e 89            	pushw	x
2943  075f ae0000        	ldw	x,#L542
2944  0762 cd0000        	call	_assert_failed
2946  0765 5b04          	addw	sp,#4
2947  0767               L053:
2948                     ; 535   if ((Flag & 0x0F) == 0x01)
2950  0767 7b02          	ld	a,(OFST+1,sp)
2951  0769 a40f          	and	a,#15
2952  076b a101          	cp	a,#1
2953  076d 2609          	jrne	L7701
2954                     ; 538     flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2956  076f c65403        	ld	a,21507
2957  0772 a440          	and	a,#64
2958  0774 6b01          	ld	(OFST+0,sp),a
2960  0776 2045          	jra	L1011
2961  0778               L7701:
2962                     ; 540   else if ((Flag & 0xF0) == 0x10)
2964  0778 7b02          	ld	a,(OFST+1,sp)
2965  077a a4f0          	and	a,#240
2966  077c a110          	cp	a,#16
2967  077e 2636          	jrne	L3011
2968                     ; 543     temp = (uint8_t)(Flag & (uint8_t)0x0F);
2970  0780 7b02          	ld	a,(OFST+1,sp)
2971  0782 a40f          	and	a,#15
2972  0784 6b01          	ld	(OFST+0,sp),a
2973                     ; 544     if (temp < 8)
2975  0786 7b01          	ld	a,(OFST+0,sp)
2976  0788 a108          	cp	a,#8
2977  078a 2414          	jruge	L5011
2978                     ; 546       flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2980  078c 7b01          	ld	a,(OFST+0,sp)
2981  078e 5f            	clrw	x
2982  078f 97            	ld	xl,a
2983  0790 a601          	ld	a,#1
2984  0792 5d            	tnzw	x
2985  0793 2704          	jreq	L253
2986  0795               L453:
2987  0795 48            	sll	a
2988  0796 5a            	decw	x
2989  0797 26fc          	jrne	L453
2990  0799               L253:
2991  0799 c4540d        	and	a,21517
2992  079c 6b01          	ld	(OFST+0,sp),a
2994  079e 201d          	jra	L1011
2995  07a0               L5011:
2996                     ; 550       flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2998  07a0 7b01          	ld	a,(OFST+0,sp)
2999  07a2 a008          	sub	a,#8
3000  07a4 5f            	clrw	x
3001  07a5 97            	ld	xl,a
3002  07a6 a601          	ld	a,#1
3003  07a8 5d            	tnzw	x
3004  07a9 2704          	jreq	L653
3005  07ab               L063:
3006  07ab 48            	sll	a
3007  07ac 5a            	decw	x
3008  07ad 26fc          	jrne	L063
3009  07af               L653:
3010  07af c4540c        	and	a,21516
3011  07b2 6b01          	ld	(OFST+0,sp),a
3012  07b4 2007          	jra	L1011
3013  07b6               L3011:
3014                     ; 555     flagstatus = (uint8_t)(ADC1->CSR & Flag);
3016  07b6 c65400        	ld	a,21504
3017  07b9 1402          	and	a,(OFST+1,sp)
3018  07bb 6b01          	ld	(OFST+0,sp),a
3019  07bd               L1011:
3020                     ; 557   return ((FlagStatus)flagstatus);
3022  07bd 7b01          	ld	a,(OFST+0,sp)
3025  07bf 85            	popw	x
3026  07c0 81            	ret
3071                     ; 567 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
3071                     ; 568 {
3072                     	switch	.text
3073  07c1               _ADC1_ClearFlag:
3075  07c1 88            	push	a
3076  07c2 88            	push	a
3077       00000001      OFST:	set	1
3080                     ; 569   uint8_t temp = 0;
3082                     ; 572   assert_param(IS_ADC1_FLAG_OK(Flag));
3084  07c3 a180          	cp	a,#128
3085  07c5 2730          	jreq	L663
3086  07c7 a141          	cp	a,#65
3087  07c9 272c          	jreq	L663
3088  07cb a140          	cp	a,#64
3089  07cd 2728          	jreq	L663
3090  07cf a110          	cp	a,#16
3091  07d1 2724          	jreq	L663
3092  07d3 a111          	cp	a,#17
3093  07d5 2720          	jreq	L663
3094  07d7 a112          	cp	a,#18
3095  07d9 271c          	jreq	L663
3096  07db a113          	cp	a,#19
3097  07dd 2718          	jreq	L663
3098  07df a114          	cp	a,#20
3099  07e1 2714          	jreq	L663
3100  07e3 a115          	cp	a,#21
3101  07e5 2710          	jreq	L663
3102  07e7 a116          	cp	a,#22
3103  07e9 270c          	jreq	L663
3104  07eb a117          	cp	a,#23
3105  07ed 2708          	jreq	L663
3106  07ef a118          	cp	a,#24
3107  07f1 2704          	jreq	L663
3108  07f3 a119          	cp	a,#25
3109  07f5 2603          	jrne	L463
3110  07f7               L663:
3111  07f7 4f            	clr	a
3112  07f8 2010          	jra	L073
3113  07fa               L463:
3114  07fa ae023c        	ldw	x,#572
3115  07fd 89            	pushw	x
3116  07fe ae0000        	ldw	x,#0
3117  0801 89            	pushw	x
3118  0802 ae0000        	ldw	x,#L542
3119  0805 cd0000        	call	_assert_failed
3121  0808 5b04          	addw	sp,#4
3122  080a               L073:
3123                     ; 574   if ((Flag & 0x0F) == 0x01)
3125  080a 7b02          	ld	a,(OFST+1,sp)
3126  080c a40f          	and	a,#15
3127  080e a101          	cp	a,#1
3128  0810 2606          	jrne	L5311
3129                     ; 577     ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
3131  0812 721d5403      	bres	21507,#6
3133  0816 204b          	jra	L7311
3134  0818               L5311:
3135                     ; 579   else if ((Flag & 0xF0) == 0x10)
3137  0818 7b02          	ld	a,(OFST+1,sp)
3138  081a a4f0          	and	a,#240
3139  081c a110          	cp	a,#16
3140  081e 263a          	jrne	L1411
3141                     ; 582     temp = (uint8_t)(Flag & (uint8_t)0x0F);
3143  0820 7b02          	ld	a,(OFST+1,sp)
3144  0822 a40f          	and	a,#15
3145  0824 6b01          	ld	(OFST+0,sp),a
3146                     ; 583     if (temp < 8)
3148  0826 7b01          	ld	a,(OFST+0,sp)
3149  0828 a108          	cp	a,#8
3150  082a 2416          	jruge	L3411
3151                     ; 585       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3153  082c 7b01          	ld	a,(OFST+0,sp)
3154  082e 5f            	clrw	x
3155  082f 97            	ld	xl,a
3156  0830 a601          	ld	a,#1
3157  0832 5d            	tnzw	x
3158  0833 2704          	jreq	L273
3159  0835               L473:
3160  0835 48            	sll	a
3161  0836 5a            	decw	x
3162  0837 26fc          	jrne	L473
3163  0839               L273:
3164  0839 43            	cpl	a
3165  083a c4540d        	and	a,21517
3166  083d c7540d        	ld	21517,a
3168  0840 2021          	jra	L7311
3169  0842               L3411:
3170                     ; 589       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3172  0842 7b01          	ld	a,(OFST+0,sp)
3173  0844 a008          	sub	a,#8
3174  0846 5f            	clrw	x
3175  0847 97            	ld	xl,a
3176  0848 a601          	ld	a,#1
3177  084a 5d            	tnzw	x
3178  084b 2704          	jreq	L673
3179  084d               L004:
3180  084d 48            	sll	a
3181  084e 5a            	decw	x
3182  084f 26fc          	jrne	L004
3183  0851               L673:
3184  0851 43            	cpl	a
3185  0852 c4540c        	and	a,21516
3186  0855 c7540c        	ld	21516,a
3187  0858 2009          	jra	L7311
3188  085a               L1411:
3189                     ; 594     ADC1->CSR &= (uint8_t) (~Flag);
3191  085a 7b02          	ld	a,(OFST+1,sp)
3192  085c 43            	cpl	a
3193  085d c45400        	and	a,21504
3194  0860 c75400        	ld	21504,a
3195  0863               L7311:
3196                     ; 596 }
3199  0863 85            	popw	x
3200  0864 81            	ret
3256                     ; 616 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
3256                     ; 617 {
3257                     	switch	.text
3258  0865               _ADC1_GetITStatus:
3260  0865 89            	pushw	x
3261  0866 88            	push	a
3262       00000001      OFST:	set	1
3265                     ; 618   ITStatus itstatus = RESET;
3267                     ; 619   uint8_t temp = 0;
3269                     ; 622   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3271  0867 a30080        	cpw	x,#128
3272  086a 273c          	jreq	L604
3273  086c a30140        	cpw	x,#320
3274  086f 2737          	jreq	L604
3275  0871 a30110        	cpw	x,#272
3276  0874 2732          	jreq	L604
3277  0876 a30111        	cpw	x,#273
3278  0879 272d          	jreq	L604
3279  087b a30112        	cpw	x,#274
3280  087e 2728          	jreq	L604
3281  0880 a30113        	cpw	x,#275
3282  0883 2723          	jreq	L604
3283  0885 a30114        	cpw	x,#276
3284  0888 271e          	jreq	L604
3285  088a a30115        	cpw	x,#277
3286  088d 2719          	jreq	L604
3287  088f a30116        	cpw	x,#278
3288  0892 2714          	jreq	L604
3289  0894 a30117        	cpw	x,#279
3290  0897 270f          	jreq	L604
3291  0899 a30118        	cpw	x,#280
3292  089c 270a          	jreq	L604
3293  089e a3011c        	cpw	x,#284
3294  08a1 2705          	jreq	L604
3295  08a3 a30119        	cpw	x,#281
3296  08a6 2603          	jrne	L404
3297  08a8               L604:
3298  08a8 4f            	clr	a
3299  08a9 2010          	jra	L014
3300  08ab               L404:
3301  08ab ae026e        	ldw	x,#622
3302  08ae 89            	pushw	x
3303  08af ae0000        	ldw	x,#0
3304  08b2 89            	pushw	x
3305  08b3 ae0000        	ldw	x,#L542
3306  08b6 cd0000        	call	_assert_failed
3308  08b9 5b04          	addw	sp,#4
3309  08bb               L014:
3310                     ; 624   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3312  08bb 7b02          	ld	a,(OFST+1,sp)
3313  08bd 97            	ld	xl,a
3314  08be 7b03          	ld	a,(OFST+2,sp)
3315  08c0 a4f0          	and	a,#240
3316  08c2 5f            	clrw	x
3317  08c3 02            	rlwa	x,a
3318  08c4 a30010        	cpw	x,#16
3319  08c7 2636          	jrne	L7711
3320                     ; 627     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3322  08c9 7b03          	ld	a,(OFST+2,sp)
3323  08cb a40f          	and	a,#15
3324  08cd 6b01          	ld	(OFST+0,sp),a
3325                     ; 628     if (temp < 8)
3327  08cf 7b01          	ld	a,(OFST+0,sp)
3328  08d1 a108          	cp	a,#8
3329  08d3 2414          	jruge	L1021
3330                     ; 630       itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3332  08d5 7b01          	ld	a,(OFST+0,sp)
3333  08d7 5f            	clrw	x
3334  08d8 97            	ld	xl,a
3335  08d9 a601          	ld	a,#1
3336  08db 5d            	tnzw	x
3337  08dc 2704          	jreq	L214
3338  08de               L414:
3339  08de 48            	sll	a
3340  08df 5a            	decw	x
3341  08e0 26fc          	jrne	L414
3342  08e2               L214:
3343  08e2 c4540d        	and	a,21517
3344  08e5 6b01          	ld	(OFST+0,sp),a
3346  08e7 201d          	jra	L5021
3347  08e9               L1021:
3348                     ; 634       itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3350  08e9 7b01          	ld	a,(OFST+0,sp)
3351  08eb a008          	sub	a,#8
3352  08ed 5f            	clrw	x
3353  08ee 97            	ld	xl,a
3354  08ef a601          	ld	a,#1
3355  08f1 5d            	tnzw	x
3356  08f2 2704          	jreq	L614
3357  08f4               L024:
3358  08f4 48            	sll	a
3359  08f5 5a            	decw	x
3360  08f6 26fc          	jrne	L024
3361  08f8               L614:
3362  08f8 c4540c        	and	a,21516
3363  08fb 6b01          	ld	(OFST+0,sp),a
3364  08fd 2007          	jra	L5021
3365  08ff               L7711:
3366                     ; 639     itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3368  08ff c65400        	ld	a,21504
3369  0902 1403          	and	a,(OFST+2,sp)
3370  0904 6b01          	ld	(OFST+0,sp),a
3371  0906               L5021:
3372                     ; 641   return ((ITStatus)itstatus);
3374  0906 7b01          	ld	a,(OFST+0,sp)
3377  0908 5b03          	addw	sp,#3
3378  090a 81            	ret
3424                     ; 662 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3424                     ; 663 {
3425                     	switch	.text
3426  090b               _ADC1_ClearITPendingBit:
3428  090b 89            	pushw	x
3429  090c 88            	push	a
3430       00000001      OFST:	set	1
3433                     ; 664   uint8_t temp = 0;
3435                     ; 667   assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3437  090d a30080        	cpw	x,#128
3438  0910 273c          	jreq	L624
3439  0912 a30140        	cpw	x,#320
3440  0915 2737          	jreq	L624
3441  0917 a30110        	cpw	x,#272
3442  091a 2732          	jreq	L624
3443  091c a30111        	cpw	x,#273
3444  091f 272d          	jreq	L624
3445  0921 a30112        	cpw	x,#274
3446  0924 2728          	jreq	L624
3447  0926 a30113        	cpw	x,#275
3448  0929 2723          	jreq	L624
3449  092b a30114        	cpw	x,#276
3450  092e 271e          	jreq	L624
3451  0930 a30115        	cpw	x,#277
3452  0933 2719          	jreq	L624
3453  0935 a30116        	cpw	x,#278
3454  0938 2714          	jreq	L624
3455  093a a30117        	cpw	x,#279
3456  093d 270f          	jreq	L624
3457  093f a30118        	cpw	x,#280
3458  0942 270a          	jreq	L624
3459  0944 a3011c        	cpw	x,#284
3460  0947 2705          	jreq	L624
3461  0949 a30119        	cpw	x,#281
3462  094c 2603          	jrne	L424
3463  094e               L624:
3464  094e 4f            	clr	a
3465  094f 2010          	jra	L034
3466  0951               L424:
3467  0951 ae029b        	ldw	x,#667
3468  0954 89            	pushw	x
3469  0955 ae0000        	ldw	x,#0
3470  0958 89            	pushw	x
3471  0959 ae0000        	ldw	x,#L542
3472  095c cd0000        	call	_assert_failed
3474  095f 5b04          	addw	sp,#4
3475  0961               L034:
3476                     ; 669   if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3478  0961 7b02          	ld	a,(OFST+1,sp)
3479  0963 97            	ld	xl,a
3480  0964 7b03          	ld	a,(OFST+2,sp)
3481  0966 a4f0          	and	a,#240
3482  0968 5f            	clrw	x
3483  0969 02            	rlwa	x,a
3484  096a a30010        	cpw	x,#16
3485  096d 263a          	jrne	L1321
3486                     ; 672     temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3488  096f 7b03          	ld	a,(OFST+2,sp)
3489  0971 a40f          	and	a,#15
3490  0973 6b01          	ld	(OFST+0,sp),a
3491                     ; 673     if (temp < 8)
3493  0975 7b01          	ld	a,(OFST+0,sp)
3494  0977 a108          	cp	a,#8
3495  0979 2416          	jruge	L3321
3496                     ; 675       ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3498  097b 7b01          	ld	a,(OFST+0,sp)
3499  097d 5f            	clrw	x
3500  097e 97            	ld	xl,a
3501  097f a601          	ld	a,#1
3502  0981 5d            	tnzw	x
3503  0982 2704          	jreq	L234
3504  0984               L434:
3505  0984 48            	sll	a
3506  0985 5a            	decw	x
3507  0986 26fc          	jrne	L434
3508  0988               L234:
3509  0988 43            	cpl	a
3510  0989 c4540d        	and	a,21517
3511  098c c7540d        	ld	21517,a
3513  098f 2021          	jra	L7321
3514  0991               L3321:
3515                     ; 679       ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3517  0991 7b01          	ld	a,(OFST+0,sp)
3518  0993 a008          	sub	a,#8
3519  0995 5f            	clrw	x
3520  0996 97            	ld	xl,a
3521  0997 a601          	ld	a,#1
3522  0999 5d            	tnzw	x
3523  099a 2704          	jreq	L634
3524  099c               L044:
3525  099c 48            	sll	a
3526  099d 5a            	decw	x
3527  099e 26fc          	jrne	L044
3528  09a0               L634:
3529  09a0 43            	cpl	a
3530  09a1 c4540c        	and	a,21516
3531  09a4 c7540c        	ld	21516,a
3532  09a7 2009          	jra	L7321
3533  09a9               L1321:
3534                     ; 684     ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3536  09a9 7b03          	ld	a,(OFST+2,sp)
3537  09ab 43            	cpl	a
3538  09ac c45400        	and	a,21504
3539  09af c75400        	ld	21504,a
3540  09b2               L7321:
3541                     ; 686 }
3544  09b2 5b03          	addw	sp,#3
3545  09b4 81            	ret
3558                     	xdef	_ADC1_ClearITPendingBit
3559                     	xdef	_ADC1_GetITStatus
3560                     	xdef	_ADC1_ClearFlag
3561                     	xdef	_ADC1_GetFlagStatus
3562                     	xdef	_ADC1_GetAWDChannelStatus
3563                     	xdef	_ADC1_GetBufferValue
3564                     	xdef	_ADC1_SetLowThreshold
3565                     	xdef	_ADC1_SetHighThreshold
3566                     	xdef	_ADC1_GetConversionValue
3567                     	xdef	_ADC1_StartConversion
3568                     	xdef	_ADC1_AWDChannelConfig
3569                     	xdef	_ADC1_ExternalTriggerConfig
3570                     	xdef	_ADC1_ConversionConfig
3571                     	xdef	_ADC1_SchmittTriggerConfig
3572                     	xdef	_ADC1_PrescalerConfig
3573                     	xdef	_ADC1_ITConfig
3574                     	xdef	_ADC1_DataBufferCmd
3575                     	xdef	_ADC1_ScanModeCmd
3576                     	xdef	_ADC1_Cmd
3577                     	xdef	_ADC1_Init
3578                     	xdef	_ADC1_DeInit
3579                     	xref	_assert_failed
3580                     .const:	section	.text
3581  0000               L542:
3582  0000 6c6962726172  	dc.b	"library\stm8s_adc1"
3583  0012 2e6300        	dc.b	".c",0
3603                     	end
