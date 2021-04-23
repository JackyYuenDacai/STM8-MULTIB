   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 50 void SPI_DeInit(void)
  42                     ; 51 {
  44                     	switch	.text
  45  0000               _SPI_DeInit:
  49                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  51  0000 725f5200      	clr	20992
  52                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  54  0004 725f5201      	clr	20993
  55                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  57  0008 725f5202      	clr	20994
  58                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  60  000c 35025203      	mov	20995,#2
  61                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  63  0010 35075205      	mov	20997,#7
  64                     ; 57 }
  67  0014 81            	ret
 384                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 384                     ; 79 {
 385                     	switch	.text
 386  0015               _SPI_Init:
 388  0015 89            	pushw	x
 389  0016 88            	push	a
 390       00000001      OFST:	set	1
 393                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 395  0017 9e            	ld	a,xh
 396  0018 4d            	tnz	a
 397  0019 2705          	jreq	L21
 398  001b 9e            	ld	a,xh
 399  001c a180          	cp	a,#128
 400  001e 2603          	jrne	L01
 401  0020               L21:
 402  0020 4f            	clr	a
 403  0021 2010          	jra	L41
 404  0023               L01:
 405  0023 ae0051        	ldw	x,#81
 406  0026 89            	pushw	x
 407  0027 ae0000        	ldw	x,#0
 408  002a 89            	pushw	x
 409  002b ae0000        	ldw	x,#L302
 410  002e cd0000        	call	_assert_failed
 412  0031 5b04          	addw	sp,#4
 413  0033               L41:
 414                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 416  0033 0d03          	tnz	(OFST+2,sp)
 417  0035 272a          	jreq	L02
 418  0037 7b03          	ld	a,(OFST+2,sp)
 419  0039 a108          	cp	a,#8
 420  003b 2724          	jreq	L02
 421  003d 7b03          	ld	a,(OFST+2,sp)
 422  003f a110          	cp	a,#16
 423  0041 271e          	jreq	L02
 424  0043 7b03          	ld	a,(OFST+2,sp)
 425  0045 a118          	cp	a,#24
 426  0047 2718          	jreq	L02
 427  0049 7b03          	ld	a,(OFST+2,sp)
 428  004b a120          	cp	a,#32
 429  004d 2712          	jreq	L02
 430  004f 7b03          	ld	a,(OFST+2,sp)
 431  0051 a128          	cp	a,#40
 432  0053 270c          	jreq	L02
 433  0055 7b03          	ld	a,(OFST+2,sp)
 434  0057 a130          	cp	a,#48
 435  0059 2706          	jreq	L02
 436  005b 7b03          	ld	a,(OFST+2,sp)
 437  005d a138          	cp	a,#56
 438  005f 2603          	jrne	L61
 439  0061               L02:
 440  0061 4f            	clr	a
 441  0062 2010          	jra	L22
 442  0064               L61:
 443  0064 ae0052        	ldw	x,#82
 444  0067 89            	pushw	x
 445  0068 ae0000        	ldw	x,#0
 446  006b 89            	pushw	x
 447  006c ae0000        	ldw	x,#L302
 448  006f cd0000        	call	_assert_failed
 450  0072 5b04          	addw	sp,#4
 451  0074               L22:
 452                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 454  0074 7b06          	ld	a,(OFST+5,sp)
 455  0076 a104          	cp	a,#4
 456  0078 2704          	jreq	L62
 457  007a 0d06          	tnz	(OFST+5,sp)
 458  007c 2603          	jrne	L42
 459  007e               L62:
 460  007e 4f            	clr	a
 461  007f 2010          	jra	L03
 462  0081               L42:
 463  0081 ae0053        	ldw	x,#83
 464  0084 89            	pushw	x
 465  0085 ae0000        	ldw	x,#0
 466  0088 89            	pushw	x
 467  0089 ae0000        	ldw	x,#L302
 468  008c cd0000        	call	_assert_failed
 470  008f 5b04          	addw	sp,#4
 471  0091               L03:
 472                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 474  0091 0d07          	tnz	(OFST+6,sp)
 475  0093 2706          	jreq	L43
 476  0095 7b07          	ld	a,(OFST+6,sp)
 477  0097 a102          	cp	a,#2
 478  0099 2603          	jrne	L23
 479  009b               L43:
 480  009b 4f            	clr	a
 481  009c 2010          	jra	L63
 482  009e               L23:
 483  009e ae0054        	ldw	x,#84
 484  00a1 89            	pushw	x
 485  00a2 ae0000        	ldw	x,#0
 486  00a5 89            	pushw	x
 487  00a6 ae0000        	ldw	x,#L302
 488  00a9 cd0000        	call	_assert_failed
 490  00ac 5b04          	addw	sp,#4
 491  00ae               L63:
 492                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 494  00ae 0d08          	tnz	(OFST+7,sp)
 495  00b0 2706          	jreq	L24
 496  00b2 7b08          	ld	a,(OFST+7,sp)
 497  00b4 a101          	cp	a,#1
 498  00b6 2603          	jrne	L04
 499  00b8               L24:
 500  00b8 4f            	clr	a
 501  00b9 2010          	jra	L44
 502  00bb               L04:
 503  00bb ae0055        	ldw	x,#85
 504  00be 89            	pushw	x
 505  00bf ae0000        	ldw	x,#0
 506  00c2 89            	pushw	x
 507  00c3 ae0000        	ldw	x,#L302
 508  00c6 cd0000        	call	_assert_failed
 510  00c9 5b04          	addw	sp,#4
 511  00cb               L44:
 512                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 514  00cb 0d09          	tnz	(OFST+8,sp)
 515  00cd 2712          	jreq	L05
 516  00cf 7b09          	ld	a,(OFST+8,sp)
 517  00d1 a104          	cp	a,#4
 518  00d3 270c          	jreq	L05
 519  00d5 7b09          	ld	a,(OFST+8,sp)
 520  00d7 a180          	cp	a,#128
 521  00d9 2706          	jreq	L05
 522  00db 7b09          	ld	a,(OFST+8,sp)
 523  00dd a1c0          	cp	a,#192
 524  00df 2603          	jrne	L64
 525  00e1               L05:
 526  00e1 4f            	clr	a
 527  00e2 2010          	jra	L25
 528  00e4               L64:
 529  00e4 ae0056        	ldw	x,#86
 530  00e7 89            	pushw	x
 531  00e8 ae0000        	ldw	x,#0
 532  00eb 89            	pushw	x
 533  00ec ae0000        	ldw	x,#L302
 534  00ef cd0000        	call	_assert_failed
 536  00f2 5b04          	addw	sp,#4
 537  00f4               L25:
 538                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 540  00f4 7b0a          	ld	a,(OFST+9,sp)
 541  00f6 a102          	cp	a,#2
 542  00f8 2704          	jreq	L65
 543  00fa 0d0a          	tnz	(OFST+9,sp)
 544  00fc 2603          	jrne	L45
 545  00fe               L65:
 546  00fe 4f            	clr	a
 547  00ff 2010          	jra	L06
 548  0101               L45:
 549  0101 ae0057        	ldw	x,#87
 550  0104 89            	pushw	x
 551  0105 ae0000        	ldw	x,#0
 552  0108 89            	pushw	x
 553  0109 ae0000        	ldw	x,#L302
 554  010c cd0000        	call	_assert_failed
 556  010f 5b04          	addw	sp,#4
 557  0111               L06:
 558                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 560  0111 0d0b          	tnz	(OFST+10,sp)
 561  0113 2703          	jreq	L26
 562  0115 4f            	clr	a
 563  0116 2010          	jra	L46
 564  0118               L26:
 565  0118 ae0058        	ldw	x,#88
 566  011b 89            	pushw	x
 567  011c ae0000        	ldw	x,#0
 568  011f 89            	pushw	x
 569  0120 ae0000        	ldw	x,#L302
 570  0123 cd0000        	call	_assert_failed
 572  0126 5b04          	addw	sp,#4
 573  0128               L46:
 574                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 574                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 576  0128 7b07          	ld	a,(OFST+6,sp)
 577  012a 1a08          	or	a,(OFST+7,sp)
 578  012c 6b01          	ld	(OFST+0,sp),a
 579  012e 7b02          	ld	a,(OFST+1,sp)
 580  0130 1a03          	or	a,(OFST+2,sp)
 581  0132 1a01          	or	a,(OFST+0,sp)
 582  0134 c75200        	ld	20992,a
 583                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 585  0137 7b09          	ld	a,(OFST+8,sp)
 586  0139 1a0a          	or	a,(OFST+9,sp)
 587  013b c75201        	ld	20993,a
 588                     ; 97   if (Mode == SPI_MODE_MASTER)
 590  013e 7b06          	ld	a,(OFST+5,sp)
 591  0140 a104          	cp	a,#4
 592  0142 2606          	jrne	L502
 593                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 595  0144 72105201      	bset	20993,#0
 597  0148 2004          	jra	L702
 598  014a               L502:
 599                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 601  014a 72115201      	bres	20993,#0
 602  014e               L702:
 603                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 605  014e c65200        	ld	a,20992
 606  0151 1a06          	or	a,(OFST+5,sp)
 607  0153 c75200        	ld	20992,a
 608                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 610  0156 7b0b          	ld	a,(OFST+10,sp)
 611  0158 c75205        	ld	20997,a
 612                     ; 111 }
 615  015b 5b03          	addw	sp,#3
 616  015d 81            	ret
 672                     ; 119 void SPI_Cmd(FunctionalState NewState)
 672                     ; 120 {
 673                     	switch	.text
 674  015e               _SPI_Cmd:
 676  015e 88            	push	a
 677       00000000      OFST:	set	0
 680                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 682  015f 4d            	tnz	a
 683  0160 2704          	jreq	L27
 684  0162 a101          	cp	a,#1
 685  0164 2603          	jrne	L07
 686  0166               L27:
 687  0166 4f            	clr	a
 688  0167 2010          	jra	L47
 689  0169               L07:
 690  0169 ae007a        	ldw	x,#122
 691  016c 89            	pushw	x
 692  016d ae0000        	ldw	x,#0
 693  0170 89            	pushw	x
 694  0171 ae0000        	ldw	x,#L302
 695  0174 cd0000        	call	_assert_failed
 697  0177 5b04          	addw	sp,#4
 698  0179               L47:
 699                     ; 124   if (NewState != DISABLE)
 701  0179 0d01          	tnz	(OFST+1,sp)
 702  017b 2706          	jreq	L732
 703                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 705  017d 721c5200      	bset	20992,#6
 707  0181 2004          	jra	L142
 708  0183               L732:
 709                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 711  0183 721d5200      	bres	20992,#6
 712  0187               L142:
 713                     ; 132 }
 716  0187 84            	pop	a
 717  0188 81            	ret
 827                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 827                     ; 142 {
 828                     	switch	.text
 829  0189               _SPI_ITConfig:
 831  0189 89            	pushw	x
 832  018a 88            	push	a
 833       00000001      OFST:	set	1
 836                     ; 143   uint8_t itpos = 0;
 838                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 840  018b 9e            	ld	a,xh
 841  018c a117          	cp	a,#23
 842  018e 270f          	jreq	L201
 843  0190 9e            	ld	a,xh
 844  0191 a106          	cp	a,#6
 845  0193 270a          	jreq	L201
 846  0195 9e            	ld	a,xh
 847  0196 a105          	cp	a,#5
 848  0198 2705          	jreq	L201
 849  019a 9e            	ld	a,xh
 850  019b a134          	cp	a,#52
 851  019d 2603          	jrne	L001
 852  019f               L201:
 853  019f 4f            	clr	a
 854  01a0 2010          	jra	L401
 855  01a2               L001:
 856  01a2 ae0091        	ldw	x,#145
 857  01a5 89            	pushw	x
 858  01a6 ae0000        	ldw	x,#0
 859  01a9 89            	pushw	x
 860  01aa ae0000        	ldw	x,#L302
 861  01ad cd0000        	call	_assert_failed
 863  01b0 5b04          	addw	sp,#4
 864  01b2               L401:
 865                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 867  01b2 0d03          	tnz	(OFST+2,sp)
 868  01b4 2706          	jreq	L011
 869  01b6 7b03          	ld	a,(OFST+2,sp)
 870  01b8 a101          	cp	a,#1
 871  01ba 2603          	jrne	L601
 872  01bc               L011:
 873  01bc 4f            	clr	a
 874  01bd 2010          	jra	L211
 875  01bf               L601:
 876  01bf ae0092        	ldw	x,#146
 877  01c2 89            	pushw	x
 878  01c3 ae0000        	ldw	x,#0
 879  01c6 89            	pushw	x
 880  01c7 ae0000        	ldw	x,#L302
 881  01ca cd0000        	call	_assert_failed
 883  01cd 5b04          	addw	sp,#4
 884  01cf               L211:
 885                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 887  01cf 7b02          	ld	a,(OFST+1,sp)
 888  01d1 a40f          	and	a,#15
 889  01d3 5f            	clrw	x
 890  01d4 97            	ld	xl,a
 891  01d5 a601          	ld	a,#1
 892  01d7 5d            	tnzw	x
 893  01d8 2704          	jreq	L411
 894  01da               L611:
 895  01da 48            	sll	a
 896  01db 5a            	decw	x
 897  01dc 26fc          	jrne	L611
 898  01de               L411:
 899  01de 6b01          	ld	(OFST+0,sp),a
 900                     ; 151   if (NewState != DISABLE)
 902  01e0 0d03          	tnz	(OFST+2,sp)
 903  01e2 270a          	jreq	L313
 904                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 906  01e4 c65202        	ld	a,20994
 907  01e7 1a01          	or	a,(OFST+0,sp)
 908  01e9 c75202        	ld	20994,a
 910  01ec 2009          	jra	L513
 911  01ee               L313:
 912                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 914  01ee 7b01          	ld	a,(OFST+0,sp)
 915  01f0 43            	cpl	a
 916  01f1 c45202        	and	a,20994
 917  01f4 c75202        	ld	20994,a
 918  01f7               L513:
 919                     ; 159 }
 922  01f7 5b03          	addw	sp,#3
 923  01f9 81            	ret
 957                     ; 166 void SPI_SendData(uint8_t Data)
 957                     ; 167 {
 958                     	switch	.text
 959  01fa               _SPI_SendData:
 963                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 965  01fa c75204        	ld	20996,a
 966                     ; 169 }
 969  01fd 81            	ret
 992                     ; 176 uint8_t SPI_ReceiveData(void)
 992                     ; 177 {
 993                     	switch	.text
 994  01fe               _SPI_ReceiveData:
 998                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
1000  01fe c65204        	ld	a,20996
1003  0201 81            	ret
1040                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
1040                     ; 188 {
1041                     	switch	.text
1042  0202               _SPI_NSSInternalSoftwareCmd:
1044  0202 88            	push	a
1045       00000000      OFST:	set	0
1048                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1050  0203 4d            	tnz	a
1051  0204 2704          	jreq	L031
1052  0206 a101          	cp	a,#1
1053  0208 2603          	jrne	L621
1054  020a               L031:
1055  020a 4f            	clr	a
1056  020b 2010          	jra	L231
1057  020d               L621:
1058  020d ae00be        	ldw	x,#190
1059  0210 89            	pushw	x
1060  0211 ae0000        	ldw	x,#0
1061  0214 89            	pushw	x
1062  0215 ae0000        	ldw	x,#L302
1063  0218 cd0000        	call	_assert_failed
1065  021b 5b04          	addw	sp,#4
1066  021d               L231:
1067                     ; 192   if (NewState != DISABLE)
1069  021d 0d01          	tnz	(OFST+1,sp)
1070  021f 2706          	jreq	L363
1071                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
1073  0221 72105201      	bset	20993,#0
1075  0225 2004          	jra	L563
1076  0227               L363:
1077                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
1079  0227 72115201      	bres	20993,#0
1080  022b               L563:
1081                     ; 200 }
1084  022b 84            	pop	a
1085  022c 81            	ret
1108                     ; 207 void SPI_TransmitCRC(void)
1108                     ; 208 {
1109                     	switch	.text
1110  022d               _SPI_TransmitCRC:
1114                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1116  022d 72185201      	bset	20993,#4
1117                     ; 210 }
1120  0231 81            	ret
1157                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1157                     ; 219 {
1158                     	switch	.text
1159  0232               _SPI_CalculateCRCCmd:
1161  0232 88            	push	a
1162       00000000      OFST:	set	0
1165                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1167  0233 4d            	tnz	a
1168  0234 2704          	jreq	L241
1169  0236 a101          	cp	a,#1
1170  0238 2603          	jrne	L041
1171  023a               L241:
1172  023a 4f            	clr	a
1173  023b 2010          	jra	L441
1174  023d               L041:
1175  023d ae00dd        	ldw	x,#221
1176  0240 89            	pushw	x
1177  0241 ae0000        	ldw	x,#0
1178  0244 89            	pushw	x
1179  0245 ae0000        	ldw	x,#L302
1180  0248 cd0000        	call	_assert_failed
1182  024b 5b04          	addw	sp,#4
1183  024d               L441:
1184                     ; 223   if (NewState != DISABLE)
1186  024d 0d01          	tnz	(OFST+1,sp)
1187  024f 2706          	jreq	L514
1188                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1190  0251 721a5201      	bset	20993,#5
1192  0255 2004          	jra	L714
1193  0257               L514:
1194                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1196  0257 721b5201      	bres	20993,#5
1197  025b               L714:
1198                     ; 231 }
1201  025b 84            	pop	a
1202  025c 81            	ret
1267                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1267                     ; 239 {
1268                     	switch	.text
1269  025d               _SPI_GetCRC:
1271  025d 88            	push	a
1272  025e 88            	push	a
1273       00000001      OFST:	set	1
1276                     ; 240   uint8_t crcreg = 0;
1278                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1280  025f a101          	cp	a,#1
1281  0261 2703          	jreq	L251
1282  0263 4d            	tnz	a
1283  0264 2603          	jrne	L051
1284  0266               L251:
1285  0266 4f            	clr	a
1286  0267 2010          	jra	L451
1287  0269               L051:
1288  0269 ae00f3        	ldw	x,#243
1289  026c 89            	pushw	x
1290  026d ae0000        	ldw	x,#0
1291  0270 89            	pushw	x
1292  0271 ae0000        	ldw	x,#L302
1293  0274 cd0000        	call	_assert_failed
1295  0277 5b04          	addw	sp,#4
1296  0279               L451:
1297                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1299  0279 0d02          	tnz	(OFST+1,sp)
1300  027b 2707          	jreq	L354
1301                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1303  027d c65207        	ld	a,20999
1304  0280 6b01          	ld	(OFST+0,sp),a
1306  0282 2005          	jra	L554
1307  0284               L354:
1308                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1310  0284 c65206        	ld	a,20998
1311  0287 6b01          	ld	(OFST+0,sp),a
1312  0289               L554:
1313                     ; 255   return crcreg;
1315  0289 7b01          	ld	a,(OFST+0,sp)
1318  028b 85            	popw	x
1319  028c 81            	ret
1344                     ; 263 void SPI_ResetCRC(void)
1344                     ; 264 {
1345                     	switch	.text
1346  028d               _SPI_ResetCRC:
1350                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1352  028d a601          	ld	a,#1
1353  028f ada1          	call	_SPI_CalculateCRCCmd
1355                     ; 270   SPI_Cmd(ENABLE);
1357  0291 a601          	ld	a,#1
1358  0293 cd015e        	call	_SPI_Cmd
1360                     ; 271 }
1363  0296 81            	ret
1387                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1387                     ; 279 {
1388                     	switch	.text
1389  0297               _SPI_GetCRCPolynomial:
1393                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1395  0297 c65205        	ld	a,20997
1398  029a 81            	ret
1455                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1455                     ; 289 {
1456                     	switch	.text
1457  029b               _SPI_BiDirectionalLineConfig:
1459  029b 88            	push	a
1460       00000000      OFST:	set	0
1463                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1465  029c 4d            	tnz	a
1466  029d 2704          	jreq	L661
1467  029f a101          	cp	a,#1
1468  02a1 2603          	jrne	L461
1469  02a3               L661:
1470  02a3 4f            	clr	a
1471  02a4 2010          	jra	L071
1472  02a6               L461:
1473  02a6 ae0123        	ldw	x,#291
1474  02a9 89            	pushw	x
1475  02aa ae0000        	ldw	x,#0
1476  02ad 89            	pushw	x
1477  02ae ae0000        	ldw	x,#L302
1478  02b1 cd0000        	call	_assert_failed
1480  02b4 5b04          	addw	sp,#4
1481  02b6               L071:
1482                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1484  02b6 0d01          	tnz	(OFST+1,sp)
1485  02b8 2706          	jreq	L525
1486                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1488  02ba 721c5201      	bset	20993,#6
1490  02be 2004          	jra	L725
1491  02c0               L525:
1492                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1494  02c0 721d5201      	bres	20993,#6
1495  02c4               L725:
1496                     ; 301 }
1499  02c4 84            	pop	a
1500  02c5 81            	ret
1622                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1622                     ; 312 {
1623                     	switch	.text
1624  02c6               _SPI_GetFlagStatus:
1626  02c6 88            	push	a
1627  02c7 88            	push	a
1628       00000001      OFST:	set	1
1631                     ; 313   FlagStatus status = RESET;
1633                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1635  02c8 a140          	cp	a,#64
1636  02ca 2718          	jreq	L671
1637  02cc a120          	cp	a,#32
1638  02ce 2714          	jreq	L671
1639  02d0 a110          	cp	a,#16
1640  02d2 2710          	jreq	L671
1641  02d4 a108          	cp	a,#8
1642  02d6 270c          	jreq	L671
1643  02d8 a102          	cp	a,#2
1644  02da 2708          	jreq	L671
1645  02dc a101          	cp	a,#1
1646  02de 2704          	jreq	L671
1647  02e0 a180          	cp	a,#128
1648  02e2 2603          	jrne	L471
1649  02e4               L671:
1650  02e4 4f            	clr	a
1651  02e5 2010          	jra	L002
1652  02e7               L471:
1653  02e7 ae013b        	ldw	x,#315
1654  02ea 89            	pushw	x
1655  02eb ae0000        	ldw	x,#0
1656  02ee 89            	pushw	x
1657  02ef ae0000        	ldw	x,#L302
1658  02f2 cd0000        	call	_assert_failed
1660  02f5 5b04          	addw	sp,#4
1661  02f7               L002:
1662                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1664  02f7 c65203        	ld	a,20995
1665  02fa 1502          	bcp	a,(OFST+1,sp)
1666  02fc 2706          	jreq	L506
1667                     ; 320     status = SET; /* SPI_FLAG is set */
1669  02fe a601          	ld	a,#1
1670  0300 6b01          	ld	(OFST+0,sp),a
1672  0302 2002          	jra	L706
1673  0304               L506:
1674                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1676  0304 0f01          	clr	(OFST+0,sp)
1677  0306               L706:
1678                     ; 328   return status;
1680  0306 7b01          	ld	a,(OFST+0,sp)
1683  0308 85            	popw	x
1684  0309 81            	ret
1720                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1720                     ; 347 {
1721                     	switch	.text
1722  030a               _SPI_ClearFlag:
1724  030a 88            	push	a
1725       00000000      OFST:	set	0
1728                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1730  030b a110          	cp	a,#16
1731  030d 2704          	jreq	L602
1732  030f a108          	cp	a,#8
1733  0311 2603          	jrne	L402
1734  0313               L602:
1735  0313 4f            	clr	a
1736  0314 2010          	jra	L012
1737  0316               L402:
1738  0316 ae015c        	ldw	x,#348
1739  0319 89            	pushw	x
1740  031a ae0000        	ldw	x,#0
1741  031d 89            	pushw	x
1742  031e ae0000        	ldw	x,#L302
1743  0321 cd0000        	call	_assert_failed
1745  0324 5b04          	addw	sp,#4
1746  0326               L012:
1747                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1749  0326 7b01          	ld	a,(OFST+1,sp)
1750  0328 43            	cpl	a
1751  0329 c75203        	ld	20995,a
1752                     ; 351 }
1755  032c 84            	pop	a
1756  032d 81            	ret
1839                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1839                     ; 367 {
1840                     	switch	.text
1841  032e               _SPI_GetITStatus:
1843  032e 88            	push	a
1844  032f 89            	pushw	x
1845       00000002      OFST:	set	2
1848                     ; 368   ITStatus pendingbitstatus = RESET;
1850                     ; 369   uint8_t itpos = 0;
1852                     ; 370   uint8_t itmask1 = 0;
1854                     ; 371   uint8_t itmask2 = 0;
1856                     ; 372   uint8_t enablestatus = 0;
1858                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1860  0330 a165          	cp	a,#101
1861  0332 2714          	jreq	L612
1862  0334 a155          	cp	a,#85
1863  0336 2710          	jreq	L612
1864  0338 a145          	cp	a,#69
1865  033a 270c          	jreq	L612
1866  033c a134          	cp	a,#52
1867  033e 2708          	jreq	L612
1868  0340 a117          	cp	a,#23
1869  0342 2704          	jreq	L612
1870  0344 a106          	cp	a,#6
1871  0346 2603          	jrne	L412
1872  0348               L612:
1873  0348 4f            	clr	a
1874  0349 2010          	jra	L022
1875  034b               L412:
1876  034b ae0175        	ldw	x,#373
1877  034e 89            	pushw	x
1878  034f ae0000        	ldw	x,#0
1879  0352 89            	pushw	x
1880  0353 ae0000        	ldw	x,#L302
1881  0356 cd0000        	call	_assert_failed
1883  0359 5b04          	addw	sp,#4
1884  035b               L022:
1885                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1887  035b 7b03          	ld	a,(OFST+1,sp)
1888  035d a40f          	and	a,#15
1889  035f 5f            	clrw	x
1890  0360 97            	ld	xl,a
1891  0361 a601          	ld	a,#1
1892  0363 5d            	tnzw	x
1893  0364 2704          	jreq	L222
1894  0366               L422:
1895  0366 48            	sll	a
1896  0367 5a            	decw	x
1897  0368 26fc          	jrne	L422
1898  036a               L222:
1899  036a 6b01          	ld	(OFST-1,sp),a
1900                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1902  036c 7b03          	ld	a,(OFST+1,sp)
1903  036e 4e            	swap	a
1904  036f a40f          	and	a,#15
1905  0371 6b02          	ld	(OFST+0,sp),a
1906                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1908  0373 7b02          	ld	a,(OFST+0,sp)
1909  0375 5f            	clrw	x
1910  0376 97            	ld	xl,a
1911  0377 a601          	ld	a,#1
1912  0379 5d            	tnzw	x
1913  037a 2704          	jreq	L622
1914  037c               L032:
1915  037c 48            	sll	a
1916  037d 5a            	decw	x
1917  037e 26fc          	jrne	L032
1918  0380               L622:
1919  0380 6b02          	ld	(OFST+0,sp),a
1920                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1922  0382 c65203        	ld	a,20995
1923  0385 1402          	and	a,(OFST+0,sp)
1924  0387 6b02          	ld	(OFST+0,sp),a
1925                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1927  0389 c65202        	ld	a,20994
1928  038c 1501          	bcp	a,(OFST-1,sp)
1929  038e 270a          	jreq	L176
1931  0390 0d02          	tnz	(OFST+0,sp)
1932  0392 2706          	jreq	L176
1933                     ; 387     pendingbitstatus = SET;
1935  0394 a601          	ld	a,#1
1936  0396 6b02          	ld	(OFST+0,sp),a
1938  0398 2002          	jra	L376
1939  039a               L176:
1940                     ; 392     pendingbitstatus = RESET;
1942  039a 0f02          	clr	(OFST+0,sp)
1943  039c               L376:
1944                     ; 395   return  pendingbitstatus;
1946  039c 7b02          	ld	a,(OFST+0,sp)
1949  039e 5b03          	addw	sp,#3
1950  03a0 81            	ret
1996                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1996                     ; 413 {
1997                     	switch	.text
1998  03a1               _SPI_ClearITPendingBit:
2000  03a1 88            	push	a
2001  03a2 88            	push	a
2002       00000001      OFST:	set	1
2005                     ; 414   uint8_t itpos = 0;
2007                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
2009  03a3 a145          	cp	a,#69
2010  03a5 2704          	jreq	L632
2011  03a7 a134          	cp	a,#52
2012  03a9 2603          	jrne	L432
2013  03ab               L632:
2014  03ab 4f            	clr	a
2015  03ac 2010          	jra	L042
2016  03ae               L432:
2017  03ae ae019f        	ldw	x,#415
2018  03b1 89            	pushw	x
2019  03b2 ae0000        	ldw	x,#0
2020  03b5 89            	pushw	x
2021  03b6 ae0000        	ldw	x,#L302
2022  03b9 cd0000        	call	_assert_failed
2024  03bc 5b04          	addw	sp,#4
2025  03be               L042:
2026                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
2028  03be 7b02          	ld	a,(OFST+1,sp)
2029  03c0 a4f0          	and	a,#240
2030  03c2 4e            	swap	a
2031  03c3 a40f          	and	a,#15
2032  03c5 5f            	clrw	x
2033  03c6 97            	ld	xl,a
2034  03c7 a601          	ld	a,#1
2035  03c9 5d            	tnzw	x
2036  03ca 2704          	jreq	L242
2037  03cc               L442:
2038  03cc 48            	sll	a
2039  03cd 5a            	decw	x
2040  03ce 26fc          	jrne	L442
2041  03d0               L242:
2042  03d0 6b01          	ld	(OFST+0,sp),a
2043                     ; 422   SPI->SR = (uint8_t)(~itpos);
2045  03d2 7b01          	ld	a,(OFST+0,sp)
2046  03d4 43            	cpl	a
2047  03d5 c75203        	ld	20995,a
2048                     ; 424 }
2051  03d8 85            	popw	x
2052  03d9 81            	ret
2065                     	xdef	_SPI_ClearITPendingBit
2066                     	xdef	_SPI_GetITStatus
2067                     	xdef	_SPI_ClearFlag
2068                     	xdef	_SPI_GetFlagStatus
2069                     	xdef	_SPI_BiDirectionalLineConfig
2070                     	xdef	_SPI_GetCRCPolynomial
2071                     	xdef	_SPI_ResetCRC
2072                     	xdef	_SPI_GetCRC
2073                     	xdef	_SPI_CalculateCRCCmd
2074                     	xdef	_SPI_TransmitCRC
2075                     	xdef	_SPI_NSSInternalSoftwareCmd
2076                     	xdef	_SPI_ReceiveData
2077                     	xdef	_SPI_SendData
2078                     	xdef	_SPI_ITConfig
2079                     	xdef	_SPI_Cmd
2080                     	xdef	_SPI_Init
2081                     	xdef	_SPI_DeInit
2082                     	xref	_assert_failed
2083                     .const:	section	.text
2084  0000               L302:
2085  0000 6c6962726172  	dc.b	"library\stm8s_spi."
2086  0012 6300          	dc.b	"c",0
2106                     	end
