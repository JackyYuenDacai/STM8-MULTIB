   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  78                     ; 48 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  78                     ; 49 {
  80                     	switch	.text
  81  0000               _IWDG_WriteAccessCmd:
  83  0000 88            	push	a
  84       00000000      OFST:	set	0
  87                     ; 51   assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  89  0001 a155          	cp	a,#85
  90  0003 2703          	jreq	L01
  91  0005 4d            	tnz	a
  92  0006 2603          	jrne	L6
  93  0008               L01:
  94  0008 4f            	clr	a
  95  0009 2010          	jra	L21
  96  000b               L6:
  97  000b ae0033        	ldw	x,#51
  98  000e 89            	pushw	x
  99  000f ae0000        	ldw	x,#0
 100  0012 89            	pushw	x
 101  0013 ae0000        	ldw	x,#L73
 102  0016 cd0000        	call	_assert_failed
 104  0019 5b04          	addw	sp,#4
 105  001b               L21:
 106                     ; 53   IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
 108  001b 7b01          	ld	a,(OFST+1,sp)
 109  001d c750e0        	ld	20704,a
 110                     ; 54 }
 113  0020 84            	pop	a
 114  0021 81            	ret
 205                     ; 63 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 205                     ; 64 {
 206                     	switch	.text
 207  0022               _IWDG_SetPrescaler:
 209  0022 88            	push	a
 210       00000000      OFST:	set	0
 213                     ; 66   assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 215  0023 4d            	tnz	a
 216  0024 2718          	jreq	L02
 217  0026 a101          	cp	a,#1
 218  0028 2714          	jreq	L02
 219  002a a102          	cp	a,#2
 220  002c 2710          	jreq	L02
 221  002e a103          	cp	a,#3
 222  0030 270c          	jreq	L02
 223  0032 a104          	cp	a,#4
 224  0034 2708          	jreq	L02
 225  0036 a105          	cp	a,#5
 226  0038 2704          	jreq	L02
 227  003a a106          	cp	a,#6
 228  003c 2603          	jrne	L61
 229  003e               L02:
 230  003e 4f            	clr	a
 231  003f 2010          	jra	L22
 232  0041               L61:
 233  0041 ae0042        	ldw	x,#66
 234  0044 89            	pushw	x
 235  0045 ae0000        	ldw	x,#0
 236  0048 89            	pushw	x
 237  0049 ae0000        	ldw	x,#L73
 238  004c cd0000        	call	_assert_failed
 240  004f 5b04          	addw	sp,#4
 241  0051               L22:
 242                     ; 68   IWDG->PR = (uint8_t)IWDG_Prescaler;
 244  0051 7b01          	ld	a,(OFST+1,sp)
 245  0053 c750e1        	ld	20705,a
 246                     ; 69 }
 249  0056 84            	pop	a
 250  0057 81            	ret
 284                     ; 78 void IWDG_SetReload(uint8_t IWDG_Reload)
 284                     ; 79 {
 285                     	switch	.text
 286  0058               _IWDG_SetReload:
 290                     ; 80   IWDG->RLR = IWDG_Reload;
 292  0058 c750e2        	ld	20706,a
 293                     ; 81 }
 296  005b 81            	ret
 319                     ; 89 void IWDG_ReloadCounter(void)
 319                     ; 90 {
 320                     	switch	.text
 321  005c               _IWDG_ReloadCounter:
 325                     ; 91   IWDG->KR = IWDG_KEY_REFRESH;
 327  005c 35aa50e0      	mov	20704,#170
 328                     ; 92 }
 331  0060 81            	ret
 354                     ; 99 void IWDG_Enable(void)
 354                     ; 100 {
 355                     	switch	.text
 356  0061               _IWDG_Enable:
 360                     ; 101   IWDG->KR = IWDG_KEY_ENABLE;
 362  0061 35cc50e0      	mov	20704,#204
 363                     ; 102 }
 366  0065 81            	ret
 379                     	xdef	_IWDG_Enable
 380                     	xdef	_IWDG_ReloadCounter
 381                     	xdef	_IWDG_SetReload
 382                     	xdef	_IWDG_SetPrescaler
 383                     	xdef	_IWDG_WriteAccessCmd
 384                     	xref	_assert_failed
 385                     .const:	section	.text
 386  0000               L73:
 387  0000 6c6962726172  	dc.b	"library\stm8s_iwdg"
 388  0012 2e6300        	dc.b	".c",0
 408                     	end
