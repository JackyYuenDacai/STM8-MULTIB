   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  63                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  63                     ; 54 {
  65                     	switch	.text
  66  0000               _WWDG_Init:
  68  0000 89            	pushw	x
  69       00000000      OFST:	set	0
  72                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  74  0001 9f            	ld	a,xl
  75  0002 a180          	cp	a,#128
  76  0004 2403          	jruge	L6
  77  0006 4f            	clr	a
  78  0007 2010          	jra	L01
  79  0009               L6:
  80  0009 ae0038        	ldw	x,#56
  81  000c 89            	pushw	x
  82  000d ae0000        	ldw	x,#0
  83  0010 89            	pushw	x
  84  0011 ae0000        	ldw	x,#L33
  85  0014 cd0000        	call	_assert_failed
  87  0017 5b04          	addw	sp,#4
  88  0019               L01:
  89                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  91  0019 357f50d2      	mov	20690,#127
  92                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  94  001d 7b01          	ld	a,(OFST+1,sp)
  95  001f aac0          	or	a,#192
  96  0021 c750d1        	ld	20689,a
  97                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
  99  0024 7b02          	ld	a,(OFST+2,sp)
 100  0026 aa40          	or	a,#64
 101  0028 a47f          	and	a,#127
 102  002a c750d2        	ld	20690,a
 103                     ; 61 }
 106  002d 85            	popw	x
 107  002e 81            	ret
 142                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 142                     ; 70 {
 143                     	switch	.text
 144  002f               _WWDG_SetCounter:
 146  002f 88            	push	a
 147       00000000      OFST:	set	0
 150                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 152  0030 a180          	cp	a,#128
 153  0032 2403          	jruge	L41
 154  0034 4f            	clr	a
 155  0035 2010          	jra	L61
 156  0037               L41:
 157  0037 ae0048        	ldw	x,#72
 158  003a 89            	pushw	x
 159  003b ae0000        	ldw	x,#0
 160  003e 89            	pushw	x
 161  003f ae0000        	ldw	x,#L33
 162  0042 cd0000        	call	_assert_failed
 164  0045 5b04          	addw	sp,#4
 165  0047               L61:
 166                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 168  0047 7b01          	ld	a,(OFST+1,sp)
 169  0049 a47f          	and	a,#127
 170  004b c750d1        	ld	20689,a
 171                     ; 77 }
 174  004e 84            	pop	a
 175  004f 81            	ret
 198                     ; 86 uint8_t WWDG_GetCounter(void)
 198                     ; 87 {
 199                     	switch	.text
 200  0050               _WWDG_GetCounter:
 204                     ; 88   return(WWDG->CR);
 206  0050 c650d1        	ld	a,20689
 209  0053 81            	ret
 232                     ; 96 void WWDG_SWReset(void)
 232                     ; 97 {
 233                     	switch	.text
 234  0054               _WWDG_SWReset:
 238                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 240  0054 358050d1      	mov	20689,#128
 241                     ; 99 }
 244  0058 81            	ret
 280                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 280                     ; 109 {
 281                     	switch	.text
 282  0059               _WWDG_SetWindowValue:
 284  0059 88            	push	a
 285       00000000      OFST:	set	0
 288                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 290  005a a180          	cp	a,#128
 291  005c 2403          	jruge	L62
 292  005e 4f            	clr	a
 293  005f 2010          	jra	L03
 294  0061               L62:
 295  0061 ae006f        	ldw	x,#111
 296  0064 89            	pushw	x
 297  0065 ae0000        	ldw	x,#0
 298  0068 89            	pushw	x
 299  0069 ae0000        	ldw	x,#L33
 300  006c cd0000        	call	_assert_failed
 302  006f 5b04          	addw	sp,#4
 303  0071               L03:
 304                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 306  0071 7b01          	ld	a,(OFST+1,sp)
 307  0073 aa40          	or	a,#64
 308  0075 a47f          	and	a,#127
 309  0077 c750d2        	ld	20690,a
 310                     ; 114 }
 313  007a 84            	pop	a
 314  007b 81            	ret
 327                     	xdef	_WWDG_SetWindowValue
 328                     	xdef	_WWDG_SWReset
 329                     	xdef	_WWDG_GetCounter
 330                     	xdef	_WWDG_SetCounter
 331                     	xdef	_WWDG_Init
 332                     	xref	_assert_failed
 333                     .const:	section	.text
 334  0000               L33:
 335  0000 6c6962726172  	dc.b	"library\stm8s_wwdg"
 336  0012 2e6300        	dc.b	".c",0
 356                     	end
