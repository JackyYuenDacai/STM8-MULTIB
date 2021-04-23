   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 67 void I2C_DeInit(void)
  42                     ; 68 {
  44                     	switch	.text
  45  0000               _I2C_DeInit:
  49                     ; 69   I2C->CR1 = I2C_CR1_RESET_VALUE;
  51  0000 725f5210      	clr	21008
  52                     ; 70   I2C->CR2 = I2C_CR2_RESET_VALUE;
  54  0004 725f5211      	clr	21009
  55                     ; 71   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  57  0008 725f5212      	clr	21010
  58                     ; 72   I2C->OARL = I2C_OARL_RESET_VALUE;
  60  000c 725f5213      	clr	21011
  61                     ; 73   I2C->OARH = I2C_OARH_RESET_VALUE;
  63  0010 725f5214      	clr	21012
  64                     ; 74   I2C->ITR = I2C_ITR_RESET_VALUE;
  66  0014 725f521a      	clr	21018
  67                     ; 75   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  69  0018 725f521b      	clr	21019
  70                     ; 76   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  72  001c 725f521c      	clr	21020
  73                     ; 77   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  75  0020 3502521d      	mov	21021,#2
  76                     ; 78 }
  79  0024 81            	ret
 259                     .const:	section	.text
 260  0000               L44:
 261  0000 00061a81      	dc.l	400001
 262  0004               L05:
 263  0004 000186a1      	dc.l	100001
 264  0008               L25:
 265  0008 000f4240      	dc.l	1000000
 266                     ; 96 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 266                     ; 97               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 266                     ; 98               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 266                     ; 99 {
 267                     	switch	.text
 268  0025               _I2C_Init:
 270  0025 5209          	subw	sp,#9
 271       00000009      OFST:	set	9
 274                     ; 100   uint16_t result = 0x0004;
 276                     ; 101   uint16_t tmpval = 0;
 278                     ; 102   uint8_t tmpccrh = 0;
 280  0027 0f07          	clr	(OFST-2,sp)
 281                     ; 105   assert_param(IS_I2C_ACK_OK(Ack));
 283  0029 0d13          	tnz	(OFST+10,sp)
 284  002b 270c          	jreq	L21
 285  002d 7b13          	ld	a,(OFST+10,sp)
 286  002f a101          	cp	a,#1
 287  0031 2706          	jreq	L21
 288  0033 7b13          	ld	a,(OFST+10,sp)
 289  0035 a102          	cp	a,#2
 290  0037 2603          	jrne	L01
 291  0039               L21:
 292  0039 4f            	clr	a
 293  003a 2010          	jra	L41
 294  003c               L01:
 295  003c ae0069        	ldw	x,#105
 296  003f 89            	pushw	x
 297  0040 ae0000        	ldw	x,#0
 298  0043 89            	pushw	x
 299  0044 ae000c        	ldw	x,#L131
 300  0047 cd0000        	call	_assert_failed
 302  004a 5b04          	addw	sp,#4
 303  004c               L41:
 304                     ; 106   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 306  004c 0d14          	tnz	(OFST+11,sp)
 307  004e 2706          	jreq	L02
 308  0050 7b14          	ld	a,(OFST+11,sp)
 309  0052 a180          	cp	a,#128
 310  0054 2603          	jrne	L61
 311  0056               L02:
 312  0056 4f            	clr	a
 313  0057 2010          	jra	L22
 314  0059               L61:
 315  0059 ae006a        	ldw	x,#106
 316  005c 89            	pushw	x
 317  005d ae0000        	ldw	x,#0
 318  0060 89            	pushw	x
 319  0061 ae000c        	ldw	x,#L131
 320  0064 cd0000        	call	_assert_failed
 322  0067 5b04          	addw	sp,#4
 323  0069               L22:
 324                     ; 107   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 326  0069 1e10          	ldw	x,(OFST+7,sp)
 327  006b a30400        	cpw	x,#1024
 328  006e 2403          	jruge	L42
 329  0070 4f            	clr	a
 330  0071 2010          	jra	L62
 331  0073               L42:
 332  0073 ae006b        	ldw	x,#107
 333  0076 89            	pushw	x
 334  0077 ae0000        	ldw	x,#0
 335  007a 89            	pushw	x
 336  007b ae000c        	ldw	x,#L131
 337  007e cd0000        	call	_assert_failed
 339  0081 5b04          	addw	sp,#4
 340  0083               L62:
 341                     ; 108   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 343  0083 0d12          	tnz	(OFST+9,sp)
 344  0085 2706          	jreq	L23
 345  0087 7b12          	ld	a,(OFST+9,sp)
 346  0089 a140          	cp	a,#64
 347  008b 2603          	jrne	L03
 348  008d               L23:
 349  008d 4f            	clr	a
 350  008e 2010          	jra	L43
 351  0090               L03:
 352  0090 ae006c        	ldw	x,#108
 353  0093 89            	pushw	x
 354  0094 ae0000        	ldw	x,#0
 355  0097 89            	pushw	x
 356  0098 ae000c        	ldw	x,#L131
 357  009b cd0000        	call	_assert_failed
 359  009e 5b04          	addw	sp,#4
 360  00a0               L43:
 361                     ; 109   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 363  00a0 0d15          	tnz	(OFST+12,sp)
 364  00a2 2709          	jreq	L63
 365  00a4 7b15          	ld	a,(OFST+12,sp)
 366  00a6 a111          	cp	a,#17
 367  00a8 2403          	jruge	L63
 368  00aa 4f            	clr	a
 369  00ab 2010          	jra	L04
 370  00ad               L63:
 371  00ad ae006d        	ldw	x,#109
 372  00b0 89            	pushw	x
 373  00b1 ae0000        	ldw	x,#0
 374  00b4 89            	pushw	x
 375  00b5 ae000c        	ldw	x,#L131
 376  00b8 cd0000        	call	_assert_failed
 378  00bb 5b04          	addw	sp,#4
 379  00bd               L04:
 380                     ; 110   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 382  00bd 96            	ldw	x,sp
 383  00be 1c000c        	addw	x,#OFST+3
 384  00c1 cd0000        	call	c_lzmp
 386  00c4 2712          	jreq	L24
 387  00c6 96            	ldw	x,sp
 388  00c7 1c000c        	addw	x,#OFST+3
 389  00ca cd0000        	call	c_ltor
 391  00cd ae0000        	ldw	x,#L44
 392  00d0 cd0000        	call	c_lcmp
 394  00d3 2403          	jruge	L24
 395  00d5 4f            	clr	a
 396  00d6 2010          	jra	L64
 397  00d8               L24:
 398  00d8 ae006e        	ldw	x,#110
 399  00db 89            	pushw	x
 400  00dc ae0000        	ldw	x,#0
 401  00df 89            	pushw	x
 402  00e0 ae000c        	ldw	x,#L131
 403  00e3 cd0000        	call	_assert_failed
 405  00e6 5b04          	addw	sp,#4
 406  00e8               L64:
 407                     ; 115   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 409  00e8 c65212        	ld	a,21010
 410  00eb a4c0          	and	a,#192
 411  00ed c75212        	ld	21010,a
 412                     ; 117   I2C->FREQR |= InputClockFrequencyMHz;
 414  00f0 c65212        	ld	a,21010
 415  00f3 1a15          	or	a,(OFST+12,sp)
 416  00f5 c75212        	ld	21010,a
 417                     ; 121   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 419  00f8 72115210      	bres	21008,#0
 420                     ; 124   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 422  00fc c6521c        	ld	a,21020
 423  00ff a430          	and	a,#48
 424  0101 c7521c        	ld	21020,a
 425                     ; 125   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 427  0104 725f521b      	clr	21019
 428                     ; 128   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 430  0108 96            	ldw	x,sp
 431  0109 1c000c        	addw	x,#OFST+3
 432  010c cd0000        	call	c_ltor
 434  010f ae0004        	ldw	x,#L05
 435  0112 cd0000        	call	c_lcmp
 437  0115 2403          	jruge	L45
 438  0117 cc01a4        	jp	L331
 439  011a               L45:
 440                     ; 131     tmpccrh = I2C_CCRH_FS;
 442  011a a680          	ld	a,#128
 443  011c 6b07          	ld	(OFST-2,sp),a
 444                     ; 133     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 446  011e 0d12          	tnz	(OFST+9,sp)
 447  0120 2630          	jrne	L531
 448                     ; 136       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 450  0122 96            	ldw	x,sp
 451  0123 1c000c        	addw	x,#OFST+3
 452  0126 cd0000        	call	c_ltor
 454  0129 a603          	ld	a,#3
 455  012b cd0000        	call	c_smul
 457  012e 96            	ldw	x,sp
 458  012f 1c0001        	addw	x,#OFST-8
 459  0132 cd0000        	call	c_rtol
 461  0135 7b15          	ld	a,(OFST+12,sp)
 462  0137 b703          	ld	c_lreg+3,a
 463  0139 3f02          	clr	c_lreg+2
 464  013b 3f01          	clr	c_lreg+1
 465  013d 3f00          	clr	c_lreg
 466  013f ae0008        	ldw	x,#L25
 467  0142 cd0000        	call	c_lmul
 469  0145 96            	ldw	x,sp
 470  0146 1c0001        	addw	x,#OFST-8
 471  0149 cd0000        	call	c_ludv
 473  014c be02          	ldw	x,c_lreg+2
 474  014e 1f08          	ldw	(OFST-1,sp),x
 476  0150 2034          	jra	L731
 477  0152               L531:
 478                     ; 141       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 480  0152 96            	ldw	x,sp
 481  0153 1c000c        	addw	x,#OFST+3
 482  0156 cd0000        	call	c_ltor
 484  0159 a619          	ld	a,#25
 485  015b cd0000        	call	c_smul
 487  015e 96            	ldw	x,sp
 488  015f 1c0001        	addw	x,#OFST-8
 489  0162 cd0000        	call	c_rtol
 491  0165 7b15          	ld	a,(OFST+12,sp)
 492  0167 b703          	ld	c_lreg+3,a
 493  0169 3f02          	clr	c_lreg+2
 494  016b 3f01          	clr	c_lreg+1
 495  016d 3f00          	clr	c_lreg
 496  016f ae0008        	ldw	x,#L25
 497  0172 cd0000        	call	c_lmul
 499  0175 96            	ldw	x,sp
 500  0176 1c0001        	addw	x,#OFST-8
 501  0179 cd0000        	call	c_ludv
 503  017c be02          	ldw	x,c_lreg+2
 504  017e 1f08          	ldw	(OFST-1,sp),x
 505                     ; 143       tmpccrh |= I2C_CCRH_DUTY;
 507  0180 7b07          	ld	a,(OFST-2,sp)
 508  0182 aa40          	or	a,#64
 509  0184 6b07          	ld	(OFST-2,sp),a
 510  0186               L731:
 511                     ; 147     if (result < (uint16_t)0x01)
 513  0186 1e08          	ldw	x,(OFST-1,sp)
 514  0188 2605          	jrne	L141
 515                     ; 150       result = (uint16_t)0x0001;
 517  018a ae0001        	ldw	x,#1
 518  018d 1f08          	ldw	(OFST-1,sp),x
 519  018f               L141:
 520                     ; 156     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 522  018f 7b15          	ld	a,(OFST+12,sp)
 523  0191 97            	ld	xl,a
 524  0192 a603          	ld	a,#3
 525  0194 42            	mul	x,a
 526  0195 a60a          	ld	a,#10
 527  0197 cd0000        	call	c_sdivx
 529  019a 5c            	incw	x
 530  019b 1f05          	ldw	(OFST-4,sp),x
 531                     ; 157     I2C->TRISER = (uint8_t)tmpval;
 533  019d 7b06          	ld	a,(OFST-3,sp)
 534  019f c7521d        	ld	21021,a
 536  01a2 2043          	jra	L341
 537  01a4               L331:
 538                     ; 164     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 540  01a4 96            	ldw	x,sp
 541  01a5 1c000c        	addw	x,#OFST+3
 542  01a8 cd0000        	call	c_ltor
 544  01ab 3803          	sll	c_lreg+3
 545  01ad 3902          	rlc	c_lreg+2
 546  01af 3901          	rlc	c_lreg+1
 547  01b1 3900          	rlc	c_lreg
 548  01b3 96            	ldw	x,sp
 549  01b4 1c0001        	addw	x,#OFST-8
 550  01b7 cd0000        	call	c_rtol
 552  01ba 7b15          	ld	a,(OFST+12,sp)
 553  01bc b703          	ld	c_lreg+3,a
 554  01be 3f02          	clr	c_lreg+2
 555  01c0 3f01          	clr	c_lreg+1
 556  01c2 3f00          	clr	c_lreg
 557  01c4 ae0008        	ldw	x,#L25
 558  01c7 cd0000        	call	c_lmul
 560  01ca 96            	ldw	x,sp
 561  01cb 1c0001        	addw	x,#OFST-8
 562  01ce cd0000        	call	c_ludv
 564  01d1 be02          	ldw	x,c_lreg+2
 565  01d3 1f08          	ldw	(OFST-1,sp),x
 566                     ; 167     if (result < (uint16_t)0x0004)
 568  01d5 1e08          	ldw	x,(OFST-1,sp)
 569  01d7 a30004        	cpw	x,#4
 570  01da 2405          	jruge	L541
 571                     ; 170       result = (uint16_t)0x0004;
 573  01dc ae0004        	ldw	x,#4
 574  01df 1f08          	ldw	(OFST-1,sp),x
 575  01e1               L541:
 576                     ; 176     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 578  01e1 7b15          	ld	a,(OFST+12,sp)
 579  01e3 4c            	inc	a
 580  01e4 c7521d        	ld	21021,a
 581  01e7               L341:
 582                     ; 181   I2C->CCRL = (uint8_t)result;
 584  01e7 7b09          	ld	a,(OFST+0,sp)
 585  01e9 c7521b        	ld	21019,a
 586                     ; 182   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 588  01ec 7b08          	ld	a,(OFST-1,sp)
 589  01ee a40f          	and	a,#15
 590  01f0 1a07          	or	a,(OFST-2,sp)
 591  01f2 c7521c        	ld	21020,a
 592                     ; 185   I2C->CR1 |= I2C_CR1_PE;
 594  01f5 72105210      	bset	21008,#0
 595                     ; 188   I2C_AcknowledgeConfig(Ack);
 597  01f9 7b13          	ld	a,(OFST+10,sp)
 598  01fb cd0323        	call	_I2C_AcknowledgeConfig
 600                     ; 191   I2C->OARL = (uint8_t)(OwnAddress);
 602  01fe 7b11          	ld	a,(OFST+8,sp)
 603  0200 c75213        	ld	21011,a
 604                     ; 192   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 604                     ; 193                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 606  0203 7b10          	ld	a,(OFST+7,sp)
 607  0205 97            	ld	xl,a
 608  0206 7b11          	ld	a,(OFST+8,sp)
 609  0208 9f            	ld	a,xl
 610  0209 a403          	and	a,#3
 611  020b 97            	ld	xl,a
 612  020c 4f            	clr	a
 613  020d 02            	rlwa	x,a
 614  020e 4f            	clr	a
 615  020f 01            	rrwa	x,a
 616  0210 48            	sll	a
 617  0211 59            	rlcw	x
 618  0212 9f            	ld	a,xl
 619  0213 6b04          	ld	(OFST-5,sp),a
 620  0215 7b14          	ld	a,(OFST+11,sp)
 621  0217 aa40          	or	a,#64
 622  0219 1a04          	or	a,(OFST-5,sp)
 623  021b c75214        	ld	21012,a
 624                     ; 194 }
 627  021e 5b09          	addw	sp,#9
 628  0220 81            	ret
 684                     ; 202 void I2C_Cmd(FunctionalState NewState)
 684                     ; 203 {
 685                     	switch	.text
 686  0221               _I2C_Cmd:
 688  0221 88            	push	a
 689       00000000      OFST:	set	0
 692                     ; 205   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 694  0222 4d            	tnz	a
 695  0223 2704          	jreq	L26
 696  0225 a101          	cp	a,#1
 697  0227 2603          	jrne	L06
 698  0229               L26:
 699  0229 4f            	clr	a
 700  022a 2010          	jra	L46
 701  022c               L06:
 702  022c ae00cd        	ldw	x,#205
 703  022f 89            	pushw	x
 704  0230 ae0000        	ldw	x,#0
 705  0233 89            	pushw	x
 706  0234 ae000c        	ldw	x,#L131
 707  0237 cd0000        	call	_assert_failed
 709  023a 5b04          	addw	sp,#4
 710  023c               L46:
 711                     ; 207   if (NewState != DISABLE)
 713  023c 0d01          	tnz	(OFST+1,sp)
 714  023e 2706          	jreq	L571
 715                     ; 210     I2C->CR1 |= I2C_CR1_PE;
 717  0240 72105210      	bset	21008,#0
 719  0244 2004          	jra	L771
 720  0246               L571:
 721                     ; 215     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 723  0246 72115210      	bres	21008,#0
 724  024a               L771:
 725                     ; 217 }
 728  024a 84            	pop	a
 729  024b 81            	ret
 765                     ; 225 void I2C_GeneralCallCmd(FunctionalState NewState)
 765                     ; 226 {
 766                     	switch	.text
 767  024c               _I2C_GeneralCallCmd:
 769  024c 88            	push	a
 770       00000000      OFST:	set	0
 773                     ; 228   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 775  024d 4d            	tnz	a
 776  024e 2704          	jreq	L27
 777  0250 a101          	cp	a,#1
 778  0252 2603          	jrne	L07
 779  0254               L27:
 780  0254 4f            	clr	a
 781  0255 2010          	jra	L47
 782  0257               L07:
 783  0257 ae00e4        	ldw	x,#228
 784  025a 89            	pushw	x
 785  025b ae0000        	ldw	x,#0
 786  025e 89            	pushw	x
 787  025f ae000c        	ldw	x,#L131
 788  0262 cd0000        	call	_assert_failed
 790  0265 5b04          	addw	sp,#4
 791  0267               L47:
 792                     ; 230   if (NewState != DISABLE)
 794  0267 0d01          	tnz	(OFST+1,sp)
 795  0269 2706          	jreq	L712
 796                     ; 233     I2C->CR1 |= I2C_CR1_ENGC;
 798  026b 721c5210      	bset	21008,#6
 800  026f 2004          	jra	L122
 801  0271               L712:
 802                     ; 238     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 804  0271 721d5210      	bres	21008,#6
 805  0275               L122:
 806                     ; 240 }
 809  0275 84            	pop	a
 810  0276 81            	ret
 846                     ; 250 void I2C_GenerateSTART(FunctionalState NewState)
 846                     ; 251 {
 847                     	switch	.text
 848  0277               _I2C_GenerateSTART:
 850  0277 88            	push	a
 851       00000000      OFST:	set	0
 854                     ; 253   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 856  0278 4d            	tnz	a
 857  0279 2704          	jreq	L201
 858  027b a101          	cp	a,#1
 859  027d 2603          	jrne	L001
 860  027f               L201:
 861  027f 4f            	clr	a
 862  0280 2010          	jra	L401
 863  0282               L001:
 864  0282 ae00fd        	ldw	x,#253
 865  0285 89            	pushw	x
 866  0286 ae0000        	ldw	x,#0
 867  0289 89            	pushw	x
 868  028a ae000c        	ldw	x,#L131
 869  028d cd0000        	call	_assert_failed
 871  0290 5b04          	addw	sp,#4
 872  0292               L401:
 873                     ; 255   if (NewState != DISABLE)
 875  0292 0d01          	tnz	(OFST+1,sp)
 876  0294 2706          	jreq	L142
 877                     ; 258     I2C->CR2 |= I2C_CR2_START;
 879  0296 72105211      	bset	21009,#0
 881  029a 2004          	jra	L342
 882  029c               L142:
 883                     ; 263     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 885  029c 72115211      	bres	21009,#0
 886  02a0               L342:
 887                     ; 265 }
 890  02a0 84            	pop	a
 891  02a1 81            	ret
 927                     ; 273 void I2C_GenerateSTOP(FunctionalState NewState)
 927                     ; 274 {
 928                     	switch	.text
 929  02a2               _I2C_GenerateSTOP:
 931  02a2 88            	push	a
 932       00000000      OFST:	set	0
 935                     ; 276   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 937  02a3 4d            	tnz	a
 938  02a4 2704          	jreq	L211
 939  02a6 a101          	cp	a,#1
 940  02a8 2603          	jrne	L011
 941  02aa               L211:
 942  02aa 4f            	clr	a
 943  02ab 2010          	jra	L411
 944  02ad               L011:
 945  02ad ae0114        	ldw	x,#276
 946  02b0 89            	pushw	x
 947  02b1 ae0000        	ldw	x,#0
 948  02b4 89            	pushw	x
 949  02b5 ae000c        	ldw	x,#L131
 950  02b8 cd0000        	call	_assert_failed
 952  02bb 5b04          	addw	sp,#4
 953  02bd               L411:
 954                     ; 278   if (NewState != DISABLE)
 956  02bd 0d01          	tnz	(OFST+1,sp)
 957  02bf 2706          	jreq	L362
 958                     ; 281     I2C->CR2 |= I2C_CR2_STOP;
 960  02c1 72125211      	bset	21009,#1
 962  02c5 2004          	jra	L562
 963  02c7               L362:
 964                     ; 286     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 966  02c7 72135211      	bres	21009,#1
 967  02cb               L562:
 968                     ; 288 }
 971  02cb 84            	pop	a
 972  02cc 81            	ret
1009                     ; 296 void I2C_SoftwareResetCmd(FunctionalState NewState)
1009                     ; 297 {
1010                     	switch	.text
1011  02cd               _I2C_SoftwareResetCmd:
1013  02cd 88            	push	a
1014       00000000      OFST:	set	0
1017                     ; 299   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1019  02ce 4d            	tnz	a
1020  02cf 2704          	jreq	L221
1021  02d1 a101          	cp	a,#1
1022  02d3 2603          	jrne	L021
1023  02d5               L221:
1024  02d5 4f            	clr	a
1025  02d6 2010          	jra	L421
1026  02d8               L021:
1027  02d8 ae012b        	ldw	x,#299
1028  02db 89            	pushw	x
1029  02dc ae0000        	ldw	x,#0
1030  02df 89            	pushw	x
1031  02e0 ae000c        	ldw	x,#L131
1032  02e3 cd0000        	call	_assert_failed
1034  02e6 5b04          	addw	sp,#4
1035  02e8               L421:
1036                     ; 301   if (NewState != DISABLE)
1038  02e8 0d01          	tnz	(OFST+1,sp)
1039  02ea 2706          	jreq	L503
1040                     ; 304     I2C->CR2 |= I2C_CR2_SWRST;
1042  02ec 721e5211      	bset	21009,#7
1044  02f0 2004          	jra	L703
1045  02f2               L503:
1046                     ; 309     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
1048  02f2 721f5211      	bres	21009,#7
1049  02f6               L703:
1050                     ; 311 }
1053  02f6 84            	pop	a
1054  02f7 81            	ret
1091                     ; 320 void I2C_StretchClockCmd(FunctionalState NewState)
1091                     ; 321 {
1092                     	switch	.text
1093  02f8               _I2C_StretchClockCmd:
1095  02f8 88            	push	a
1096       00000000      OFST:	set	0
1099                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1101  02f9 4d            	tnz	a
1102  02fa 2704          	jreq	L231
1103  02fc a101          	cp	a,#1
1104  02fe 2603          	jrne	L031
1105  0300               L231:
1106  0300 4f            	clr	a
1107  0301 2010          	jra	L431
1108  0303               L031:
1109  0303 ae0143        	ldw	x,#323
1110  0306 89            	pushw	x
1111  0307 ae0000        	ldw	x,#0
1112  030a 89            	pushw	x
1113  030b ae000c        	ldw	x,#L131
1114  030e cd0000        	call	_assert_failed
1116  0311 5b04          	addw	sp,#4
1117  0313               L431:
1118                     ; 325   if (NewState != DISABLE)
1120  0313 0d01          	tnz	(OFST+1,sp)
1121  0315 2706          	jreq	L723
1122                     ; 328     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1124  0317 721f5210      	bres	21008,#7
1126  031b 2004          	jra	L133
1127  031d               L723:
1128                     ; 334     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1130  031d 721e5210      	bset	21008,#7
1131  0321               L133:
1132                     ; 336 }
1135  0321 84            	pop	a
1136  0322 81            	ret
1173                     ; 345 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1173                     ; 346 {
1174                     	switch	.text
1175  0323               _I2C_AcknowledgeConfig:
1177  0323 88            	push	a
1178       00000000      OFST:	set	0
1181                     ; 348   assert_param(IS_I2C_ACK_OK(Ack));
1183  0324 4d            	tnz	a
1184  0325 2708          	jreq	L241
1185  0327 a101          	cp	a,#1
1186  0329 2704          	jreq	L241
1187  032b a102          	cp	a,#2
1188  032d 2603          	jrne	L041
1189  032f               L241:
1190  032f 4f            	clr	a
1191  0330 2010          	jra	L441
1192  0332               L041:
1193  0332 ae015c        	ldw	x,#348
1194  0335 89            	pushw	x
1195  0336 ae0000        	ldw	x,#0
1196  0339 89            	pushw	x
1197  033a ae000c        	ldw	x,#L131
1198  033d cd0000        	call	_assert_failed
1200  0340 5b04          	addw	sp,#4
1201  0342               L441:
1202                     ; 350   if (Ack == I2C_ACK_NONE)
1204  0342 0d01          	tnz	(OFST+1,sp)
1205  0344 2606          	jrne	L153
1206                     ; 353     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1208  0346 72155211      	bres	21009,#2
1210  034a 2014          	jra	L353
1211  034c               L153:
1212                     ; 358     I2C->CR2 |= I2C_CR2_ACK;
1214  034c 72145211      	bset	21009,#2
1215                     ; 360     if (Ack == I2C_ACK_CURR)
1217  0350 7b01          	ld	a,(OFST+1,sp)
1218  0352 a101          	cp	a,#1
1219  0354 2606          	jrne	L553
1220                     ; 363       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1222  0356 72175211      	bres	21009,#3
1224  035a 2004          	jra	L353
1225  035c               L553:
1226                     ; 368       I2C->CR2 |= I2C_CR2_POS;
1228  035c 72165211      	bset	21009,#3
1229  0360               L353:
1230                     ; 371 }
1233  0360 84            	pop	a
1234  0361 81            	ret
1307                     ; 381 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1307                     ; 382 {
1308                     	switch	.text
1309  0362               _I2C_ITConfig:
1311  0362 89            	pushw	x
1312       00000000      OFST:	set	0
1315                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1317  0363 9e            	ld	a,xh
1318  0364 a101          	cp	a,#1
1319  0366 271e          	jreq	L251
1320  0368 9e            	ld	a,xh
1321  0369 a102          	cp	a,#2
1322  036b 2719          	jreq	L251
1323  036d 9e            	ld	a,xh
1324  036e a104          	cp	a,#4
1325  0370 2714          	jreq	L251
1326  0372 9e            	ld	a,xh
1327  0373 a103          	cp	a,#3
1328  0375 270f          	jreq	L251
1329  0377 9e            	ld	a,xh
1330  0378 a105          	cp	a,#5
1331  037a 270a          	jreq	L251
1332  037c 9e            	ld	a,xh
1333  037d a106          	cp	a,#6
1334  037f 2705          	jreq	L251
1335  0381 9e            	ld	a,xh
1336  0382 a107          	cp	a,#7
1337  0384 2603          	jrne	L051
1338  0386               L251:
1339  0386 4f            	clr	a
1340  0387 2010          	jra	L451
1341  0389               L051:
1342  0389 ae0180        	ldw	x,#384
1343  038c 89            	pushw	x
1344  038d ae0000        	ldw	x,#0
1345  0390 89            	pushw	x
1346  0391 ae000c        	ldw	x,#L131
1347  0394 cd0000        	call	_assert_failed
1349  0397 5b04          	addw	sp,#4
1350  0399               L451:
1351                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1353  0399 0d02          	tnz	(OFST+2,sp)
1354  039b 2706          	jreq	L061
1355  039d 7b02          	ld	a,(OFST+2,sp)
1356  039f a101          	cp	a,#1
1357  03a1 2603          	jrne	L651
1358  03a3               L061:
1359  03a3 4f            	clr	a
1360  03a4 2010          	jra	L261
1361  03a6               L651:
1362  03a6 ae0181        	ldw	x,#385
1363  03a9 89            	pushw	x
1364  03aa ae0000        	ldw	x,#0
1365  03ad 89            	pushw	x
1366  03ae ae000c        	ldw	x,#L131
1367  03b1 cd0000        	call	_assert_failed
1369  03b4 5b04          	addw	sp,#4
1370  03b6               L261:
1371                     ; 387   if (NewState != DISABLE)
1373  03b6 0d02          	tnz	(OFST+2,sp)
1374  03b8 270a          	jreq	L514
1375                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1377  03ba c6521a        	ld	a,21018
1378  03bd 1a01          	or	a,(OFST+1,sp)
1379  03bf c7521a        	ld	21018,a
1381  03c2 2009          	jra	L714
1382  03c4               L514:
1383                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1385  03c4 7b01          	ld	a,(OFST+1,sp)
1386  03c6 43            	cpl	a
1387  03c7 c4521a        	and	a,21018
1388  03ca c7521a        	ld	21018,a
1389  03cd               L714:
1390                     ; 397 }
1393  03cd 85            	popw	x
1394  03ce 81            	ret
1431                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1431                     ; 406 {
1432                     	switch	.text
1433  03cf               _I2C_FastModeDutyCycleConfig:
1435  03cf 88            	push	a
1436       00000000      OFST:	set	0
1439                     ; 408   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1441  03d0 4d            	tnz	a
1442  03d1 2704          	jreq	L071
1443  03d3 a140          	cp	a,#64
1444  03d5 2603          	jrne	L661
1445  03d7               L071:
1446  03d7 4f            	clr	a
1447  03d8 2010          	jra	L271
1448  03da               L661:
1449  03da ae0198        	ldw	x,#408
1450  03dd 89            	pushw	x
1451  03de ae0000        	ldw	x,#0
1452  03e1 89            	pushw	x
1453  03e2 ae000c        	ldw	x,#L131
1454  03e5 cd0000        	call	_assert_failed
1456  03e8 5b04          	addw	sp,#4
1457  03ea               L271:
1458                     ; 410   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1460  03ea 7b01          	ld	a,(OFST+1,sp)
1461  03ec a140          	cp	a,#64
1462  03ee 2606          	jrne	L734
1463                     ; 413     I2C->CCRH |= I2C_CCRH_DUTY;
1465  03f0 721c521c      	bset	21020,#6
1467  03f4 2004          	jra	L144
1468  03f6               L734:
1469                     ; 418     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1471  03f6 721d521c      	bres	21020,#6
1472  03fa               L144:
1473                     ; 420 }
1476  03fa 84            	pop	a
1477  03fb 81            	ret
1500                     ; 427 uint8_t I2C_ReceiveData(void)
1500                     ; 428 {
1501                     	switch	.text
1502  03fc               _I2C_ReceiveData:
1506                     ; 430   return ((uint8_t)I2C->DR);
1508  03fc c65216        	ld	a,21014
1511  03ff 81            	ret
1577                     ; 440 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1577                     ; 441 {
1578                     	switch	.text
1579  0400               _I2C_Send7bitAddress:
1581  0400 89            	pushw	x
1582       00000000      OFST:	set	0
1585                     ; 443   assert_param(IS_I2C_ADDRESS_OK(Address));
1587  0401 9e            	ld	a,xh
1588  0402 a501          	bcp	a,#1
1589  0404 2603          	jrne	L002
1590  0406 4f            	clr	a
1591  0407 2010          	jra	L202
1592  0409               L002:
1593  0409 ae01bb        	ldw	x,#443
1594  040c 89            	pushw	x
1595  040d ae0000        	ldw	x,#0
1596  0410 89            	pushw	x
1597  0411 ae000c        	ldw	x,#L131
1598  0414 cd0000        	call	_assert_failed
1600  0417 5b04          	addw	sp,#4
1601  0419               L202:
1602                     ; 444   assert_param(IS_I2C_DIRECTION_OK(Direction));
1604  0419 0d02          	tnz	(OFST+2,sp)
1605  041b 2706          	jreq	L602
1606  041d 7b02          	ld	a,(OFST+2,sp)
1607  041f a101          	cp	a,#1
1608  0421 2603          	jrne	L402
1609  0423               L602:
1610  0423 4f            	clr	a
1611  0424 2010          	jra	L012
1612  0426               L402:
1613  0426 ae01bc        	ldw	x,#444
1614  0429 89            	pushw	x
1615  042a ae0000        	ldw	x,#0
1616  042d 89            	pushw	x
1617  042e ae000c        	ldw	x,#L131
1618  0431 cd0000        	call	_assert_failed
1620  0434 5b04          	addw	sp,#4
1621  0436               L012:
1622                     ; 447   Address &= (uint8_t)0xFE;
1624  0436 7b01          	ld	a,(OFST+1,sp)
1625  0438 a4fe          	and	a,#254
1626  043a 6b01          	ld	(OFST+1,sp),a
1627                     ; 450   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1629  043c 7b01          	ld	a,(OFST+1,sp)
1630  043e 1a02          	or	a,(OFST+2,sp)
1631  0440 c75216        	ld	21014,a
1632                     ; 451 }
1635  0443 85            	popw	x
1636  0444 81            	ret
1670                     ; 458 void I2C_SendData(uint8_t Data)
1670                     ; 459 {
1671                     	switch	.text
1672  0445               _I2C_SendData:
1676                     ; 461   I2C->DR = Data;
1678  0445 c75216        	ld	21014,a
1679                     ; 462 }
1682  0448 81            	ret
1907                     ; 578 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1907                     ; 579 {
1908                     	switch	.text
1909  0449               _I2C_CheckEvent:
1911  0449 89            	pushw	x
1912  044a 5206          	subw	sp,#6
1913       00000006      OFST:	set	6
1916                     ; 580   __IO uint16_t lastevent = 0x00;
1918  044c 5f            	clrw	x
1919  044d 1f04          	ldw	(OFST-2,sp),x
1920                     ; 581   uint8_t flag1 = 0x00 ;
1922                     ; 582   uint8_t flag2 = 0x00;
1924                     ; 583   ErrorStatus status = ERROR;
1926                     ; 586   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1928  044f 1e07          	ldw	x,(OFST+1,sp)
1929  0451 a30682        	cpw	x,#1666
1930  0454 2769          	jreq	L022
1931  0456 1e07          	ldw	x,(OFST+1,sp)
1932  0458 a30202        	cpw	x,#514
1933  045b 2762          	jreq	L022
1934  045d 1e07          	ldw	x,(OFST+1,sp)
1935  045f a31200        	cpw	x,#4608
1936  0462 275b          	jreq	L022
1937  0464 1e07          	ldw	x,(OFST+1,sp)
1938  0466 a30240        	cpw	x,#576
1939  0469 2754          	jreq	L022
1940  046b 1e07          	ldw	x,(OFST+1,sp)
1941  046d a30350        	cpw	x,#848
1942  0470 274d          	jreq	L022
1943  0472 1e07          	ldw	x,(OFST+1,sp)
1944  0474 a30684        	cpw	x,#1668
1945  0477 2746          	jreq	L022
1946  0479 1e07          	ldw	x,(OFST+1,sp)
1947  047b a30794        	cpw	x,#1940
1948  047e 273f          	jreq	L022
1949  0480 1e07          	ldw	x,(OFST+1,sp)
1950  0482 a30004        	cpw	x,#4
1951  0485 2738          	jreq	L022
1952  0487 1e07          	ldw	x,(OFST+1,sp)
1953  0489 a30010        	cpw	x,#16
1954  048c 2731          	jreq	L022
1955  048e 1e07          	ldw	x,(OFST+1,sp)
1956  0490 a30301        	cpw	x,#769
1957  0493 272a          	jreq	L022
1958  0495 1e07          	ldw	x,(OFST+1,sp)
1959  0497 a30782        	cpw	x,#1922
1960  049a 2723          	jreq	L022
1961  049c 1e07          	ldw	x,(OFST+1,sp)
1962  049e a30302        	cpw	x,#770
1963  04a1 271c          	jreq	L022
1964  04a3 1e07          	ldw	x,(OFST+1,sp)
1965  04a5 a30340        	cpw	x,#832
1966  04a8 2715          	jreq	L022
1967  04aa 1e07          	ldw	x,(OFST+1,sp)
1968  04ac a30784        	cpw	x,#1924
1969  04af 270e          	jreq	L022
1970  04b1 1e07          	ldw	x,(OFST+1,sp)
1971  04b3 a30780        	cpw	x,#1920
1972  04b6 2707          	jreq	L022
1973  04b8 1e07          	ldw	x,(OFST+1,sp)
1974  04ba a30308        	cpw	x,#776
1975  04bd 2603          	jrne	L612
1976  04bf               L022:
1977  04bf 4f            	clr	a
1978  04c0 2010          	jra	L222
1979  04c2               L612:
1980  04c2 ae024a        	ldw	x,#586
1981  04c5 89            	pushw	x
1982  04c6 ae0000        	ldw	x,#0
1983  04c9 89            	pushw	x
1984  04ca ae000c        	ldw	x,#L131
1985  04cd cd0000        	call	_assert_failed
1987  04d0 5b04          	addw	sp,#4
1988  04d2               L222:
1989                     ; 588   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1991  04d2 1e07          	ldw	x,(OFST+1,sp)
1992  04d4 a30004        	cpw	x,#4
1993  04d7 260b          	jrne	L336
1994                     ; 590     lastevent = I2C->SR2 & I2C_SR2_AF;
1996  04d9 c65218        	ld	a,21016
1997  04dc a404          	and	a,#4
1998  04de 5f            	clrw	x
1999  04df 97            	ld	xl,a
2000  04e0 1f04          	ldw	(OFST-2,sp),x
2002  04e2 201f          	jra	L536
2003  04e4               L336:
2004                     ; 594     flag1 = I2C->SR1;
2006  04e4 c65217        	ld	a,21015
2007  04e7 6b03          	ld	(OFST-3,sp),a
2008                     ; 595     flag2 = I2C->SR3;
2010  04e9 c65219        	ld	a,21017
2011  04ec 6b06          	ld	(OFST+0,sp),a
2012                     ; 596     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
2014  04ee 7b03          	ld	a,(OFST-3,sp)
2015  04f0 5f            	clrw	x
2016  04f1 97            	ld	xl,a
2017  04f2 1f01          	ldw	(OFST-5,sp),x
2018  04f4 7b06          	ld	a,(OFST+0,sp)
2019  04f6 5f            	clrw	x
2020  04f7 97            	ld	xl,a
2021  04f8 4f            	clr	a
2022  04f9 02            	rlwa	x,a
2023  04fa 01            	rrwa	x,a
2024  04fb 1a02          	or	a,(OFST-4,sp)
2025  04fd 01            	rrwa	x,a
2026  04fe 1a01          	or	a,(OFST-5,sp)
2027  0500 01            	rrwa	x,a
2028  0501 1f04          	ldw	(OFST-2,sp),x
2029  0503               L536:
2030                     ; 599   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
2032  0503 1e04          	ldw	x,(OFST-2,sp)
2033  0505 01            	rrwa	x,a
2034  0506 1408          	and	a,(OFST+2,sp)
2035  0508 01            	rrwa	x,a
2036  0509 1407          	and	a,(OFST+1,sp)
2037  050b 01            	rrwa	x,a
2038  050c 1307          	cpw	x,(OFST+1,sp)
2039  050e 2606          	jrne	L736
2040                     ; 602     status = SUCCESS;
2042  0510 a601          	ld	a,#1
2043  0512 6b06          	ld	(OFST+0,sp),a
2045  0514 2002          	jra	L146
2046  0516               L736:
2047                     ; 607     status = ERROR;
2049  0516 0f06          	clr	(OFST+0,sp)
2050  0518               L146:
2051                     ; 611   return status;
2053  0518 7b06          	ld	a,(OFST+0,sp)
2056  051a 5b08          	addw	sp,#8
2057  051c 81            	ret
2110                     ; 628 I2C_Event_TypeDef I2C_GetLastEvent(void)
2110                     ; 629 {
2111                     	switch	.text
2112  051d               _I2C_GetLastEvent:
2114  051d 5206          	subw	sp,#6
2115       00000006      OFST:	set	6
2118                     ; 630   __IO uint16_t lastevent = 0;
2120  051f 5f            	clrw	x
2121  0520 1f05          	ldw	(OFST-1,sp),x
2122                     ; 631   uint16_t flag1 = 0;
2124                     ; 632   uint16_t flag2 = 0;
2126                     ; 634   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
2128  0522 c65218        	ld	a,21016
2129  0525 a504          	bcp	a,#4
2130  0527 2707          	jreq	L176
2131                     ; 636     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
2133  0529 ae0004        	ldw	x,#4
2134  052c 1f05          	ldw	(OFST-1,sp),x
2136  052e 201b          	jra	L376
2137  0530               L176:
2138                     ; 641     flag1 = I2C->SR1;
2140  0530 c65217        	ld	a,21015
2141  0533 5f            	clrw	x
2142  0534 97            	ld	xl,a
2143  0535 1f01          	ldw	(OFST-5,sp),x
2144                     ; 642     flag2 = I2C->SR3;
2146  0537 c65219        	ld	a,21017
2147  053a 5f            	clrw	x
2148  053b 97            	ld	xl,a
2149  053c 1f03          	ldw	(OFST-3,sp),x
2150                     ; 645     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
2152  053e 1e03          	ldw	x,(OFST-3,sp)
2153  0540 4f            	clr	a
2154  0541 02            	rlwa	x,a
2155  0542 01            	rrwa	x,a
2156  0543 1a02          	or	a,(OFST-4,sp)
2157  0545 01            	rrwa	x,a
2158  0546 1a01          	or	a,(OFST-5,sp)
2159  0548 01            	rrwa	x,a
2160  0549 1f05          	ldw	(OFST-1,sp),x
2161  054b               L376:
2162                     ; 648   return (I2C_Event_TypeDef)lastevent;
2164  054b 1e05          	ldw	x,(OFST-1,sp)
2167  054d 5b06          	addw	sp,#6
2168  054f 81            	ret
2384                     ; 679 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2384                     ; 680 {
2385                     	switch	.text
2386  0550               _I2C_GetFlagStatus:
2388  0550 89            	pushw	x
2389  0551 89            	pushw	x
2390       00000002      OFST:	set	2
2393                     ; 681   uint8_t tempreg = 0;
2395  0552 0f02          	clr	(OFST+0,sp)
2396                     ; 682   uint8_t regindex = 0;
2398                     ; 683   FlagStatus bitstatus = RESET;
2400                     ; 686   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2402  0554 a30180        	cpw	x,#384
2403  0557 274b          	jreq	L232
2404  0559 a30140        	cpw	x,#320
2405  055c 2746          	jreq	L232
2406  055e a30110        	cpw	x,#272
2407  0561 2741          	jreq	L232
2408  0563 a30108        	cpw	x,#264
2409  0566 273c          	jreq	L232
2410  0568 a30104        	cpw	x,#260
2411  056b 2737          	jreq	L232
2412  056d a30102        	cpw	x,#258
2413  0570 2732          	jreq	L232
2414  0572 a30101        	cpw	x,#257
2415  0575 272d          	jreq	L232
2416  0577 a30220        	cpw	x,#544
2417  057a 2728          	jreq	L232
2418  057c a30208        	cpw	x,#520
2419  057f 2723          	jreq	L232
2420  0581 a30204        	cpw	x,#516
2421  0584 271e          	jreq	L232
2422  0586 a30202        	cpw	x,#514
2423  0589 2719          	jreq	L232
2424  058b a30201        	cpw	x,#513
2425  058e 2714          	jreq	L232
2426  0590 a30310        	cpw	x,#784
2427  0593 270f          	jreq	L232
2428  0595 a30304        	cpw	x,#772
2429  0598 270a          	jreq	L232
2430  059a a30302        	cpw	x,#770
2431  059d 2705          	jreq	L232
2432  059f a30301        	cpw	x,#769
2433  05a2 2603          	jrne	L032
2434  05a4               L232:
2435  05a4 4f            	clr	a
2436  05a5 2010          	jra	L432
2437  05a7               L032:
2438  05a7 ae02ae        	ldw	x,#686
2439  05aa 89            	pushw	x
2440  05ab ae0000        	ldw	x,#0
2441  05ae 89            	pushw	x
2442  05af ae000c        	ldw	x,#L131
2443  05b2 cd0000        	call	_assert_failed
2445  05b5 5b04          	addw	sp,#4
2446  05b7               L432:
2447                     ; 689   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2449  05b7 7b03          	ld	a,(OFST+1,sp)
2450  05b9 6b01          	ld	(OFST-1,sp),a
2451                     ; 691   switch (regindex)
2453  05bb 7b01          	ld	a,(OFST-1,sp)
2455                     ; 708     default:
2455                     ; 709       break;
2456  05bd 4a            	dec	a
2457  05be 2708          	jreq	L576
2458  05c0 4a            	dec	a
2459  05c1 270c          	jreq	L776
2460  05c3 4a            	dec	a
2461  05c4 2710          	jreq	L107
2462  05c6 2013          	jra	L5101
2463  05c8               L576:
2464                     ; 694     case 0x01:
2464                     ; 695       tempreg = (uint8_t)I2C->SR1;
2466  05c8 c65217        	ld	a,21015
2467  05cb 6b02          	ld	(OFST+0,sp),a
2468                     ; 696       break;
2470  05cd 200c          	jra	L5101
2471  05cf               L776:
2472                     ; 699     case 0x02:
2472                     ; 700       tempreg = (uint8_t)I2C->SR2;
2474  05cf c65218        	ld	a,21016
2475  05d2 6b02          	ld	(OFST+0,sp),a
2476                     ; 701       break;
2478  05d4 2005          	jra	L5101
2479  05d6               L107:
2480                     ; 704     case 0x03:
2480                     ; 705       tempreg = (uint8_t)I2C->SR3;
2482  05d6 c65219        	ld	a,21017
2483  05d9 6b02          	ld	(OFST+0,sp),a
2484                     ; 706       break;
2486  05db               L307:
2487                     ; 708     default:
2487                     ; 709       break;
2489  05db               L5101:
2490                     ; 713   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2492  05db 7b04          	ld	a,(OFST+2,sp)
2493  05dd 1502          	bcp	a,(OFST+0,sp)
2494  05df 2706          	jreq	L7101
2495                     ; 716     bitstatus = SET;
2497  05e1 a601          	ld	a,#1
2498  05e3 6b02          	ld	(OFST+0,sp),a
2500  05e5 2002          	jra	L1201
2501  05e7               L7101:
2502                     ; 721     bitstatus = RESET;
2504  05e7 0f02          	clr	(OFST+0,sp)
2505  05e9               L1201:
2506                     ; 724   return bitstatus;
2508  05e9 7b02          	ld	a,(OFST+0,sp)
2511  05eb 5b04          	addw	sp,#4
2512  05ed 81            	ret
2557                     ; 759 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2557                     ; 760 {
2558                     	switch	.text
2559  05ee               _I2C_ClearFlag:
2561  05ee 89            	pushw	x
2562  05ef 89            	pushw	x
2563       00000002      OFST:	set	2
2566                     ; 761   uint16_t flagpos = 0;
2568                     ; 763   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2570  05f0 01            	rrwa	x,a
2571  05f1 9f            	ld	a,xl
2572  05f2 a4fd          	and	a,#253
2573  05f4 97            	ld	xl,a
2574  05f5 4f            	clr	a
2575  05f6 02            	rlwa	x,a
2576  05f7 5d            	tnzw	x
2577  05f8 2607          	jrne	L042
2578  05fa 1e03          	ldw	x,(OFST+1,sp)
2579  05fc 2703          	jreq	L042
2580  05fe 4f            	clr	a
2581  05ff 2010          	jra	L242
2582  0601               L042:
2583  0601 ae02fb        	ldw	x,#763
2584  0604 89            	pushw	x
2585  0605 ae0000        	ldw	x,#0
2586  0608 89            	pushw	x
2587  0609 ae000c        	ldw	x,#L131
2588  060c cd0000        	call	_assert_failed
2590  060f 5b04          	addw	sp,#4
2591  0611               L242:
2592                     ; 766   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2594  0611 7b03          	ld	a,(OFST+1,sp)
2595  0613 97            	ld	xl,a
2596  0614 7b04          	ld	a,(OFST+2,sp)
2597  0616 a4ff          	and	a,#255
2598  0618 5f            	clrw	x
2599  0619 02            	rlwa	x,a
2600  061a 1f01          	ldw	(OFST-1,sp),x
2601  061c 01            	rrwa	x,a
2602                     ; 768   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2604  061d 7b02          	ld	a,(OFST+0,sp)
2605  061f 43            	cpl	a
2606  0620 c75218        	ld	21016,a
2607                     ; 769 }
2610  0623 5b04          	addw	sp,#4
2611  0625 81            	ret
2778                     ; 791 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2778                     ; 792 {
2779                     	switch	.text
2780  0626               _I2C_GetITStatus:
2782  0626 89            	pushw	x
2783  0627 5204          	subw	sp,#4
2784       00000004      OFST:	set	4
2787                     ; 793   ITStatus bitstatus = RESET;
2789                     ; 794   __IO uint8_t enablestatus = 0;
2791  0629 0f03          	clr	(OFST-1,sp)
2792                     ; 795   uint16_t tempregister = 0;
2794                     ; 798     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2796  062b a31680        	cpw	x,#5760
2797  062e 2737          	jreq	L052
2798  0630 a31640        	cpw	x,#5696
2799  0633 2732          	jreq	L052
2800  0635 a31210        	cpw	x,#4624
2801  0638 272d          	jreq	L052
2802  063a a31208        	cpw	x,#4616
2803  063d 2728          	jreq	L052
2804  063f a31204        	cpw	x,#4612
2805  0642 2723          	jreq	L052
2806  0644 a31202        	cpw	x,#4610
2807  0647 271e          	jreq	L052
2808  0649 a31201        	cpw	x,#4609
2809  064c 2719          	jreq	L052
2810  064e a32220        	cpw	x,#8736
2811  0651 2714          	jreq	L052
2812  0653 a32108        	cpw	x,#8456
2813  0656 270f          	jreq	L052
2814  0658 a32104        	cpw	x,#8452
2815  065b 270a          	jreq	L052
2816  065d a32102        	cpw	x,#8450
2817  0660 2705          	jreq	L052
2818  0662 a32101        	cpw	x,#8449
2819  0665 2603          	jrne	L642
2820  0667               L052:
2821  0667 4f            	clr	a
2822  0668 2010          	jra	L252
2823  066a               L642:
2824  066a ae031e        	ldw	x,#798
2825  066d 89            	pushw	x
2826  066e ae0000        	ldw	x,#0
2827  0671 89            	pushw	x
2828  0672 ae000c        	ldw	x,#L131
2829  0675 cd0000        	call	_assert_failed
2831  0678 5b04          	addw	sp,#4
2832  067a               L252:
2833                     ; 800   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2835  067a 7b05          	ld	a,(OFST+1,sp)
2836  067c 97            	ld	xl,a
2837  067d 7b06          	ld	a,(OFST+2,sp)
2838  067f 9f            	ld	a,xl
2839  0680 a407          	and	a,#7
2840  0682 97            	ld	xl,a
2841  0683 4f            	clr	a
2842  0684 02            	rlwa	x,a
2843  0685 4f            	clr	a
2844  0686 01            	rrwa	x,a
2845  0687 9f            	ld	a,xl
2846  0688 5f            	clrw	x
2847  0689 97            	ld	xl,a
2848  068a 1f01          	ldw	(OFST-3,sp),x
2849                     ; 803   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2851  068c c6521a        	ld	a,21018
2852  068f 1402          	and	a,(OFST-2,sp)
2853  0691 6b03          	ld	(OFST-1,sp),a
2854                     ; 805   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2856  0693 7b05          	ld	a,(OFST+1,sp)
2857  0695 97            	ld	xl,a
2858  0696 7b06          	ld	a,(OFST+2,sp)
2859  0698 9f            	ld	a,xl
2860  0699 a430          	and	a,#48
2861  069b 97            	ld	xl,a
2862  069c 4f            	clr	a
2863  069d 02            	rlwa	x,a
2864  069e a30100        	cpw	x,#256
2865  06a1 2615          	jrne	L3311
2866                     ; 808     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2868  06a3 c65217        	ld	a,21015
2869  06a6 1506          	bcp	a,(OFST+2,sp)
2870  06a8 270a          	jreq	L5311
2872  06aa 0d03          	tnz	(OFST-1,sp)
2873  06ac 2706          	jreq	L5311
2874                     ; 811       bitstatus = SET;
2876  06ae a601          	ld	a,#1
2877  06b0 6b04          	ld	(OFST+0,sp),a
2879  06b2 2017          	jra	L1411
2880  06b4               L5311:
2881                     ; 816       bitstatus = RESET;
2883  06b4 0f04          	clr	(OFST+0,sp)
2884  06b6 2013          	jra	L1411
2885  06b8               L3311:
2886                     ; 822     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2888  06b8 c65218        	ld	a,21016
2889  06bb 1506          	bcp	a,(OFST+2,sp)
2890  06bd 270a          	jreq	L3411
2892  06bf 0d03          	tnz	(OFST-1,sp)
2893  06c1 2706          	jreq	L3411
2894                     ; 825       bitstatus = SET;
2896  06c3 a601          	ld	a,#1
2897  06c5 6b04          	ld	(OFST+0,sp),a
2899  06c7 2002          	jra	L1411
2900  06c9               L3411:
2901                     ; 830       bitstatus = RESET;
2903  06c9 0f04          	clr	(OFST+0,sp)
2904  06cb               L1411:
2905                     ; 834   return  bitstatus;
2907  06cb 7b04          	ld	a,(OFST+0,sp)
2910  06cd 5b06          	addw	sp,#6
2911  06cf 81            	ret
2957                     ; 871 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2957                     ; 872 {
2958                     	switch	.text
2959  06d0               _I2C_ClearITPendingBit:
2961  06d0 89            	pushw	x
2962  06d1 89            	pushw	x
2963       00000002      OFST:	set	2
2966                     ; 873   uint16_t flagpos = 0;
2968                     ; 876   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2970  06d2 a32220        	cpw	x,#8736
2971  06d5 2714          	jreq	L062
2972  06d7 a32108        	cpw	x,#8456
2973  06da 270f          	jreq	L062
2974  06dc a32104        	cpw	x,#8452
2975  06df 270a          	jreq	L062
2976  06e1 a32102        	cpw	x,#8450
2977  06e4 2705          	jreq	L062
2978  06e6 a32101        	cpw	x,#8449
2979  06e9 2603          	jrne	L652
2980  06eb               L062:
2981  06eb 4f            	clr	a
2982  06ec 2010          	jra	L262
2983  06ee               L652:
2984  06ee ae036c        	ldw	x,#876
2985  06f1 89            	pushw	x
2986  06f2 ae0000        	ldw	x,#0
2987  06f5 89            	pushw	x
2988  06f6 ae000c        	ldw	x,#L131
2989  06f9 cd0000        	call	_assert_failed
2991  06fc 5b04          	addw	sp,#4
2992  06fe               L262:
2993                     ; 879   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2995  06fe 7b03          	ld	a,(OFST+1,sp)
2996  0700 97            	ld	xl,a
2997  0701 7b04          	ld	a,(OFST+2,sp)
2998  0703 a4ff          	and	a,#255
2999  0705 5f            	clrw	x
3000  0706 02            	rlwa	x,a
3001  0707 1f01          	ldw	(OFST-1,sp),x
3002  0709 01            	rrwa	x,a
3003                     ; 882   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
3005  070a 7b02          	ld	a,(OFST+0,sp)
3006  070c 43            	cpl	a
3007  070d c75218        	ld	21016,a
3008                     ; 883 }
3011  0710 5b04          	addw	sp,#4
3012  0712 81            	ret
3025                     	xdef	_I2C_ClearITPendingBit
3026                     	xdef	_I2C_GetITStatus
3027                     	xdef	_I2C_ClearFlag
3028                     	xdef	_I2C_GetFlagStatus
3029                     	xdef	_I2C_GetLastEvent
3030                     	xdef	_I2C_CheckEvent
3031                     	xdef	_I2C_SendData
3032                     	xdef	_I2C_Send7bitAddress
3033                     	xdef	_I2C_ReceiveData
3034                     	xdef	_I2C_ITConfig
3035                     	xdef	_I2C_FastModeDutyCycleConfig
3036                     	xdef	_I2C_AcknowledgeConfig
3037                     	xdef	_I2C_StretchClockCmd
3038                     	xdef	_I2C_SoftwareResetCmd
3039                     	xdef	_I2C_GenerateSTOP
3040                     	xdef	_I2C_GenerateSTART
3041                     	xdef	_I2C_GeneralCallCmd
3042                     	xdef	_I2C_Cmd
3043                     	xdef	_I2C_Init
3044                     	xdef	_I2C_DeInit
3045                     	xref	_assert_failed
3046                     	switch	.const
3047  000c               L131:
3048  000c 6c6962726172  	dc.b	"library\stm8s_i2c."
3049  001e 6300          	dc.b	"c",0
3050                     	xref.b	c_lreg
3051                     	xref.b	c_x
3071                     	xref	c_sdivx
3072                     	xref	c_ludv
3073                     	xref	c_rtol
3074                     	xref	c_smul
3075                     	xref	c_lmul
3076                     	xref	c_lcmp
3077                     	xref	c_ltor
3078                     	xref	c_lzmp
3079                     	end
