   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  14                     .const:	section	.text
  15  0000               _APR_Array:
  16  0000 00            	dc.b	0
  17  0001 1e            	dc.b	30
  18  0002 1e            	dc.b	30
  19  0003 1e            	dc.b	30
  20  0004 1e            	dc.b	30
  21  0005 1e            	dc.b	30
  22  0006 1e            	dc.b	30
  23  0007 1e            	dc.b	30
  24  0008 1e            	dc.b	30
  25  0009 1e            	dc.b	30
  26  000a 1e            	dc.b	30
  27  000b 1e            	dc.b	30
  28  000c 1e            	dc.b	30
  29  000d 3d            	dc.b	61
  30  000e 17            	dc.b	23
  31  000f 17            	dc.b	23
  32  0010 3e            	dc.b	62
  33  0011               _TBR_Array:
  34  0011 00            	dc.b	0
  35  0012 01            	dc.b	1
  36  0013 02            	dc.b	2
  37  0014 03            	dc.b	3
  38  0015 04            	dc.b	4
  39  0016 05            	dc.b	5
  40  0017 06            	dc.b	6
  41  0018 07            	dc.b	7
  42  0019 08            	dc.b	8
  43  001a 09            	dc.b	9
  44  001b 0a            	dc.b	10
  45  001c 0b            	dc.b	11
  46  001d 0c            	dc.b	12
  47  001e 0c            	dc.b	12
  48  001f 0e            	dc.b	14
  49  0020 0f            	dc.b	15
  50  0021 0f            	dc.b	15
  79                     ; 73 void AWU_DeInit(void)
  79                     ; 74 {
  81                     	switch	.text
  82  0000               _AWU_DeInit:
  86                     ; 75   AWU->CSR = AWU_CSR_RESET_VALUE;
  88  0000 725f50f0      	clr	20720
  89                     ; 76   AWU->APR = AWU_APR_RESET_VALUE;
  91  0004 353f50f1      	mov	20721,#63
  92                     ; 77   AWU->TBR = AWU_TBR_RESET_VALUE;
  94  0008 725f50f2      	clr	20722
  95                     ; 78 }
  98  000c 81            	ret
 261                     ; 88 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 261                     ; 89 {
 262                     	switch	.text
 263  000d               _AWU_Init:
 265  000d 88            	push	a
 266       00000000      OFST:	set	0
 269                     ; 91   assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 271  000e 4d            	tnz	a
 272  000f 2740          	jreq	L21
 273  0011 a101          	cp	a,#1
 274  0013 273c          	jreq	L21
 275  0015 a102          	cp	a,#2
 276  0017 2738          	jreq	L21
 277  0019 a103          	cp	a,#3
 278  001b 2734          	jreq	L21
 279  001d a104          	cp	a,#4
 280  001f 2730          	jreq	L21
 281  0021 a105          	cp	a,#5
 282  0023 272c          	jreq	L21
 283  0025 a106          	cp	a,#6
 284  0027 2728          	jreq	L21
 285  0029 a107          	cp	a,#7
 286  002b 2724          	jreq	L21
 287  002d a108          	cp	a,#8
 288  002f 2720          	jreq	L21
 289  0031 a109          	cp	a,#9
 290  0033 271c          	jreq	L21
 291  0035 a10a          	cp	a,#10
 292  0037 2718          	jreq	L21
 293  0039 a10b          	cp	a,#11
 294  003b 2714          	jreq	L21
 295  003d a10c          	cp	a,#12
 296  003f 2710          	jreq	L21
 297  0041 a10d          	cp	a,#13
 298  0043 270c          	jreq	L21
 299  0045 a10e          	cp	a,#14
 300  0047 2708          	jreq	L21
 301  0049 a10f          	cp	a,#15
 302  004b 2704          	jreq	L21
 303  004d a110          	cp	a,#16
 304  004f 2603          	jrne	L01
 305  0051               L21:
 306  0051 4f            	clr	a
 307  0052 2010          	jra	L41
 308  0054               L01:
 309  0054 ae005b        	ldw	x,#91
 310  0057 89            	pushw	x
 311  0058 ae0000        	ldw	x,#0
 312  005b 89            	pushw	x
 313  005c ae002e        	ldw	x,#L501
 314  005f cd0000        	call	_assert_failed
 316  0062 5b04          	addw	sp,#4
 317  0064               L41:
 318                     ; 94   AWU->CSR |= AWU_CSR_AWUEN;
 320  0064 721850f0      	bset	20720,#4
 321                     ; 97   AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 323  0068 c650f2        	ld	a,20722
 324  006b a4f0          	and	a,#240
 325  006d c750f2        	ld	20722,a
 326                     ; 98   AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 328  0070 7b01          	ld	a,(OFST+1,sp)
 329  0072 5f            	clrw	x
 330  0073 97            	ld	xl,a
 331  0074 c650f2        	ld	a,20722
 332  0077 da0011        	or	a,(_TBR_Array,x)
 333  007a c750f2        	ld	20722,a
 334                     ; 101   AWU->APR &= (uint8_t)(~AWU_APR_APR);
 336  007d c650f1        	ld	a,20721
 337  0080 a4c0          	and	a,#192
 338  0082 c750f1        	ld	20721,a
 339                     ; 102   AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 341  0085 7b01          	ld	a,(OFST+1,sp)
 342  0087 5f            	clrw	x
 343  0088 97            	ld	xl,a
 344  0089 c650f1        	ld	a,20721
 345  008c da0000        	or	a,(_APR_Array,x)
 346  008f c750f1        	ld	20721,a
 347                     ; 103 }
 350  0092 84            	pop	a
 351  0093 81            	ret
 406                     ; 112 void AWU_Cmd(FunctionalState NewState)
 406                     ; 113 {
 407                     	switch	.text
 408  0094               _AWU_Cmd:
 412                     ; 114   if (NewState != DISABLE)
 414  0094 4d            	tnz	a
 415  0095 2706          	jreq	L531
 416                     ; 117     AWU->CSR |= AWU_CSR_AWUEN;
 418  0097 721850f0      	bset	20720,#4
 420  009b 2004          	jra	L731
 421  009d               L531:
 422                     ; 122     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 424  009d 721950f0      	bres	20720,#4
 425  00a1               L731:
 426                     ; 124 }
 429  00a1 81            	ret
 483                     	switch	.const
 484  0022               L42:
 485  0022 0001adb0      	dc.l	110000
 486  0026               L62:
 487  0026 000249f1      	dc.l	150001
 488  002a               L23:
 489  002a 000003e8      	dc.l	1000
 490                     ; 139 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 490                     ; 140 {
 491                     	switch	.text
 492  00a2               _AWU_LSICalibrationConfig:
 494  00a2 5206          	subw	sp,#6
 495       00000006      OFST:	set	6
 498                     ; 141   uint16_t lsifreqkhz = 0x0;
 500                     ; 142   uint16_t A = 0x0;
 502                     ; 145   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 504  00a4 96            	ldw	x,sp
 505  00a5 1c0009        	addw	x,#OFST+3
 506  00a8 cd0000        	call	c_ltor
 508  00ab ae0022        	ldw	x,#L42
 509  00ae cd0000        	call	c_lcmp
 511  00b1 2512          	jrult	L22
 512  00b3 96            	ldw	x,sp
 513  00b4 1c0009        	addw	x,#OFST+3
 514  00b7 cd0000        	call	c_ltor
 516  00ba ae0026        	ldw	x,#L62
 517  00bd cd0000        	call	c_lcmp
 519  00c0 2403          	jruge	L22
 520  00c2 4f            	clr	a
 521  00c3 2010          	jra	L03
 522  00c5               L22:
 523  00c5 ae0091        	ldw	x,#145
 524  00c8 89            	pushw	x
 525  00c9 ae0000        	ldw	x,#0
 526  00cc 89            	pushw	x
 527  00cd ae002e        	ldw	x,#L501
 528  00d0 cd0000        	call	_assert_failed
 530  00d3 5b04          	addw	sp,#4
 531  00d5               L03:
 532                     ; 147   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 534  00d5 96            	ldw	x,sp
 535  00d6 1c0009        	addw	x,#OFST+3
 536  00d9 cd0000        	call	c_ltor
 538  00dc ae002a        	ldw	x,#L23
 539  00df cd0000        	call	c_ludv
 541  00e2 be02          	ldw	x,c_lreg+2
 542  00e4 1f03          	ldw	(OFST-3,sp),x
 543                     ; 151   A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 545  00e6 1e03          	ldw	x,(OFST-3,sp)
 546  00e8 54            	srlw	x
 547  00e9 54            	srlw	x
 548  00ea 1f05          	ldw	(OFST-1,sp),x
 549                     ; 153   if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 551  00ec 1e05          	ldw	x,(OFST-1,sp)
 552  00ee 58            	sllw	x
 553  00ef 58            	sllw	x
 554  00f0 1f01          	ldw	(OFST-5,sp),x
 555  00f2 1e03          	ldw	x,(OFST-3,sp)
 556  00f4 72f001        	subw	x,(OFST-5,sp)
 557  00f7 1605          	ldw	y,(OFST-1,sp)
 558  00f9 9058          	sllw	y
 559  00fb 905c          	incw	y
 560  00fd cd0000        	call	c_imul
 562  0100 1605          	ldw	y,(OFST-1,sp)
 563  0102 9058          	sllw	y
 564  0104 9058          	sllw	y
 565  0106 bf00          	ldw	c_x,x
 566  0108 90b300        	cpw	y,c_x
 567  010b 2509          	jrult	L761
 568                     ; 155     AWU->APR = (uint8_t)(A - 2U);
 570  010d 7b06          	ld	a,(OFST+0,sp)
 571  010f a002          	sub	a,#2
 572  0111 c750f1        	ld	20721,a
 574  0114 2006          	jra	L171
 575  0116               L761:
 576                     ; 159     AWU->APR = (uint8_t)(A - 1U);
 578  0116 7b06          	ld	a,(OFST+0,sp)
 579  0118 4a            	dec	a
 580  0119 c750f1        	ld	20721,a
 581  011c               L171:
 582                     ; 161 }
 585  011c 5b06          	addw	sp,#6
 586  011e 81            	ret
 609                     ; 168 void AWU_IdleModeEnable(void)
 609                     ; 169 {
 610                     	switch	.text
 611  011f               _AWU_IdleModeEnable:
 615                     ; 171   AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 617  011f 721950f0      	bres	20720,#4
 618                     ; 174   AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 620  0123 35f050f2      	mov	20722,#240
 621                     ; 175 }
 624  0127 81            	ret
 668                     ; 183 FlagStatus AWU_GetFlagStatus(void)
 668                     ; 184 {
 669                     	switch	.text
 670  0128               _AWU_GetFlagStatus:
 674                     ; 185   return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 676  0128 c650f0        	ld	a,20720
 677  012b a520          	bcp	a,#32
 678  012d 2603          	jrne	L04
 679  012f 4f            	clr	a
 680  0130 2002          	jra	L24
 681  0132               L04:
 682  0132 a601          	ld	a,#1
 683  0134               L24:
 686  0134 81            	ret
 721                     	xdef	_TBR_Array
 722                     	xdef	_APR_Array
 723                     	xdef	_AWU_GetFlagStatus
 724                     	xdef	_AWU_IdleModeEnable
 725                     	xdef	_AWU_LSICalibrationConfig
 726                     	xdef	_AWU_Cmd
 727                     	xdef	_AWU_Init
 728                     	xdef	_AWU_DeInit
 729                     	xref	_assert_failed
 730                     	switch	.const
 731  002e               L501:
 732  002e 6c6962726172  	dc.b	"library\stm8s_awu."
 733  0040 6300          	dc.b	"c",0
 734                     	xref.b	c_lreg
 735                     	xref.b	c_x
 755                     	xref	c_imul
 756                     	xref	c_ludv
 757                     	xref	c_lcmp
 758                     	xref	c_ltor
 759                     	end
