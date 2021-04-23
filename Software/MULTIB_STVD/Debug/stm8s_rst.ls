   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
 117                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 117                     ; 55 {
 119                     	switch	.text
 120  0000               _RST_GetFlagStatus:
 122  0000 88            	push	a
 123       00000000      OFST:	set	0
 126                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 128  0001 a110          	cp	a,#16
 129  0003 2710          	jreq	L01
 130  0005 a108          	cp	a,#8
 131  0007 270c          	jreq	L01
 132  0009 a104          	cp	a,#4
 133  000b 2708          	jreq	L01
 134  000d a102          	cp	a,#2
 135  000f 2704          	jreq	L01
 136  0011 a101          	cp	a,#1
 137  0013 2603          	jrne	L6
 138  0015               L01:
 139  0015 4f            	clr	a
 140  0016 2010          	jra	L21
 141  0018               L6:
 142  0018 ae0039        	ldw	x,#57
 143  001b 89            	pushw	x
 144  001c ae0000        	ldw	x,#0
 145  001f 89            	pushw	x
 146  0020 ae0000        	ldw	x,#L55
 147  0023 cd0000        	call	_assert_failed
 149  0026 5b04          	addw	sp,#4
 150  0028               L21:
 151                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 153  0028 c650b3        	ld	a,20659
 154  002b 1501          	bcp	a,(OFST+1,sp)
 155  002d 2603          	jrne	L41
 156  002f 4f            	clr	a
 157  0030 2002          	jra	L61
 158  0032               L41:
 159  0032 a601          	ld	a,#1
 160  0034               L61:
 163  0034 5b01          	addw	sp,#1
 164  0036 81            	ret
 200                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 200                     ; 70 {
 201                     	switch	.text
 202  0037               _RST_ClearFlag:
 204  0037 88            	push	a
 205       00000000      OFST:	set	0
 208                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 210  0038 a110          	cp	a,#16
 211  003a 2710          	jreq	L42
 212  003c a108          	cp	a,#8
 213  003e 270c          	jreq	L42
 214  0040 a104          	cp	a,#4
 215  0042 2708          	jreq	L42
 216  0044 a102          	cp	a,#2
 217  0046 2704          	jreq	L42
 218  0048 a101          	cp	a,#1
 219  004a 2603          	jrne	L22
 220  004c               L42:
 221  004c 4f            	clr	a
 222  004d 2010          	jra	L62
 223  004f               L22:
 224  004f ae0048        	ldw	x,#72
 225  0052 89            	pushw	x
 226  0053 ae0000        	ldw	x,#0
 227  0056 89            	pushw	x
 228  0057 ae0000        	ldw	x,#L55
 229  005a cd0000        	call	_assert_failed
 231  005d 5b04          	addw	sp,#4
 232  005f               L62:
 233                     ; 74   RST->SR = (uint8_t)RST_Flag;
 235  005f 7b01          	ld	a,(OFST+1,sp)
 236  0061 c750b3        	ld	20659,a
 237                     ; 75 }
 240  0064 84            	pop	a
 241  0065 81            	ret
 254                     	xdef	_RST_ClearFlag
 255                     	xdef	_RST_GetFlagStatus
 256                     	xref	_assert_failed
 257                     .const:	section	.text
 258  0000               L55:
 259  0000 6c6962726172  	dc.b	"library\stm8s_rst."
 260  0012 6300          	dc.b	"c",0
 280                     	end
