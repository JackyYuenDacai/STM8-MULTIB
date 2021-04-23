   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  14                     .const:	section	.text
  15  0000               _HSIDivFactor:
  16  0000 01            	dc.b	1
  17  0001 02            	dc.b	2
  18  0002 04            	dc.b	4
  19  0003 08            	dc.b	8
  20  0004               _CLKPrescTable:
  21  0004 01            	dc.b	1
  22  0005 02            	dc.b	2
  23  0006 04            	dc.b	4
  24  0007 08            	dc.b	8
  25  0008 0a            	dc.b	10
  26  0009 10            	dc.b	16
  27  000a 14            	dc.b	20
  28  000b 28            	dc.b	40
  57                     ; 72 void CLK_DeInit(void)
  57                     ; 73 {
  59                     	switch	.text
  60  0000               _CLK_DeInit:
  64                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  66  0000 350150c0      	mov	20672,#1
  67                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  69  0004 725f50c1      	clr	20673
  70                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  72  0008 35e150c4      	mov	20676,#225
  73                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  75  000c 725f50c5      	clr	20677
  76                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  78  0010 351850c6      	mov	20678,#24
  79                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  81  0014 35ff50c7      	mov	20679,#255
  82                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  84  0018 35ff50ca      	mov	20682,#255
  85                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  87  001c 725f50c8      	clr	20680
  88                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  90  0020 725f50c9      	clr	20681
  92  0024               L52:
  93                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  95  0024 c650c9        	ld	a,20681
  96  0027 a501          	bcp	a,#1
  97  0029 26f9          	jrne	L52
  98                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
 100  002b 725f50c9      	clr	20681
 101                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 103  002f 725f50cc      	clr	20684
 104                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 106  0033 725f50cd      	clr	20685
 107                     ; 88 }
 110  0037 81            	ret
 167                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 167                     ; 100 {
 168                     	switch	.text
 169  0038               _CLK_FastHaltWakeUpCmd:
 171  0038 88            	push	a
 172       00000000      OFST:	set	0
 175                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 177  0039 4d            	tnz	a
 178  003a 2704          	jreq	L21
 179  003c a101          	cp	a,#1
 180  003e 2603          	jrne	L01
 181  0040               L21:
 182  0040 4f            	clr	a
 183  0041 2010          	jra	L41
 184  0043               L01:
 185  0043 ae0066        	ldw	x,#102
 186  0046 89            	pushw	x
 187  0047 ae0000        	ldw	x,#0
 188  004a 89            	pushw	x
 189  004b ae000c        	ldw	x,#L75
 190  004e cd0000        	call	_assert_failed
 192  0051 5b04          	addw	sp,#4
 193  0053               L41:
 194                     ; 104   if (NewState != DISABLE)
 196  0053 0d01          	tnz	(OFST+1,sp)
 197  0055 2706          	jreq	L16
 198                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 200  0057 721450c0      	bset	20672,#2
 202  005b 2004          	jra	L36
 203  005d               L16:
 204                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 206  005d 721550c0      	bres	20672,#2
 207  0061               L36:
 208                     ; 114 }
 211  0061 84            	pop	a
 212  0062 81            	ret
 248                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 248                     ; 122 {
 249                     	switch	.text
 250  0063               _CLK_HSECmd:
 252  0063 88            	push	a
 253       00000000      OFST:	set	0
 256                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 258  0064 4d            	tnz	a
 259  0065 2704          	jreq	L22
 260  0067 a101          	cp	a,#1
 261  0069 2603          	jrne	L02
 262  006b               L22:
 263  006b 4f            	clr	a
 264  006c 2010          	jra	L42
 265  006e               L02:
 266  006e ae007c        	ldw	x,#124
 267  0071 89            	pushw	x
 268  0072 ae0000        	ldw	x,#0
 269  0075 89            	pushw	x
 270  0076 ae000c        	ldw	x,#L75
 271  0079 cd0000        	call	_assert_failed
 273  007c 5b04          	addw	sp,#4
 274  007e               L42:
 275                     ; 126   if (NewState != DISABLE)
 277  007e 0d01          	tnz	(OFST+1,sp)
 278  0080 2706          	jreq	L301
 279                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 281  0082 721050c1      	bset	20673,#0
 283  0086 2004          	jra	L501
 284  0088               L301:
 285                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 287  0088 721150c1      	bres	20673,#0
 288  008c               L501:
 289                     ; 136 }
 292  008c 84            	pop	a
 293  008d 81            	ret
 329                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 329                     ; 144 {
 330                     	switch	.text
 331  008e               _CLK_HSICmd:
 333  008e 88            	push	a
 334       00000000      OFST:	set	0
 337                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 339  008f 4d            	tnz	a
 340  0090 2704          	jreq	L23
 341  0092 a101          	cp	a,#1
 342  0094 2603          	jrne	L03
 343  0096               L23:
 344  0096 4f            	clr	a
 345  0097 2010          	jra	L43
 346  0099               L03:
 347  0099 ae0092        	ldw	x,#146
 348  009c 89            	pushw	x
 349  009d ae0000        	ldw	x,#0
 350  00a0 89            	pushw	x
 351  00a1 ae000c        	ldw	x,#L75
 352  00a4 cd0000        	call	_assert_failed
 354  00a7 5b04          	addw	sp,#4
 355  00a9               L43:
 356                     ; 148   if (NewState != DISABLE)
 358  00a9 0d01          	tnz	(OFST+1,sp)
 359  00ab 2706          	jreq	L521
 360                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 362  00ad 721050c0      	bset	20672,#0
 364  00b1 2004          	jra	L721
 365  00b3               L521:
 366                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 368  00b3 721150c0      	bres	20672,#0
 369  00b7               L721:
 370                     ; 158 }
 373  00b7 84            	pop	a
 374  00b8 81            	ret
 410                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 410                     ; 167 {
 411                     	switch	.text
 412  00b9               _CLK_LSICmd:
 414  00b9 88            	push	a
 415       00000000      OFST:	set	0
 418                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 420  00ba 4d            	tnz	a
 421  00bb 2704          	jreq	L24
 422  00bd a101          	cp	a,#1
 423  00bf 2603          	jrne	L04
 424  00c1               L24:
 425  00c1 4f            	clr	a
 426  00c2 2010          	jra	L44
 427  00c4               L04:
 428  00c4 ae00a9        	ldw	x,#169
 429  00c7 89            	pushw	x
 430  00c8 ae0000        	ldw	x,#0
 431  00cb 89            	pushw	x
 432  00cc ae000c        	ldw	x,#L75
 433  00cf cd0000        	call	_assert_failed
 435  00d2 5b04          	addw	sp,#4
 436  00d4               L44:
 437                     ; 171   if (NewState != DISABLE)
 439  00d4 0d01          	tnz	(OFST+1,sp)
 440  00d6 2706          	jreq	L741
 441                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 443  00d8 721650c0      	bset	20672,#3
 445  00dc 2004          	jra	L151
 446  00de               L741:
 447                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 449  00de 721750c0      	bres	20672,#3
 450  00e2               L151:
 451                     ; 181 }
 454  00e2 84            	pop	a
 455  00e3 81            	ret
 491                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 491                     ; 190 {
 492                     	switch	.text
 493  00e4               _CLK_CCOCmd:
 495  00e4 88            	push	a
 496       00000000      OFST:	set	0
 499                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 501  00e5 4d            	tnz	a
 502  00e6 2704          	jreq	L25
 503  00e8 a101          	cp	a,#1
 504  00ea 2603          	jrne	L05
 505  00ec               L25:
 506  00ec 4f            	clr	a
 507  00ed 2010          	jra	L45
 508  00ef               L05:
 509  00ef ae00c0        	ldw	x,#192
 510  00f2 89            	pushw	x
 511  00f3 ae0000        	ldw	x,#0
 512  00f6 89            	pushw	x
 513  00f7 ae000c        	ldw	x,#L75
 514  00fa cd0000        	call	_assert_failed
 516  00fd 5b04          	addw	sp,#4
 517  00ff               L45:
 518                     ; 194   if (NewState != DISABLE)
 520  00ff 0d01          	tnz	(OFST+1,sp)
 521  0101 2706          	jreq	L171
 522                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 524  0103 721050c9      	bset	20681,#0
 526  0107 2004          	jra	L371
 527  0109               L171:
 528                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 530  0109 721150c9      	bres	20681,#0
 531  010d               L371:
 532                     ; 204 }
 535  010d 84            	pop	a
 536  010e 81            	ret
 572                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 572                     ; 214 {
 573                     	switch	.text
 574  010f               _CLK_ClockSwitchCmd:
 576  010f 88            	push	a
 577       00000000      OFST:	set	0
 580                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 582  0110 4d            	tnz	a
 583  0111 2704          	jreq	L26
 584  0113 a101          	cp	a,#1
 585  0115 2603          	jrne	L06
 586  0117               L26:
 587  0117 4f            	clr	a
 588  0118 2010          	jra	L46
 589  011a               L06:
 590  011a ae00d8        	ldw	x,#216
 591  011d 89            	pushw	x
 592  011e ae0000        	ldw	x,#0
 593  0121 89            	pushw	x
 594  0122 ae000c        	ldw	x,#L75
 595  0125 cd0000        	call	_assert_failed
 597  0128 5b04          	addw	sp,#4
 598  012a               L46:
 599                     ; 218   if (NewState != DISABLE )
 601  012a 0d01          	tnz	(OFST+1,sp)
 602  012c 2706          	jreq	L312
 603                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 605  012e 721250c5      	bset	20677,#1
 607  0132 2004          	jra	L512
 608  0134               L312:
 609                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 611  0134 721350c5      	bres	20677,#1
 612  0138               L512:
 613                     ; 228 }
 616  0138 84            	pop	a
 617  0139 81            	ret
 654                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 654                     ; 239 {
 655                     	switch	.text
 656  013a               _CLK_SlowActiveHaltWakeUpCmd:
 658  013a 88            	push	a
 659       00000000      OFST:	set	0
 662                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 664  013b 4d            	tnz	a
 665  013c 2704          	jreq	L27
 666  013e a101          	cp	a,#1
 667  0140 2603          	jrne	L07
 668  0142               L27:
 669  0142 4f            	clr	a
 670  0143 2010          	jra	L47
 671  0145               L07:
 672  0145 ae00f1        	ldw	x,#241
 673  0148 89            	pushw	x
 674  0149 ae0000        	ldw	x,#0
 675  014c 89            	pushw	x
 676  014d ae000c        	ldw	x,#L75
 677  0150 cd0000        	call	_assert_failed
 679  0153 5b04          	addw	sp,#4
 680  0155               L47:
 681                     ; 243   if (NewState != DISABLE)
 683  0155 0d01          	tnz	(OFST+1,sp)
 684  0157 2706          	jreq	L532
 685                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 687  0159 721a50c0      	bset	20672,#5
 689  015d 2004          	jra	L732
 690  015f               L532:
 691                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 693  015f 721b50c0      	bres	20672,#5
 694  0163               L732:
 695                     ; 253 }
 698  0163 84            	pop	a
 699  0164 81            	ret
 859                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 859                     ; 264 {
 860                     	switch	.text
 861  0165               _CLK_PeripheralClockConfig:
 863  0165 89            	pushw	x
 864       00000000      OFST:	set	0
 867                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 869  0166 9f            	ld	a,xl
 870  0167 4d            	tnz	a
 871  0168 2705          	jreq	L201
 872  016a 9f            	ld	a,xl
 873  016b a101          	cp	a,#1
 874  016d 2603          	jrne	L001
 875  016f               L201:
 876  016f 4f            	clr	a
 877  0170 2010          	jra	L401
 878  0172               L001:
 879  0172 ae010a        	ldw	x,#266
 880  0175 89            	pushw	x
 881  0176 ae0000        	ldw	x,#0
 882  0179 89            	pushw	x
 883  017a ae000c        	ldw	x,#L75
 884  017d cd0000        	call	_assert_failed
 886  0180 5b04          	addw	sp,#4
 887  0182               L401:
 888                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 890  0182 0d01          	tnz	(OFST+1,sp)
 891  0184 274e          	jreq	L011
 892  0186 7b01          	ld	a,(OFST+1,sp)
 893  0188 a101          	cp	a,#1
 894  018a 2748          	jreq	L011
 895  018c 7b01          	ld	a,(OFST+1,sp)
 896  018e a103          	cp	a,#3
 897  0190 2742          	jreq	L011
 898  0192 7b01          	ld	a,(OFST+1,sp)
 899  0194 a103          	cp	a,#3
 900  0196 273c          	jreq	L011
 901  0198 7b01          	ld	a,(OFST+1,sp)
 902  019a a103          	cp	a,#3
 903  019c 2736          	jreq	L011
 904  019e 7b01          	ld	a,(OFST+1,sp)
 905  01a0 a104          	cp	a,#4
 906  01a2 2730          	jreq	L011
 907  01a4 7b01          	ld	a,(OFST+1,sp)
 908  01a6 a105          	cp	a,#5
 909  01a8 272a          	jreq	L011
 910  01aa 7b01          	ld	a,(OFST+1,sp)
 911  01ac a105          	cp	a,#5
 912  01ae 2724          	jreq	L011
 913  01b0 7b01          	ld	a,(OFST+1,sp)
 914  01b2 a104          	cp	a,#4
 915  01b4 271e          	jreq	L011
 916  01b6 7b01          	ld	a,(OFST+1,sp)
 917  01b8 a106          	cp	a,#6
 918  01ba 2718          	jreq	L011
 919  01bc 7b01          	ld	a,(OFST+1,sp)
 920  01be a107          	cp	a,#7
 921  01c0 2712          	jreq	L011
 922  01c2 7b01          	ld	a,(OFST+1,sp)
 923  01c4 a117          	cp	a,#23
 924  01c6 270c          	jreq	L011
 925  01c8 7b01          	ld	a,(OFST+1,sp)
 926  01ca a113          	cp	a,#19
 927  01cc 2706          	jreq	L011
 928  01ce 7b01          	ld	a,(OFST+1,sp)
 929  01d0 a112          	cp	a,#18
 930  01d2 2603          	jrne	L601
 931  01d4               L011:
 932  01d4 4f            	clr	a
 933  01d5 2010          	jra	L211
 934  01d7               L601:
 935  01d7 ae010b        	ldw	x,#267
 936  01da 89            	pushw	x
 937  01db ae0000        	ldw	x,#0
 938  01de 89            	pushw	x
 939  01df ae000c        	ldw	x,#L75
 940  01e2 cd0000        	call	_assert_failed
 942  01e5 5b04          	addw	sp,#4
 943  01e7               L211:
 944                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 946  01e7 7b01          	ld	a,(OFST+1,sp)
 947  01e9 a510          	bcp	a,#16
 948  01eb 2633          	jrne	L323
 949                     ; 271     if (NewState != DISABLE)
 951  01ed 0d02          	tnz	(OFST+2,sp)
 952  01ef 2717          	jreq	L523
 953                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 955  01f1 7b01          	ld	a,(OFST+1,sp)
 956  01f3 a40f          	and	a,#15
 957  01f5 5f            	clrw	x
 958  01f6 97            	ld	xl,a
 959  01f7 a601          	ld	a,#1
 960  01f9 5d            	tnzw	x
 961  01fa 2704          	jreq	L411
 962  01fc               L611:
 963  01fc 48            	sll	a
 964  01fd 5a            	decw	x
 965  01fe 26fc          	jrne	L611
 966  0200               L411:
 967  0200 ca50c7        	or	a,20679
 968  0203 c750c7        	ld	20679,a
 970  0206 2049          	jra	L133
 971  0208               L523:
 972                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 974  0208 7b01          	ld	a,(OFST+1,sp)
 975  020a a40f          	and	a,#15
 976  020c 5f            	clrw	x
 977  020d 97            	ld	xl,a
 978  020e a601          	ld	a,#1
 979  0210 5d            	tnzw	x
 980  0211 2704          	jreq	L021
 981  0213               L221:
 982  0213 48            	sll	a
 983  0214 5a            	decw	x
 984  0215 26fc          	jrne	L221
 985  0217               L021:
 986  0217 43            	cpl	a
 987  0218 c450c7        	and	a,20679
 988  021b c750c7        	ld	20679,a
 989  021e 2031          	jra	L133
 990  0220               L323:
 991                     ; 284     if (NewState != DISABLE)
 993  0220 0d02          	tnz	(OFST+2,sp)
 994  0222 2717          	jreq	L333
 995                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 997  0224 7b01          	ld	a,(OFST+1,sp)
 998  0226 a40f          	and	a,#15
 999  0228 5f            	clrw	x
1000  0229 97            	ld	xl,a
1001  022a a601          	ld	a,#1
1002  022c 5d            	tnzw	x
1003  022d 2704          	jreq	L421
1004  022f               L621:
1005  022f 48            	sll	a
1006  0230 5a            	decw	x
1007  0231 26fc          	jrne	L621
1008  0233               L421:
1009  0233 ca50ca        	or	a,20682
1010  0236 c750ca        	ld	20682,a
1012  0239 2016          	jra	L133
1013  023b               L333:
1014                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
1016  023b 7b01          	ld	a,(OFST+1,sp)
1017  023d a40f          	and	a,#15
1018  023f 5f            	clrw	x
1019  0240 97            	ld	xl,a
1020  0241 a601          	ld	a,#1
1021  0243 5d            	tnzw	x
1022  0244 2704          	jreq	L031
1023  0246               L231:
1024  0246 48            	sll	a
1025  0247 5a            	decw	x
1026  0248 26fc          	jrne	L231
1027  024a               L031:
1028  024a 43            	cpl	a
1029  024b c450ca        	and	a,20682
1030  024e c750ca        	ld	20682,a
1031  0251               L133:
1032                     ; 295 }
1035  0251 85            	popw	x
1036  0252 81            	ret
1225                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1225                     ; 310 {
1226                     	switch	.text
1227  0253               _CLK_ClockSwitchConfig:
1229  0253 89            	pushw	x
1230  0254 5204          	subw	sp,#4
1231       00000004      OFST:	set	4
1234                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1236  0256 aeffff        	ldw	x,#65535
1237  0259 1f03          	ldw	(OFST-1,sp),x
1238                     ; 313   ErrorStatus Swif = ERROR;
1240                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1242  025b 7b06          	ld	a,(OFST+2,sp)
1243  025d a1e1          	cp	a,#225
1244  025f 270c          	jreq	L041
1245  0261 7b06          	ld	a,(OFST+2,sp)
1246  0263 a1d2          	cp	a,#210
1247  0265 2706          	jreq	L041
1248  0267 7b06          	ld	a,(OFST+2,sp)
1249  0269 a1b4          	cp	a,#180
1250  026b 2603          	jrne	L631
1251  026d               L041:
1252  026d 4f            	clr	a
1253  026e 2010          	jra	L241
1254  0270               L631:
1255  0270 ae013c        	ldw	x,#316
1256  0273 89            	pushw	x
1257  0274 ae0000        	ldw	x,#0
1258  0277 89            	pushw	x
1259  0278 ae000c        	ldw	x,#L75
1260  027b cd0000        	call	_assert_failed
1262  027e 5b04          	addw	sp,#4
1263  0280               L241:
1264                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1266  0280 0d05          	tnz	(OFST+1,sp)
1267  0282 2706          	jreq	L641
1268  0284 7b05          	ld	a,(OFST+1,sp)
1269  0286 a101          	cp	a,#1
1270  0288 2603          	jrne	L441
1271  028a               L641:
1272  028a 4f            	clr	a
1273  028b 2010          	jra	L051
1274  028d               L441:
1275  028d ae013d        	ldw	x,#317
1276  0290 89            	pushw	x
1277  0291 ae0000        	ldw	x,#0
1278  0294 89            	pushw	x
1279  0295 ae000c        	ldw	x,#L75
1280  0298 cd0000        	call	_assert_failed
1282  029b 5b04          	addw	sp,#4
1283  029d               L051:
1284                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1286  029d 0d09          	tnz	(OFST+5,sp)
1287  029f 2706          	jreq	L451
1288  02a1 7b09          	ld	a,(OFST+5,sp)
1289  02a3 a101          	cp	a,#1
1290  02a5 2603          	jrne	L251
1291  02a7               L451:
1292  02a7 4f            	clr	a
1293  02a8 2010          	jra	L651
1294  02aa               L251:
1295  02aa ae013e        	ldw	x,#318
1296  02ad 89            	pushw	x
1297  02ae ae0000        	ldw	x,#0
1298  02b1 89            	pushw	x
1299  02b2 ae000c        	ldw	x,#L75
1300  02b5 cd0000        	call	_assert_failed
1302  02b8 5b04          	addw	sp,#4
1303  02ba               L651:
1304                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1306  02ba 0d0a          	tnz	(OFST+6,sp)
1307  02bc 2706          	jreq	L261
1308  02be 7b0a          	ld	a,(OFST+6,sp)
1309  02c0 a101          	cp	a,#1
1310  02c2 2603          	jrne	L061
1311  02c4               L261:
1312  02c4 4f            	clr	a
1313  02c5 2010          	jra	L461
1314  02c7               L061:
1315  02c7 ae013f        	ldw	x,#319
1316  02ca 89            	pushw	x
1317  02cb ae0000        	ldw	x,#0
1318  02ce 89            	pushw	x
1319  02cf ae000c        	ldw	x,#L75
1320  02d2 cd0000        	call	_assert_failed
1322  02d5 5b04          	addw	sp,#4
1323  02d7               L461:
1324                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1326  02d7 c650c3        	ld	a,20675
1327  02da 6b01          	ld	(OFST-3,sp),a
1328                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1330  02dc 7b05          	ld	a,(OFST+1,sp)
1331  02de a101          	cp	a,#1
1332  02e0 264b          	jrne	L744
1333                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1335  02e2 721250c5      	bset	20677,#1
1336                     ; 331     if (ITState != DISABLE)
1338  02e6 0d09          	tnz	(OFST+5,sp)
1339  02e8 2706          	jreq	L154
1340                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1342  02ea 721450c5      	bset	20677,#2
1344  02ee 2004          	jra	L354
1345  02f0               L154:
1346                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1348  02f0 721550c5      	bres	20677,#2
1349  02f4               L354:
1350                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1352  02f4 7b06          	ld	a,(OFST+2,sp)
1353  02f6 c750c4        	ld	20676,a
1355  02f9 2007          	jra	L164
1356  02fb               L554:
1357                     ; 346       DownCounter--;
1359  02fb 1e03          	ldw	x,(OFST-1,sp)
1360  02fd 1d0001        	subw	x,#1
1361  0300 1f03          	ldw	(OFST-1,sp),x
1362  0302               L164:
1363                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1365  0302 c650c5        	ld	a,20677
1366  0305 a501          	bcp	a,#1
1367  0307 2704          	jreq	L564
1369  0309 1e03          	ldw	x,(OFST-1,sp)
1370  030b 26ee          	jrne	L554
1371  030d               L564:
1372                     ; 349     if(DownCounter != 0)
1374  030d 1e03          	ldw	x,(OFST-1,sp)
1375  030f 2706          	jreq	L764
1376                     ; 351       Swif = SUCCESS;
1378  0311 a601          	ld	a,#1
1379  0313 6b02          	ld	(OFST-2,sp),a
1381  0315 2002          	jra	L374
1382  0317               L764:
1383                     ; 355       Swif = ERROR;
1385  0317 0f02          	clr	(OFST-2,sp)
1386  0319               L374:
1387                     ; 390   if(Swif != ERROR)
1389  0319 0d02          	tnz	(OFST-2,sp)
1390  031b 2767          	jreq	L715
1391                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1393  031d 0d0a          	tnz	(OFST+6,sp)
1394  031f 2645          	jrne	L125
1396  0321 7b01          	ld	a,(OFST-3,sp)
1397  0323 a1e1          	cp	a,#225
1398  0325 263f          	jrne	L125
1399                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1401  0327 721150c0      	bres	20672,#0
1403  032b 2057          	jra	L715
1404  032d               L744:
1405                     ; 361     if (ITState != DISABLE)
1407  032d 0d09          	tnz	(OFST+5,sp)
1408  032f 2706          	jreq	L574
1409                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1411  0331 721450c5      	bset	20677,#2
1413  0335 2004          	jra	L774
1414  0337               L574:
1415                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1417  0337 721550c5      	bres	20677,#2
1418  033b               L774:
1419                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1421  033b 7b06          	ld	a,(OFST+2,sp)
1422  033d c750c4        	ld	20676,a
1424  0340 2007          	jra	L505
1425  0342               L105:
1426                     ; 376       DownCounter--;
1428  0342 1e03          	ldw	x,(OFST-1,sp)
1429  0344 1d0001        	subw	x,#1
1430  0347 1f03          	ldw	(OFST-1,sp),x
1431  0349               L505:
1432                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1434  0349 c650c5        	ld	a,20677
1435  034c a508          	bcp	a,#8
1436  034e 2704          	jreq	L115
1438  0350 1e03          	ldw	x,(OFST-1,sp)
1439  0352 26ee          	jrne	L105
1440  0354               L115:
1441                     ; 379     if(DownCounter != 0)
1443  0354 1e03          	ldw	x,(OFST-1,sp)
1444  0356 270a          	jreq	L315
1445                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1447  0358 721250c5      	bset	20677,#1
1448                     ; 383       Swif = SUCCESS;
1450  035c a601          	ld	a,#1
1451  035e 6b02          	ld	(OFST-2,sp),a
1453  0360 20b7          	jra	L374
1454  0362               L315:
1455                     ; 387       Swif = ERROR;
1457  0362 0f02          	clr	(OFST-2,sp)
1458  0364 20b3          	jra	L374
1459  0366               L125:
1460                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1462  0366 0d0a          	tnz	(OFST+6,sp)
1463  0368 260c          	jrne	L525
1465  036a 7b01          	ld	a,(OFST-3,sp)
1466  036c a1d2          	cp	a,#210
1467  036e 2606          	jrne	L525
1468                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1470  0370 721750c0      	bres	20672,#3
1472  0374 200e          	jra	L715
1473  0376               L525:
1474                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1476  0376 0d0a          	tnz	(OFST+6,sp)
1477  0378 260a          	jrne	L715
1479  037a 7b01          	ld	a,(OFST-3,sp)
1480  037c a1b4          	cp	a,#180
1481  037e 2604          	jrne	L715
1482                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1484  0380 721150c1      	bres	20673,#0
1485  0384               L715:
1486                     ; 406   return(Swif);
1488  0384 7b02          	ld	a,(OFST-2,sp)
1491  0386 5b06          	addw	sp,#6
1492  0388 81            	ret
1631                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1631                     ; 416 {
1632                     	switch	.text
1633  0389               _CLK_HSIPrescalerConfig:
1635  0389 88            	push	a
1636       00000000      OFST:	set	0
1639                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1641  038a 4d            	tnz	a
1642  038b 270c          	jreq	L271
1643  038d a108          	cp	a,#8
1644  038f 2708          	jreq	L271
1645  0391 a110          	cp	a,#16
1646  0393 2704          	jreq	L271
1647  0395 a118          	cp	a,#24
1648  0397 2603          	jrne	L071
1649  0399               L271:
1650  0399 4f            	clr	a
1651  039a 2010          	jra	L471
1652  039c               L071:
1653  039c ae01a2        	ldw	x,#418
1654  039f 89            	pushw	x
1655  03a0 ae0000        	ldw	x,#0
1656  03a3 89            	pushw	x
1657  03a4 ae000c        	ldw	x,#L75
1658  03a7 cd0000        	call	_assert_failed
1660  03aa 5b04          	addw	sp,#4
1661  03ac               L471:
1662                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1664  03ac c650c6        	ld	a,20678
1665  03af a4e7          	and	a,#231
1666  03b1 c750c6        	ld	20678,a
1667                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1669  03b4 c650c6        	ld	a,20678
1670  03b7 1a01          	or	a,(OFST+1,sp)
1671  03b9 c750c6        	ld	20678,a
1672                     ; 425 }
1675  03bc 84            	pop	a
1676  03bd 81            	ret
1812                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1812                     ; 437 {
1813                     	switch	.text
1814  03be               _CLK_CCOConfig:
1816  03be 88            	push	a
1817       00000000      OFST:	set	0
1820                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1822  03bf 4d            	tnz	a
1823  03c0 2730          	jreq	L202
1824  03c2 a104          	cp	a,#4
1825  03c4 272c          	jreq	L202
1826  03c6 a102          	cp	a,#2
1827  03c8 2728          	jreq	L202
1828  03ca a108          	cp	a,#8
1829  03cc 2724          	jreq	L202
1830  03ce a10a          	cp	a,#10
1831  03d0 2720          	jreq	L202
1832  03d2 a10c          	cp	a,#12
1833  03d4 271c          	jreq	L202
1834  03d6 a10e          	cp	a,#14
1835  03d8 2718          	jreq	L202
1836  03da a110          	cp	a,#16
1837  03dc 2714          	jreq	L202
1838  03de a112          	cp	a,#18
1839  03e0 2710          	jreq	L202
1840  03e2 a114          	cp	a,#20
1841  03e4 270c          	jreq	L202
1842  03e6 a116          	cp	a,#22
1843  03e8 2708          	jreq	L202
1844  03ea a118          	cp	a,#24
1845  03ec 2704          	jreq	L202
1846  03ee a11a          	cp	a,#26
1847  03f0 2603          	jrne	L002
1848  03f2               L202:
1849  03f2 4f            	clr	a
1850  03f3 2010          	jra	L402
1851  03f5               L002:
1852  03f5 ae01b7        	ldw	x,#439
1853  03f8 89            	pushw	x
1854  03f9 ae0000        	ldw	x,#0
1855  03fc 89            	pushw	x
1856  03fd ae000c        	ldw	x,#L75
1857  0400 cd0000        	call	_assert_failed
1859  0403 5b04          	addw	sp,#4
1860  0405               L402:
1861                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1863  0405 c650c9        	ld	a,20681
1864  0408 a4e1          	and	a,#225
1865  040a c750c9        	ld	20681,a
1866                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1868  040d c650c9        	ld	a,20681
1869  0410 1a01          	or	a,(OFST+1,sp)
1870  0412 c750c9        	ld	20681,a
1871                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1873  0415 721050c9      	bset	20681,#0
1874                     ; 449 }
1877  0419 84            	pop	a
1878  041a 81            	ret
1944                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1944                     ; 460 {
1945                     	switch	.text
1946  041b               _CLK_ITConfig:
1948  041b 89            	pushw	x
1949       00000000      OFST:	set	0
1952                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1954  041c 9f            	ld	a,xl
1955  041d 4d            	tnz	a
1956  041e 2705          	jreq	L212
1957  0420 9f            	ld	a,xl
1958  0421 a101          	cp	a,#1
1959  0423 2603          	jrne	L012
1960  0425               L212:
1961  0425 4f            	clr	a
1962  0426 2010          	jra	L412
1963  0428               L012:
1964  0428 ae01ce        	ldw	x,#462
1965  042b 89            	pushw	x
1966  042c ae0000        	ldw	x,#0
1967  042f 89            	pushw	x
1968  0430 ae000c        	ldw	x,#L75
1969  0433 cd0000        	call	_assert_failed
1971  0436 5b04          	addw	sp,#4
1972  0438               L412:
1973                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1975  0438 7b01          	ld	a,(OFST+1,sp)
1976  043a a10c          	cp	a,#12
1977  043c 2706          	jreq	L022
1978  043e 7b01          	ld	a,(OFST+1,sp)
1979  0440 a11c          	cp	a,#28
1980  0442 2603          	jrne	L612
1981  0444               L022:
1982  0444 4f            	clr	a
1983  0445 2010          	jra	L222
1984  0447               L612:
1985  0447 ae01cf        	ldw	x,#463
1986  044a 89            	pushw	x
1987  044b ae0000        	ldw	x,#0
1988  044e 89            	pushw	x
1989  044f ae000c        	ldw	x,#L75
1990  0452 cd0000        	call	_assert_failed
1992  0455 5b04          	addw	sp,#4
1993  0457               L222:
1994                     ; 465   if (NewState != DISABLE)
1996  0457 0d02          	tnz	(OFST+2,sp)
1997  0459 271a          	jreq	L727
1998                     ; 467     switch (CLK_IT)
2000  045b 7b01          	ld	a,(OFST+1,sp)
2002                     ; 475     default:
2002                     ; 476       break;
2003  045d a00c          	sub	a,#12
2004  045f 270a          	jreq	L366
2005  0461 a010          	sub	a,#16
2006  0463 2624          	jrne	L537
2007                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
2007                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
2009  0465 721450c5      	bset	20677,#2
2010                     ; 471       break;
2012  0469 201e          	jra	L537
2013  046b               L366:
2014                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
2014                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
2016  046b 721450c8      	bset	20680,#2
2017                     ; 474       break;
2019  046f 2018          	jra	L537
2020  0471               L566:
2021                     ; 475     default:
2021                     ; 476       break;
2023  0471 2016          	jra	L537
2024  0473               L337:
2026  0473 2014          	jra	L537
2027  0475               L727:
2028                     ; 481     switch (CLK_IT)
2030  0475 7b01          	ld	a,(OFST+1,sp)
2032                     ; 489     default:
2032                     ; 490       break;
2033  0477 a00c          	sub	a,#12
2034  0479 270a          	jreq	L176
2035  047b a010          	sub	a,#16
2036  047d 260a          	jrne	L537
2037                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
2037                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
2039  047f 721550c5      	bres	20677,#2
2040                     ; 485       break;
2042  0483 2004          	jra	L537
2043  0485               L176:
2044                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
2044                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
2046  0485 721550c8      	bres	20680,#2
2047                     ; 488       break;
2048  0489               L537:
2049                     ; 493 }
2052  0489 85            	popw	x
2053  048a 81            	ret
2054  048b               L376:
2055                     ; 489     default:
2055                     ; 490       break;
2057  048b 20fc          	jra	L537
2058  048d               L147:
2059  048d 20fa          	jra	L537
2095                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
2095                     ; 501 {
2096                     	switch	.text
2097  048f               _CLK_SYSCLKConfig:
2099  048f 88            	push	a
2100       00000000      OFST:	set	0
2103                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
2105  0490 4d            	tnz	a
2106  0491 272c          	jreq	L032
2107  0493 a108          	cp	a,#8
2108  0495 2728          	jreq	L032
2109  0497 a110          	cp	a,#16
2110  0499 2724          	jreq	L032
2111  049b a118          	cp	a,#24
2112  049d 2720          	jreq	L032
2113  049f a180          	cp	a,#128
2114  04a1 271c          	jreq	L032
2115  04a3 a181          	cp	a,#129
2116  04a5 2718          	jreq	L032
2117  04a7 a182          	cp	a,#130
2118  04a9 2714          	jreq	L032
2119  04ab a183          	cp	a,#131
2120  04ad 2710          	jreq	L032
2121  04af a184          	cp	a,#132
2122  04b1 270c          	jreq	L032
2123  04b3 a185          	cp	a,#133
2124  04b5 2708          	jreq	L032
2125  04b7 a186          	cp	a,#134
2126  04b9 2704          	jreq	L032
2127  04bb a187          	cp	a,#135
2128  04bd 2603          	jrne	L622
2129  04bf               L032:
2130  04bf 4f            	clr	a
2131  04c0 2010          	jra	L232
2132  04c2               L622:
2133  04c2 ae01f7        	ldw	x,#503
2134  04c5 89            	pushw	x
2135  04c6 ae0000        	ldw	x,#0
2136  04c9 89            	pushw	x
2137  04ca ae000c        	ldw	x,#L75
2138  04cd cd0000        	call	_assert_failed
2140  04d0 5b04          	addw	sp,#4
2141  04d2               L232:
2142                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
2144  04d2 7b01          	ld	a,(OFST+1,sp)
2145  04d4 a580          	bcp	a,#128
2146  04d6 2614          	jrne	L167
2147                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
2149  04d8 c650c6        	ld	a,20678
2150  04db a4e7          	and	a,#231
2151  04dd c750c6        	ld	20678,a
2152                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
2154  04e0 7b01          	ld	a,(OFST+1,sp)
2155  04e2 a418          	and	a,#24
2156  04e4 ca50c6        	or	a,20678
2157  04e7 c750c6        	ld	20678,a
2159  04ea 2012          	jra	L367
2160  04ec               L167:
2161                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
2163  04ec c650c6        	ld	a,20678
2164  04ef a4f8          	and	a,#248
2165  04f1 c750c6        	ld	20678,a
2166                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2168  04f4 7b01          	ld	a,(OFST+1,sp)
2169  04f6 a407          	and	a,#7
2170  04f8 ca50c6        	or	a,20678
2171  04fb c750c6        	ld	20678,a
2172  04fe               L367:
2173                     ; 515 }
2176  04fe 84            	pop	a
2177  04ff 81            	ret
2234                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2234                     ; 524 {
2235                     	switch	.text
2236  0500               _CLK_SWIMConfig:
2238  0500 88            	push	a
2239       00000000      OFST:	set	0
2242                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2244  0501 4d            	tnz	a
2245  0502 2704          	jreq	L042
2246  0504 a101          	cp	a,#1
2247  0506 2603          	jrne	L632
2248  0508               L042:
2249  0508 4f            	clr	a
2250  0509 2010          	jra	L242
2251  050b               L632:
2252  050b ae020e        	ldw	x,#526
2253  050e 89            	pushw	x
2254  050f ae0000        	ldw	x,#0
2255  0512 89            	pushw	x
2256  0513 ae000c        	ldw	x,#L75
2257  0516 cd0000        	call	_assert_failed
2259  0519 5b04          	addw	sp,#4
2260  051b               L242:
2261                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2263  051b 0d01          	tnz	(OFST+1,sp)
2264  051d 2706          	jreq	L3101
2265                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2267  051f 721050cd      	bset	20685,#0
2269  0523 2004          	jra	L5101
2270  0525               L3101:
2271                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2273  0525 721150cd      	bres	20685,#0
2274  0529               L5101:
2275                     ; 538 }
2278  0529 84            	pop	a
2279  052a 81            	ret
2303                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2303                     ; 548 {
2304                     	switch	.text
2305  052b               _CLK_ClockSecuritySystemEnable:
2309                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2311  052b 721050c8      	bset	20680,#0
2312                     ; 551 }
2315  052f 81            	ret
2340                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2340                     ; 560 {
2341                     	switch	.text
2342  0530               _CLK_GetSYSCLKSource:
2346                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2348  0530 c650c3        	ld	a,20675
2351  0533 81            	ret
2414                     ; 569 uint32_t CLK_GetClockFreq(void)
2414                     ; 570 {
2415                     	switch	.text
2416  0534               _CLK_GetClockFreq:
2418  0534 5209          	subw	sp,#9
2419       00000009      OFST:	set	9
2422                     ; 571   uint32_t clockfrequency = 0;
2424                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2426                     ; 573   uint8_t tmp = 0, presc = 0;
2430                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2432  0536 c650c3        	ld	a,20675
2433  0539 6b09          	ld	(OFST+0,sp),a
2434                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2436  053b 7b09          	ld	a,(OFST+0,sp)
2437  053d a1e1          	cp	a,#225
2438  053f 2641          	jrne	L1701
2439                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2441  0541 c650c6        	ld	a,20678
2442  0544 a418          	and	a,#24
2443  0546 6b09          	ld	(OFST+0,sp),a
2444                     ; 581     tmp = (uint8_t)(tmp >> 3);
2446  0548 0409          	srl	(OFST+0,sp)
2447  054a 0409          	srl	(OFST+0,sp)
2448  054c 0409          	srl	(OFST+0,sp)
2449                     ; 582     presc = HSIDivFactor[tmp];
2451  054e 7b09          	ld	a,(OFST+0,sp)
2452  0550 5f            	clrw	x
2453  0551 97            	ld	xl,a
2454  0552 d60000        	ld	a,(_HSIDivFactor,x)
2455  0555 6b09          	ld	(OFST+0,sp),a
2456                     ; 583     clockfrequency = HSI_VALUE / presc;
2458  0557 7b09          	ld	a,(OFST+0,sp)
2459  0559 b703          	ld	c_lreg+3,a
2460  055b 3f02          	clr	c_lreg+2
2461  055d 3f01          	clr	c_lreg+1
2462  055f 3f00          	clr	c_lreg
2463  0561 96            	ldw	x,sp
2464  0562 1c0001        	addw	x,#OFST-8
2465  0565 cd0000        	call	c_rtol
2467  0568 ae2400        	ldw	x,#9216
2468  056b bf02          	ldw	c_lreg+2,x
2469  056d ae00f4        	ldw	x,#244
2470  0570 bf00          	ldw	c_lreg,x
2471  0572 96            	ldw	x,sp
2472  0573 1c0001        	addw	x,#OFST-8
2473  0576 cd0000        	call	c_ludv
2475  0579 96            	ldw	x,sp
2476  057a 1c0005        	addw	x,#OFST-4
2477  057d cd0000        	call	c_rtol
2480  0580 201c          	jra	L3701
2481  0582               L1701:
2482                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2484  0582 7b09          	ld	a,(OFST+0,sp)
2485  0584 a1d2          	cp	a,#210
2486  0586 260c          	jrne	L5701
2487                     ; 587     clockfrequency = LSI_VALUE;
2489  0588 aef400        	ldw	x,#62464
2490  058b 1f07          	ldw	(OFST-2,sp),x
2491  058d ae0001        	ldw	x,#1
2492  0590 1f05          	ldw	(OFST-4,sp),x
2494  0592 200a          	jra	L3701
2495  0594               L5701:
2496                     ; 591     clockfrequency = HSE_VALUE;
2498  0594 ae2400        	ldw	x,#9216
2499  0597 1f07          	ldw	(OFST-2,sp),x
2500  0599 ae00f4        	ldw	x,#244
2501  059c 1f05          	ldw	(OFST-4,sp),x
2502  059e               L3701:
2503                     ; 594   return((uint32_t)clockfrequency);
2505  059e 96            	ldw	x,sp
2506  059f 1c0005        	addw	x,#OFST-4
2507  05a2 cd0000        	call	c_ltor
2511  05a5 5b09          	addw	sp,#9
2512  05a7 81            	ret
2612                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2612                     ; 605 {
2613                     	switch	.text
2614  05a8               _CLK_AdjustHSICalibrationValue:
2616  05a8 88            	push	a
2617       00000000      OFST:	set	0
2620                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2622  05a9 4d            	tnz	a
2623  05aa 271c          	jreq	L652
2624  05ac a101          	cp	a,#1
2625  05ae 2718          	jreq	L652
2626  05b0 a102          	cp	a,#2
2627  05b2 2714          	jreq	L652
2628  05b4 a103          	cp	a,#3
2629  05b6 2710          	jreq	L652
2630  05b8 a104          	cp	a,#4
2631  05ba 270c          	jreq	L652
2632  05bc a105          	cp	a,#5
2633  05be 2708          	jreq	L652
2634  05c0 a106          	cp	a,#6
2635  05c2 2704          	jreq	L652
2636  05c4 a107          	cp	a,#7
2637  05c6 2603          	jrne	L452
2638  05c8               L652:
2639  05c8 4f            	clr	a
2640  05c9 2010          	jra	L062
2641  05cb               L452:
2642  05cb ae025f        	ldw	x,#607
2643  05ce 89            	pushw	x
2644  05cf ae0000        	ldw	x,#0
2645  05d2 89            	pushw	x
2646  05d3 ae000c        	ldw	x,#L75
2647  05d6 cd0000        	call	_assert_failed
2649  05d9 5b04          	addw	sp,#4
2650  05db               L062:
2651                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2653  05db c650cc        	ld	a,20684
2654  05de a4f8          	and	a,#248
2655  05e0 1a01          	or	a,(OFST+1,sp)
2656  05e2 c750cc        	ld	20684,a
2657                     ; 611 }
2660  05e5 84            	pop	a
2661  05e6 81            	ret
2685                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2685                     ; 623 {
2686                     	switch	.text
2687  05e7               _CLK_SYSCLKEmergencyClear:
2691                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2693  05e7 721150c5      	bres	20677,#0
2694                     ; 625 }
2697  05eb 81            	ret
2851                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2851                     ; 635 {
2852                     	switch	.text
2853  05ec               _CLK_GetFlagStatus:
2855  05ec 89            	pushw	x
2856  05ed 5203          	subw	sp,#3
2857       00000003      OFST:	set	3
2860                     ; 636   uint16_t statusreg = 0;
2862                     ; 637   uint8_t tmpreg = 0;
2864                     ; 638   FlagStatus bitstatus = RESET;
2866                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2868  05ef a30110        	cpw	x,#272
2869  05f2 2728          	jreq	L072
2870  05f4 a30102        	cpw	x,#258
2871  05f7 2723          	jreq	L072
2872  05f9 a30202        	cpw	x,#514
2873  05fc 271e          	jreq	L072
2874  05fe a30308        	cpw	x,#776
2875  0601 2719          	jreq	L072
2876  0603 a30301        	cpw	x,#769
2877  0606 2714          	jreq	L072
2878  0608 a30408        	cpw	x,#1032
2879  060b 270f          	jreq	L072
2880  060d a30402        	cpw	x,#1026
2881  0610 270a          	jreq	L072
2882  0612 a30504        	cpw	x,#1284
2883  0615 2705          	jreq	L072
2884  0617 a30502        	cpw	x,#1282
2885  061a 2603          	jrne	L662
2886  061c               L072:
2887  061c 4f            	clr	a
2888  061d 2010          	jra	L272
2889  061f               L662:
2890  061f ae0281        	ldw	x,#641
2891  0622 89            	pushw	x
2892  0623 ae0000        	ldw	x,#0
2893  0626 89            	pushw	x
2894  0627 ae000c        	ldw	x,#L75
2895  062a cd0000        	call	_assert_failed
2897  062d 5b04          	addw	sp,#4
2898  062f               L272:
2899                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2901  062f 7b04          	ld	a,(OFST+1,sp)
2902  0631 97            	ld	xl,a
2903  0632 7b05          	ld	a,(OFST+2,sp)
2904  0634 9f            	ld	a,xl
2905  0635 a4ff          	and	a,#255
2906  0637 97            	ld	xl,a
2907  0638 4f            	clr	a
2908  0639 02            	rlwa	x,a
2909  063a 1f01          	ldw	(OFST-2,sp),x
2910  063c 01            	rrwa	x,a
2911                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2913  063d 1e01          	ldw	x,(OFST-2,sp)
2914  063f a30100        	cpw	x,#256
2915  0642 2607          	jrne	L3421
2916                     ; 649     tmpreg = CLK->ICKR;
2918  0644 c650c0        	ld	a,20672
2919  0647 6b03          	ld	(OFST+0,sp),a
2921  0649 202f          	jra	L5421
2922  064b               L3421:
2923                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2925  064b 1e01          	ldw	x,(OFST-2,sp)
2926  064d a30200        	cpw	x,#512
2927  0650 2607          	jrne	L7421
2928                     ; 653     tmpreg = CLK->ECKR;
2930  0652 c650c1        	ld	a,20673
2931  0655 6b03          	ld	(OFST+0,sp),a
2933  0657 2021          	jra	L5421
2934  0659               L7421:
2935                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2937  0659 1e01          	ldw	x,(OFST-2,sp)
2938  065b a30300        	cpw	x,#768
2939  065e 2607          	jrne	L3521
2940                     ; 657     tmpreg = CLK->SWCR;
2942  0660 c650c5        	ld	a,20677
2943  0663 6b03          	ld	(OFST+0,sp),a
2945  0665 2013          	jra	L5421
2946  0667               L3521:
2947                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2949  0667 1e01          	ldw	x,(OFST-2,sp)
2950  0669 a30400        	cpw	x,#1024
2951  066c 2607          	jrne	L7521
2952                     ; 661     tmpreg = CLK->CSSR;
2954  066e c650c8        	ld	a,20680
2955  0671 6b03          	ld	(OFST+0,sp),a
2957  0673 2005          	jra	L5421
2958  0675               L7521:
2959                     ; 665     tmpreg = CLK->CCOR;
2961  0675 c650c9        	ld	a,20681
2962  0678 6b03          	ld	(OFST+0,sp),a
2963  067a               L5421:
2964                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2966  067a 7b05          	ld	a,(OFST+2,sp)
2967  067c 1503          	bcp	a,(OFST+0,sp)
2968  067e 2706          	jreq	L3621
2969                     ; 670     bitstatus = SET;
2971  0680 a601          	ld	a,#1
2972  0682 6b03          	ld	(OFST+0,sp),a
2974  0684 2002          	jra	L5621
2975  0686               L3621:
2976                     ; 674     bitstatus = RESET;
2978  0686 0f03          	clr	(OFST+0,sp)
2979  0688               L5621:
2980                     ; 678   return((FlagStatus)bitstatus);
2982  0688 7b03          	ld	a,(OFST+0,sp)
2985  068a 5b05          	addw	sp,#5
2986  068c 81            	ret
3033                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
3033                     ; 688 {
3034                     	switch	.text
3035  068d               _CLK_GetITStatus:
3037  068d 88            	push	a
3038  068e 88            	push	a
3039       00000001      OFST:	set	1
3042                     ; 689   ITStatus bitstatus = RESET;
3044                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
3046  068f a10c          	cp	a,#12
3047  0691 2704          	jreq	L003
3048  0693 a11c          	cp	a,#28
3049  0695 2603          	jrne	L672
3050  0697               L003:
3051  0697 4f            	clr	a
3052  0698 2010          	jra	L203
3053  069a               L672:
3054  069a ae02b4        	ldw	x,#692
3055  069d 89            	pushw	x
3056  069e ae0000        	ldw	x,#0
3057  06a1 89            	pushw	x
3058  06a2 ae000c        	ldw	x,#L75
3059  06a5 cd0000        	call	_assert_failed
3061  06a8 5b04          	addw	sp,#4
3062  06aa               L203:
3063                     ; 694   if (CLK_IT == CLK_IT_SWIF)
3065  06aa 7b02          	ld	a,(OFST+1,sp)
3066  06ac a11c          	cp	a,#28
3067  06ae 2613          	jrne	L1131
3068                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3070  06b0 c650c5        	ld	a,20677
3071  06b3 1402          	and	a,(OFST+1,sp)
3072  06b5 a10c          	cp	a,#12
3073  06b7 2606          	jrne	L3131
3074                     ; 699       bitstatus = SET;
3076  06b9 a601          	ld	a,#1
3077  06bb 6b01          	ld	(OFST+0,sp),a
3079  06bd 2015          	jra	L7131
3080  06bf               L3131:
3081                     ; 703       bitstatus = RESET;
3083  06bf 0f01          	clr	(OFST+0,sp)
3084  06c1 2011          	jra	L7131
3085  06c3               L1131:
3086                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
3088  06c3 c650c8        	ld	a,20680
3089  06c6 1402          	and	a,(OFST+1,sp)
3090  06c8 a10c          	cp	a,#12
3091  06ca 2606          	jrne	L1231
3092                     ; 711       bitstatus = SET;
3094  06cc a601          	ld	a,#1
3095  06ce 6b01          	ld	(OFST+0,sp),a
3097  06d0 2002          	jra	L7131
3098  06d2               L1231:
3099                     ; 715       bitstatus = RESET;
3101  06d2 0f01          	clr	(OFST+0,sp)
3102  06d4               L7131:
3103                     ; 720   return bitstatus;
3105  06d4 7b01          	ld	a,(OFST+0,sp)
3108  06d6 85            	popw	x
3109  06d7 81            	ret
3146                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
3146                     ; 730 {
3147                     	switch	.text
3148  06d8               _CLK_ClearITPendingBit:
3150  06d8 88            	push	a
3151       00000000      OFST:	set	0
3154                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
3156  06d9 a10c          	cp	a,#12
3157  06db 2704          	jreq	L013
3158  06dd a11c          	cp	a,#28
3159  06df 2603          	jrne	L603
3160  06e1               L013:
3161  06e1 4f            	clr	a
3162  06e2 2010          	jra	L213
3163  06e4               L603:
3164  06e4 ae02dc        	ldw	x,#732
3165  06e7 89            	pushw	x
3166  06e8 ae0000        	ldw	x,#0
3167  06eb 89            	pushw	x
3168  06ec ae000c        	ldw	x,#L75
3169  06ef cd0000        	call	_assert_failed
3171  06f2 5b04          	addw	sp,#4
3172  06f4               L213:
3173                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
3175  06f4 7b01          	ld	a,(OFST+1,sp)
3176  06f6 a10c          	cp	a,#12
3177  06f8 2606          	jrne	L3431
3178                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
3180  06fa 721750c8      	bres	20680,#3
3182  06fe 2004          	jra	L5431
3183  0700               L3431:
3184                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
3186  0700 721750c5      	bres	20677,#3
3187  0704               L5431:
3188                     ; 745 }
3191  0704 84            	pop	a
3192  0705 81            	ret
3227                     	xdef	_CLKPrescTable
3228                     	xdef	_HSIDivFactor
3229                     	xdef	_CLK_ClearITPendingBit
3230                     	xdef	_CLK_GetITStatus
3231                     	xdef	_CLK_GetFlagStatus
3232                     	xdef	_CLK_GetSYSCLKSource
3233                     	xdef	_CLK_GetClockFreq
3234                     	xdef	_CLK_AdjustHSICalibrationValue
3235                     	xdef	_CLK_SYSCLKEmergencyClear
3236                     	xdef	_CLK_ClockSecuritySystemEnable
3237                     	xdef	_CLK_SWIMConfig
3238                     	xdef	_CLK_SYSCLKConfig
3239                     	xdef	_CLK_ITConfig
3240                     	xdef	_CLK_CCOConfig
3241                     	xdef	_CLK_HSIPrescalerConfig
3242                     	xdef	_CLK_ClockSwitchConfig
3243                     	xdef	_CLK_PeripheralClockConfig
3244                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3245                     	xdef	_CLK_FastHaltWakeUpCmd
3246                     	xdef	_CLK_ClockSwitchCmd
3247                     	xdef	_CLK_CCOCmd
3248                     	xdef	_CLK_LSICmd
3249                     	xdef	_CLK_HSICmd
3250                     	xdef	_CLK_HSECmd
3251                     	xdef	_CLK_DeInit
3252                     	xref	_assert_failed
3253                     	switch	.const
3254  000c               L75:
3255  000c 6c6962726172  	dc.b	"library\stm8s_clk."
3256  001e 6300          	dc.b	"c",0
3257                     	xref.b	c_lreg
3258                     	xref.b	c_x
3278                     	xref	c_ltor
3279                     	xref	c_ludv
3280                     	xref	c_rtol
3281                     	end
