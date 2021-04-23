   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 54 void BEEP_DeInit(void)
  42                     ; 55 {
  44                     	switch	.text
  45  0000               _BEEP_DeInit:
  49                     ; 56   BEEP->CSR = BEEP_CSR_RESET_VALUE;
  51  0000 351f50f3      	mov	20723,#31
  52                     ; 57 }
  55  0004 81            	ret
 121                     ; 67 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 121                     ; 68 {
 122                     	switch	.text
 123  0005               _BEEP_Init:
 125  0005 88            	push	a
 126       00000000      OFST:	set	0
 129                     ; 70   assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 131  0006 4d            	tnz	a
 132  0007 2708          	jreq	L21
 133  0009 a140          	cp	a,#64
 134  000b 2704          	jreq	L21
 135  000d a180          	cp	a,#128
 136  000f 2603          	jrne	L01
 137  0011               L21:
 138  0011 4f            	clr	a
 139  0012 2010          	jra	L41
 140  0014               L01:
 141  0014 ae0046        	ldw	x,#70
 142  0017 89            	pushw	x
 143  0018 ae0000        	ldw	x,#0
 144  001b 89            	pushw	x
 145  001c ae000c        	ldw	x,#L15
 146  001f cd0000        	call	_assert_failed
 148  0022 5b04          	addw	sp,#4
 149  0024               L41:
 150                     ; 73   if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 152  0024 c650f3        	ld	a,20723
 153  0027 a41f          	and	a,#31
 154  0029 a11f          	cp	a,#31
 155  002b 2610          	jrne	L35
 156                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 158  002d c650f3        	ld	a,20723
 159  0030 a4e0          	and	a,#224
 160  0032 c750f3        	ld	20723,a
 161                     ; 76     BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 163  0035 c650f3        	ld	a,20723
 164  0038 aa0b          	or	a,#11
 165  003a c750f3        	ld	20723,a
 166  003d               L35:
 167                     ; 80   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 169  003d c650f3        	ld	a,20723
 170  0040 a43f          	and	a,#63
 171  0042 c750f3        	ld	20723,a
 172                     ; 81   BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 174  0045 c650f3        	ld	a,20723
 175  0048 1a01          	or	a,(OFST+1,sp)
 176  004a c750f3        	ld	20723,a
 177                     ; 82 }
 180  004d 84            	pop	a
 181  004e 81            	ret
 236                     ; 91 void BEEP_Cmd(FunctionalState NewState)
 236                     ; 92 {
 237                     	switch	.text
 238  004f               _BEEP_Cmd:
 242                     ; 93   if (NewState != DISABLE)
 244  004f 4d            	tnz	a
 245  0050 2706          	jreq	L301
 246                     ; 96     BEEP->CSR |= BEEP_CSR_BEEPEN;
 248  0052 721a50f3      	bset	20723,#5
 250  0056 2004          	jra	L501
 251  0058               L301:
 252                     ; 101     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 254  0058 721b50f3      	bres	20723,#5
 255  005c               L501:
 256                     ; 103 }
 259  005c 81            	ret
 313                     .const:	section	.text
 314  0000               L42:
 315  0000 0001adb0      	dc.l	110000
 316  0004               L62:
 317  0004 000249f1      	dc.l	150001
 318  0008               L23:
 319  0008 000003e8      	dc.l	1000
 320                     ; 118 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 320                     ; 119 {
 321                     	switch	.text
 322  005d               _BEEP_LSICalibrationConfig:
 324  005d 5206          	subw	sp,#6
 325       00000006      OFST:	set	6
 328                     ; 124   assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 330  005f 96            	ldw	x,sp
 331  0060 1c0009        	addw	x,#OFST+3
 332  0063 cd0000        	call	c_ltor
 334  0066 ae0000        	ldw	x,#L42
 335  0069 cd0000        	call	c_lcmp
 337  006c 2512          	jrult	L22
 338  006e 96            	ldw	x,sp
 339  006f 1c0009        	addw	x,#OFST+3
 340  0072 cd0000        	call	c_ltor
 342  0075 ae0004        	ldw	x,#L62
 343  0078 cd0000        	call	c_lcmp
 345  007b 2403          	jruge	L22
 346  007d 4f            	clr	a
 347  007e 2010          	jra	L03
 348  0080               L22:
 349  0080 ae007c        	ldw	x,#124
 350  0083 89            	pushw	x
 351  0084 ae0000        	ldw	x,#0
 352  0087 89            	pushw	x
 353  0088 ae000c        	ldw	x,#L15
 354  008b cd0000        	call	_assert_failed
 356  008e 5b04          	addw	sp,#4
 357  0090               L03:
 358                     ; 126   lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 360  0090 96            	ldw	x,sp
 361  0091 1c0009        	addw	x,#OFST+3
 362  0094 cd0000        	call	c_ltor
 364  0097 ae0008        	ldw	x,#L23
 365  009a cd0000        	call	c_ludv
 367  009d be02          	ldw	x,c_lreg+2
 368  009f 1f03          	ldw	(OFST-3,sp),x
 369                     ; 130   BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 371  00a1 c650f3        	ld	a,20723
 372  00a4 a4e0          	and	a,#224
 373  00a6 c750f3        	ld	20723,a
 374                     ; 132   A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 376  00a9 1e03          	ldw	x,(OFST-3,sp)
 377  00ab 54            	srlw	x
 378  00ac 54            	srlw	x
 379  00ad 54            	srlw	x
 380  00ae 1f05          	ldw	(OFST-1,sp),x
 381                     ; 134   if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 383  00b0 1e05          	ldw	x,(OFST-1,sp)
 384  00b2 58            	sllw	x
 385  00b3 58            	sllw	x
 386  00b4 58            	sllw	x
 387  00b5 1f01          	ldw	(OFST-5,sp),x
 388  00b7 1e03          	ldw	x,(OFST-3,sp)
 389  00b9 72f001        	subw	x,(OFST-5,sp)
 390  00bc 1605          	ldw	y,(OFST-1,sp)
 391  00be 9058          	sllw	y
 392  00c0 905c          	incw	y
 393  00c2 cd0000        	call	c_imul
 395  00c5 1605          	ldw	y,(OFST-1,sp)
 396  00c7 9058          	sllw	y
 397  00c9 9058          	sllw	y
 398  00cb 9058          	sllw	y
 399  00cd bf00          	ldw	c_x,x
 400  00cf 90b300        	cpw	y,c_x
 401  00d2 250c          	jrult	L531
 402                     ; 136     BEEP->CSR |= (uint8_t)(A - 2U);
 404  00d4 7b06          	ld	a,(OFST+0,sp)
 405  00d6 a002          	sub	a,#2
 406  00d8 ca50f3        	or	a,20723
 407  00db c750f3        	ld	20723,a
 409  00de 2009          	jra	L731
 410  00e0               L531:
 411                     ; 140     BEEP->CSR |= (uint8_t)(A - 1U);
 413  00e0 7b06          	ld	a,(OFST+0,sp)
 414  00e2 4a            	dec	a
 415  00e3 ca50f3        	or	a,20723
 416  00e6 c750f3        	ld	20723,a
 417  00e9               L731:
 418                     ; 142 }
 421  00e9 5b06          	addw	sp,#6
 422  00eb 81            	ret
 435                     	xdef	_BEEP_LSICalibrationConfig
 436                     	xdef	_BEEP_Cmd
 437                     	xdef	_BEEP_Init
 438                     	xdef	_BEEP_DeInit
 439                     	xref	_assert_failed
 440                     	switch	.const
 441  000c               L15:
 442  000c 6c6962726172  	dc.b	"library\stm8s_beep"
 443  001e 2e6300        	dc.b	".c",0
 444                     	xref.b	c_lreg
 445                     	xref.b	c_x
 465                     	xref	c_imul
 466                     	xref	c_ludv
 467                     	xref	c_lcmp
 468                     	xref	c_ltor
 469                     	end
