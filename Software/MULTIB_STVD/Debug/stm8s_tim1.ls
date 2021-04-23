   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  42                     ; 58 void TIM1_DeInit(void)
  42                     ; 59 {
  44                     	switch	.text
  45  0000               _TIM1_DeInit:
  49                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  51  0000 725f5250      	clr	21072
  52                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  54  0004 725f5251      	clr	21073
  55                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  57  0008 725f5252      	clr	21074
  58                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  60  000c 725f5253      	clr	21075
  61                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  63  0010 725f5254      	clr	21076
  64                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  66  0014 725f5256      	clr	21078
  67                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  69  0018 725f525c      	clr	21084
  70                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  72  001c 725f525d      	clr	21085
  73                     ; 70   TIM1->CCMR1 = 0x01;
  75  0020 35015258      	mov	21080,#1
  76                     ; 71   TIM1->CCMR2 = 0x01;
  78  0024 35015259      	mov	21081,#1
  79                     ; 72   TIM1->CCMR3 = 0x01;
  81  0028 3501525a      	mov	21082,#1
  82                     ; 73   TIM1->CCMR4 = 0x01;
  84  002c 3501525b      	mov	21083,#1
  85                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  87  0030 725f525c      	clr	21084
  88                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  90  0034 725f525d      	clr	21085
  91                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  93  0038 725f5258      	clr	21080
  94                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  96  003c 725f5259      	clr	21081
  97                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  99  0040 725f525a      	clr	21082
 100                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 102  0044 725f525b      	clr	21083
 103                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 105  0048 725f525e      	clr	21086
 106                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 108  004c 725f525f      	clr	21087
 109                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 111  0050 725f5260      	clr	21088
 112                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 114  0054 725f5261      	clr	21089
 115                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 117  0058 35ff5262      	mov	21090,#255
 118                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 120  005c 35ff5263      	mov	21091,#255
 121                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 123  0060 725f5265      	clr	21093
 124                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 126  0064 725f5266      	clr	21094
 127                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 129  0068 725f5267      	clr	21095
 130                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 132  006c 725f5268      	clr	21096
 133                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 135  0070 725f5269      	clr	21097
 136                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 138  0074 725f526a      	clr	21098
 139                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 141  0078 725f526b      	clr	21099
 142                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 144  007c 725f526c      	clr	21100
 145                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 147  0080 725f526f      	clr	21103
 148                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 150  0084 35015257      	mov	21079,#1
 151                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 153  0088 725f526e      	clr	21102
 154                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 156  008c 725f526d      	clr	21101
 157                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 159  0090 725f5264      	clr	21092
 160                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 162  0094 725f5255      	clr	21077
 163                     ; 101 }
 166  0098 81            	ret
 276                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 276                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 276                     ; 113                        uint16_t TIM1_Period,
 276                     ; 114                        uint8_t TIM1_RepetitionCounter)
 276                     ; 115 {
 277                     	switch	.text
 278  0099               _TIM1_TimeBaseInit:
 280  0099 89            	pushw	x
 281       00000000      OFST:	set	0
 284                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 286  009a 0d05          	tnz	(OFST+5,sp)
 287  009c 2718          	jreq	L21
 288  009e 7b05          	ld	a,(OFST+5,sp)
 289  00a0 a110          	cp	a,#16
 290  00a2 2712          	jreq	L21
 291  00a4 7b05          	ld	a,(OFST+5,sp)
 292  00a6 a120          	cp	a,#32
 293  00a8 270c          	jreq	L21
 294  00aa 7b05          	ld	a,(OFST+5,sp)
 295  00ac a140          	cp	a,#64
 296  00ae 2706          	jreq	L21
 297  00b0 7b05          	ld	a,(OFST+5,sp)
 298  00b2 a160          	cp	a,#96
 299  00b4 2603          	jrne	L01
 300  00b6               L21:
 301  00b6 4f            	clr	a
 302  00b7 2010          	jra	L41
 303  00b9               L01:
 304  00b9 ae0075        	ldw	x,#117
 305  00bc 89            	pushw	x
 306  00bd ae0000        	ldw	x,#0
 307  00c0 89            	pushw	x
 308  00c1 ae0000        	ldw	x,#L101
 309  00c4 cd0000        	call	_assert_failed
 311  00c7 5b04          	addw	sp,#4
 312  00c9               L41:
 313                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 315  00c9 7b06          	ld	a,(OFST+6,sp)
 316  00cb c75262        	ld	21090,a
 317                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 319  00ce 7b07          	ld	a,(OFST+7,sp)
 320  00d0 c75263        	ld	21091,a
 321                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 323  00d3 7b01          	ld	a,(OFST+1,sp)
 324  00d5 c75260        	ld	21088,a
 325                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 327  00d8 7b02          	ld	a,(OFST+2,sp)
 328  00da c75261        	ld	21089,a
 329                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 329                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 331  00dd c65250        	ld	a,21072
 332  00e0 a48f          	and	a,#143
 333  00e2 1a05          	or	a,(OFST+5,sp)
 334  00e4 c75250        	ld	21072,a
 335                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 337  00e7 7b08          	ld	a,(OFST+8,sp)
 338  00e9 c75264        	ld	21092,a
 339                     ; 133 }
 342  00ec 85            	popw	x
 343  00ed 81            	ret
 629                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 629                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 629                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 629                     ; 157                   uint16_t TIM1_Pulse,
 629                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 629                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 629                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 629                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 629                     ; 162 {
 630                     	switch	.text
 631  00ee               _TIM1_OC1Init:
 633  00ee 89            	pushw	x
 634  00ef 5203          	subw	sp,#3
 635       00000003      OFST:	set	3
 638                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 640  00f1 9e            	ld	a,xh
 641  00f2 4d            	tnz	a
 642  00f3 2719          	jreq	L22
 643  00f5 9e            	ld	a,xh
 644  00f6 a110          	cp	a,#16
 645  00f8 2714          	jreq	L22
 646  00fa 9e            	ld	a,xh
 647  00fb a120          	cp	a,#32
 648  00fd 270f          	jreq	L22
 649  00ff 9e            	ld	a,xh
 650  0100 a130          	cp	a,#48
 651  0102 270a          	jreq	L22
 652  0104 9e            	ld	a,xh
 653  0105 a160          	cp	a,#96
 654  0107 2705          	jreq	L22
 655  0109 9e            	ld	a,xh
 656  010a a170          	cp	a,#112
 657  010c 2603          	jrne	L02
 658  010e               L22:
 659  010e 4f            	clr	a
 660  010f 2010          	jra	L42
 661  0111               L02:
 662  0111 ae00a4        	ldw	x,#164
 663  0114 89            	pushw	x
 664  0115 ae0000        	ldw	x,#0
 665  0118 89            	pushw	x
 666  0119 ae0000        	ldw	x,#L101
 667  011c cd0000        	call	_assert_failed
 669  011f 5b04          	addw	sp,#4
 670  0121               L42:
 671                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 673  0121 0d05          	tnz	(OFST+2,sp)
 674  0123 2706          	jreq	L03
 675  0125 7b05          	ld	a,(OFST+2,sp)
 676  0127 a111          	cp	a,#17
 677  0129 2603          	jrne	L62
 678  012b               L03:
 679  012b 4f            	clr	a
 680  012c 2010          	jra	L23
 681  012e               L62:
 682  012e ae00a5        	ldw	x,#165
 683  0131 89            	pushw	x
 684  0132 ae0000        	ldw	x,#0
 685  0135 89            	pushw	x
 686  0136 ae0000        	ldw	x,#L101
 687  0139 cd0000        	call	_assert_failed
 689  013c 5b04          	addw	sp,#4
 690  013e               L23:
 691                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 693  013e 0d08          	tnz	(OFST+5,sp)
 694  0140 2706          	jreq	L63
 695  0142 7b08          	ld	a,(OFST+5,sp)
 696  0144 a144          	cp	a,#68
 697  0146 2603          	jrne	L43
 698  0148               L63:
 699  0148 4f            	clr	a
 700  0149 2010          	jra	L04
 701  014b               L43:
 702  014b ae00a6        	ldw	x,#166
 703  014e 89            	pushw	x
 704  014f ae0000        	ldw	x,#0
 705  0152 89            	pushw	x
 706  0153 ae0000        	ldw	x,#L101
 707  0156 cd0000        	call	_assert_failed
 709  0159 5b04          	addw	sp,#4
 710  015b               L04:
 711                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 713  015b 0d0b          	tnz	(OFST+8,sp)
 714  015d 2706          	jreq	L44
 715  015f 7b0b          	ld	a,(OFST+8,sp)
 716  0161 a122          	cp	a,#34
 717  0163 2603          	jrne	L24
 718  0165               L44:
 719  0165 4f            	clr	a
 720  0166 2010          	jra	L64
 721  0168               L24:
 722  0168 ae00a7        	ldw	x,#167
 723  016b 89            	pushw	x
 724  016c ae0000        	ldw	x,#0
 725  016f 89            	pushw	x
 726  0170 ae0000        	ldw	x,#L101
 727  0173 cd0000        	call	_assert_failed
 729  0176 5b04          	addw	sp,#4
 730  0178               L64:
 731                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 733  0178 0d0c          	tnz	(OFST+9,sp)
 734  017a 2706          	jreq	L25
 735  017c 7b0c          	ld	a,(OFST+9,sp)
 736  017e a188          	cp	a,#136
 737  0180 2603          	jrne	L05
 738  0182               L25:
 739  0182 4f            	clr	a
 740  0183 2010          	jra	L45
 741  0185               L05:
 742  0185 ae00a8        	ldw	x,#168
 743  0188 89            	pushw	x
 744  0189 ae0000        	ldw	x,#0
 745  018c 89            	pushw	x
 746  018d ae0000        	ldw	x,#L101
 747  0190 cd0000        	call	_assert_failed
 749  0193 5b04          	addw	sp,#4
 750  0195               L45:
 751                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 753  0195 7b0d          	ld	a,(OFST+10,sp)
 754  0197 a155          	cp	a,#85
 755  0199 2704          	jreq	L06
 756  019b 0d0d          	tnz	(OFST+10,sp)
 757  019d 2603          	jrne	L65
 758  019f               L06:
 759  019f 4f            	clr	a
 760  01a0 2010          	jra	L26
 761  01a2               L65:
 762  01a2 ae00a9        	ldw	x,#169
 763  01a5 89            	pushw	x
 764  01a6 ae0000        	ldw	x,#0
 765  01a9 89            	pushw	x
 766  01aa ae0000        	ldw	x,#L101
 767  01ad cd0000        	call	_assert_failed
 769  01b0 5b04          	addw	sp,#4
 770  01b2               L26:
 771                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 773  01b2 7b0e          	ld	a,(OFST+11,sp)
 774  01b4 a12a          	cp	a,#42
 775  01b6 2704          	jreq	L66
 776  01b8 0d0e          	tnz	(OFST+11,sp)
 777  01ba 2603          	jrne	L46
 778  01bc               L66:
 779  01bc 4f            	clr	a
 780  01bd 2010          	jra	L07
 781  01bf               L46:
 782  01bf ae00aa        	ldw	x,#170
 783  01c2 89            	pushw	x
 784  01c3 ae0000        	ldw	x,#0
 785  01c6 89            	pushw	x
 786  01c7 ae0000        	ldw	x,#L101
 787  01ca cd0000        	call	_assert_failed
 789  01cd 5b04          	addw	sp,#4
 790  01cf               L07:
 791                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 791                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 793  01cf c6525c        	ld	a,21084
 794  01d2 a4f0          	and	a,#240
 795  01d4 c7525c        	ld	21084,a
 796                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 796                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 796                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 796                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 798  01d7 7b0c          	ld	a,(OFST+9,sp)
 799  01d9 a408          	and	a,#8
 800  01db 6b03          	ld	(OFST+0,sp),a
 801  01dd 7b0b          	ld	a,(OFST+8,sp)
 802  01df a402          	and	a,#2
 803  01e1 1a03          	or	a,(OFST+0,sp)
 804  01e3 6b02          	ld	(OFST-1,sp),a
 805  01e5 7b08          	ld	a,(OFST+5,sp)
 806  01e7 a404          	and	a,#4
 807  01e9 6b01          	ld	(OFST-2,sp),a
 808  01eb 7b05          	ld	a,(OFST+2,sp)
 809  01ed a401          	and	a,#1
 810  01ef 1a01          	or	a,(OFST-2,sp)
 811  01f1 1a02          	or	a,(OFST-1,sp)
 812  01f3 ca525c        	or	a,21084
 813  01f6 c7525c        	ld	21084,a
 814                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 814                     ; 185                           (uint8_t)TIM1_OCMode);
 816  01f9 c65258        	ld	a,21080
 817  01fc a48f          	and	a,#143
 818  01fe 1a04          	or	a,(OFST+1,sp)
 819  0200 c75258        	ld	21080,a
 820                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 822  0203 c6526f        	ld	a,21103
 823  0206 a4fc          	and	a,#252
 824  0208 c7526f        	ld	21103,a
 825                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 825                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 827  020b 7b0e          	ld	a,(OFST+11,sp)
 828  020d a402          	and	a,#2
 829  020f 6b03          	ld	(OFST+0,sp),a
 830  0211 7b0d          	ld	a,(OFST+10,sp)
 831  0213 a401          	and	a,#1
 832  0215 1a03          	or	a,(OFST+0,sp)
 833  0217 ca526f        	or	a,21103
 834  021a c7526f        	ld	21103,a
 835                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 837  021d 7b09          	ld	a,(OFST+6,sp)
 838  021f c75265        	ld	21093,a
 839                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 841  0222 7b0a          	ld	a,(OFST+7,sp)
 842  0224 c75266        	ld	21094,a
 843                     ; 196 }
 846  0227 5b05          	addw	sp,#5
 847  0229 81            	ret
 952                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 952                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 952                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 952                     ; 220                   uint16_t TIM1_Pulse,
 952                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 952                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 952                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 952                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 952                     ; 225 {
 953                     	switch	.text
 954  022a               _TIM1_OC2Init:
 956  022a 89            	pushw	x
 957  022b 5203          	subw	sp,#3
 958       00000003      OFST:	set	3
 961                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 963  022d 9e            	ld	a,xh
 964  022e 4d            	tnz	a
 965  022f 2719          	jreq	L67
 966  0231 9e            	ld	a,xh
 967  0232 a110          	cp	a,#16
 968  0234 2714          	jreq	L67
 969  0236 9e            	ld	a,xh
 970  0237 a120          	cp	a,#32
 971  0239 270f          	jreq	L67
 972  023b 9e            	ld	a,xh
 973  023c a130          	cp	a,#48
 974  023e 270a          	jreq	L67
 975  0240 9e            	ld	a,xh
 976  0241 a160          	cp	a,#96
 977  0243 2705          	jreq	L67
 978  0245 9e            	ld	a,xh
 979  0246 a170          	cp	a,#112
 980  0248 2603          	jrne	L47
 981  024a               L67:
 982  024a 4f            	clr	a
 983  024b 2010          	jra	L001
 984  024d               L47:
 985  024d ae00e3        	ldw	x,#227
 986  0250 89            	pushw	x
 987  0251 ae0000        	ldw	x,#0
 988  0254 89            	pushw	x
 989  0255 ae0000        	ldw	x,#L101
 990  0258 cd0000        	call	_assert_failed
 992  025b 5b04          	addw	sp,#4
 993  025d               L001:
 994                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 996  025d 0d05          	tnz	(OFST+2,sp)
 997  025f 2706          	jreq	L401
 998  0261 7b05          	ld	a,(OFST+2,sp)
 999  0263 a111          	cp	a,#17
1000  0265 2603          	jrne	L201
1001  0267               L401:
1002  0267 4f            	clr	a
1003  0268 2010          	jra	L601
1004  026a               L201:
1005  026a ae00e4        	ldw	x,#228
1006  026d 89            	pushw	x
1007  026e ae0000        	ldw	x,#0
1008  0271 89            	pushw	x
1009  0272 ae0000        	ldw	x,#L101
1010  0275 cd0000        	call	_assert_failed
1012  0278 5b04          	addw	sp,#4
1013  027a               L601:
1014                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1016  027a 0d08          	tnz	(OFST+5,sp)
1017  027c 2706          	jreq	L211
1018  027e 7b08          	ld	a,(OFST+5,sp)
1019  0280 a144          	cp	a,#68
1020  0282 2603          	jrne	L011
1021  0284               L211:
1022  0284 4f            	clr	a
1023  0285 2010          	jra	L411
1024  0287               L011:
1025  0287 ae00e5        	ldw	x,#229
1026  028a 89            	pushw	x
1027  028b ae0000        	ldw	x,#0
1028  028e 89            	pushw	x
1029  028f ae0000        	ldw	x,#L101
1030  0292 cd0000        	call	_assert_failed
1032  0295 5b04          	addw	sp,#4
1033  0297               L411:
1034                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1036  0297 0d0b          	tnz	(OFST+8,sp)
1037  0299 2706          	jreq	L021
1038  029b 7b0b          	ld	a,(OFST+8,sp)
1039  029d a122          	cp	a,#34
1040  029f 2603          	jrne	L611
1041  02a1               L021:
1042  02a1 4f            	clr	a
1043  02a2 2010          	jra	L221
1044  02a4               L611:
1045  02a4 ae00e6        	ldw	x,#230
1046  02a7 89            	pushw	x
1047  02a8 ae0000        	ldw	x,#0
1048  02ab 89            	pushw	x
1049  02ac ae0000        	ldw	x,#L101
1050  02af cd0000        	call	_assert_failed
1052  02b2 5b04          	addw	sp,#4
1053  02b4               L221:
1054                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1056  02b4 0d0c          	tnz	(OFST+9,sp)
1057  02b6 2706          	jreq	L621
1058  02b8 7b0c          	ld	a,(OFST+9,sp)
1059  02ba a188          	cp	a,#136
1060  02bc 2603          	jrne	L421
1061  02be               L621:
1062  02be 4f            	clr	a
1063  02bf 2010          	jra	L031
1064  02c1               L421:
1065  02c1 ae00e7        	ldw	x,#231
1066  02c4 89            	pushw	x
1067  02c5 ae0000        	ldw	x,#0
1068  02c8 89            	pushw	x
1069  02c9 ae0000        	ldw	x,#L101
1070  02cc cd0000        	call	_assert_failed
1072  02cf 5b04          	addw	sp,#4
1073  02d1               L031:
1074                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1076  02d1 7b0d          	ld	a,(OFST+10,sp)
1077  02d3 a155          	cp	a,#85
1078  02d5 2704          	jreq	L431
1079  02d7 0d0d          	tnz	(OFST+10,sp)
1080  02d9 2603          	jrne	L231
1081  02db               L431:
1082  02db 4f            	clr	a
1083  02dc 2010          	jra	L631
1084  02de               L231:
1085  02de ae00e8        	ldw	x,#232
1086  02e1 89            	pushw	x
1087  02e2 ae0000        	ldw	x,#0
1088  02e5 89            	pushw	x
1089  02e6 ae0000        	ldw	x,#L101
1090  02e9 cd0000        	call	_assert_failed
1092  02ec 5b04          	addw	sp,#4
1093  02ee               L631:
1094                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1096  02ee 7b0e          	ld	a,(OFST+11,sp)
1097  02f0 a12a          	cp	a,#42
1098  02f2 2704          	jreq	L241
1099  02f4 0d0e          	tnz	(OFST+11,sp)
1100  02f6 2603          	jrne	L041
1101  02f8               L241:
1102  02f8 4f            	clr	a
1103  02f9 2010          	jra	L441
1104  02fb               L041:
1105  02fb ae00e9        	ldw	x,#233
1106  02fe 89            	pushw	x
1107  02ff ae0000        	ldw	x,#0
1108  0302 89            	pushw	x
1109  0303 ae0000        	ldw	x,#L101
1110  0306 cd0000        	call	_assert_failed
1112  0309 5b04          	addw	sp,#4
1113  030b               L441:
1114                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
1114                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
1116  030b c6525c        	ld	a,21084
1117  030e a40f          	and	a,#15
1118  0310 c7525c        	ld	21084,a
1119                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
1119                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
1119                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
1119                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
1121  0313 7b0c          	ld	a,(OFST+9,sp)
1122  0315 a480          	and	a,#128
1123  0317 6b03          	ld	(OFST+0,sp),a
1124  0319 7b0b          	ld	a,(OFST+8,sp)
1125  031b a420          	and	a,#32
1126  031d 1a03          	or	a,(OFST+0,sp)
1127  031f 6b02          	ld	(OFST-1,sp),a
1128  0321 7b08          	ld	a,(OFST+5,sp)
1129  0323 a440          	and	a,#64
1130  0325 6b01          	ld	(OFST-2,sp),a
1131  0327 7b05          	ld	a,(OFST+2,sp)
1132  0329 a410          	and	a,#16
1133  032b 1a01          	or	a,(OFST-2,sp)
1134  032d 1a02          	or	a,(OFST-1,sp)
1135  032f ca525c        	or	a,21084
1136  0332 c7525c        	ld	21084,a
1137                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1137                     ; 249                           (uint8_t)TIM1_OCMode);
1139  0335 c65259        	ld	a,21081
1140  0338 a48f          	and	a,#143
1141  033a 1a04          	or	a,(OFST+1,sp)
1142  033c c75259        	ld	21081,a
1143                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1145  033f c6526f        	ld	a,21103
1146  0342 a4f3          	and	a,#243
1147  0344 c7526f        	ld	21103,a
1148                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1148                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1150  0347 7b0e          	ld	a,(OFST+11,sp)
1151  0349 a408          	and	a,#8
1152  034b 6b03          	ld	(OFST+0,sp),a
1153  034d 7b0d          	ld	a,(OFST+10,sp)
1154  034f a404          	and	a,#4
1155  0351 1a03          	or	a,(OFST+0,sp)
1156  0353 ca526f        	or	a,21103
1157  0356 c7526f        	ld	21103,a
1158                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1160  0359 7b09          	ld	a,(OFST+6,sp)
1161  035b c75267        	ld	21095,a
1162                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1164  035e 7b0a          	ld	a,(OFST+7,sp)
1165  0360 c75268        	ld	21096,a
1166                     ; 260 }
1169  0363 5b05          	addw	sp,#5
1170  0365 81            	ret
1275                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1275                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1275                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1275                     ; 284                   uint16_t TIM1_Pulse,
1275                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1275                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1275                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1275                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1275                     ; 289 {
1276                     	switch	.text
1277  0366               _TIM1_OC3Init:
1279  0366 89            	pushw	x
1280  0367 5203          	subw	sp,#3
1281       00000003      OFST:	set	3
1284                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1286  0369 9e            	ld	a,xh
1287  036a 4d            	tnz	a
1288  036b 2719          	jreq	L251
1289  036d 9e            	ld	a,xh
1290  036e a110          	cp	a,#16
1291  0370 2714          	jreq	L251
1292  0372 9e            	ld	a,xh
1293  0373 a120          	cp	a,#32
1294  0375 270f          	jreq	L251
1295  0377 9e            	ld	a,xh
1296  0378 a130          	cp	a,#48
1297  037a 270a          	jreq	L251
1298  037c 9e            	ld	a,xh
1299  037d a160          	cp	a,#96
1300  037f 2705          	jreq	L251
1301  0381 9e            	ld	a,xh
1302  0382 a170          	cp	a,#112
1303  0384 2603          	jrne	L051
1304  0386               L251:
1305  0386 4f            	clr	a
1306  0387 2010          	jra	L451
1307  0389               L051:
1308  0389 ae0123        	ldw	x,#291
1309  038c 89            	pushw	x
1310  038d ae0000        	ldw	x,#0
1311  0390 89            	pushw	x
1312  0391 ae0000        	ldw	x,#L101
1313  0394 cd0000        	call	_assert_failed
1315  0397 5b04          	addw	sp,#4
1316  0399               L451:
1317                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1319  0399 0d05          	tnz	(OFST+2,sp)
1320  039b 2706          	jreq	L061
1321  039d 7b05          	ld	a,(OFST+2,sp)
1322  039f a111          	cp	a,#17
1323  03a1 2603          	jrne	L651
1324  03a3               L061:
1325  03a3 4f            	clr	a
1326  03a4 2010          	jra	L261
1327  03a6               L651:
1328  03a6 ae0124        	ldw	x,#292
1329  03a9 89            	pushw	x
1330  03aa ae0000        	ldw	x,#0
1331  03ad 89            	pushw	x
1332  03ae ae0000        	ldw	x,#L101
1333  03b1 cd0000        	call	_assert_failed
1335  03b4 5b04          	addw	sp,#4
1336  03b6               L261:
1337                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1339  03b6 0d08          	tnz	(OFST+5,sp)
1340  03b8 2706          	jreq	L661
1341  03ba 7b08          	ld	a,(OFST+5,sp)
1342  03bc a144          	cp	a,#68
1343  03be 2603          	jrne	L461
1344  03c0               L661:
1345  03c0 4f            	clr	a
1346  03c1 2010          	jra	L071
1347  03c3               L461:
1348  03c3 ae0125        	ldw	x,#293
1349  03c6 89            	pushw	x
1350  03c7 ae0000        	ldw	x,#0
1351  03ca 89            	pushw	x
1352  03cb ae0000        	ldw	x,#L101
1353  03ce cd0000        	call	_assert_failed
1355  03d1 5b04          	addw	sp,#4
1356  03d3               L071:
1357                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1359  03d3 0d0b          	tnz	(OFST+8,sp)
1360  03d5 2706          	jreq	L471
1361  03d7 7b0b          	ld	a,(OFST+8,sp)
1362  03d9 a122          	cp	a,#34
1363  03db 2603          	jrne	L271
1364  03dd               L471:
1365  03dd 4f            	clr	a
1366  03de 2010          	jra	L671
1367  03e0               L271:
1368  03e0 ae0126        	ldw	x,#294
1369  03e3 89            	pushw	x
1370  03e4 ae0000        	ldw	x,#0
1371  03e7 89            	pushw	x
1372  03e8 ae0000        	ldw	x,#L101
1373  03eb cd0000        	call	_assert_failed
1375  03ee 5b04          	addw	sp,#4
1376  03f0               L671:
1377                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1379  03f0 0d0c          	tnz	(OFST+9,sp)
1380  03f2 2706          	jreq	L202
1381  03f4 7b0c          	ld	a,(OFST+9,sp)
1382  03f6 a188          	cp	a,#136
1383  03f8 2603          	jrne	L002
1384  03fa               L202:
1385  03fa 4f            	clr	a
1386  03fb 2010          	jra	L402
1387  03fd               L002:
1388  03fd ae0127        	ldw	x,#295
1389  0400 89            	pushw	x
1390  0401 ae0000        	ldw	x,#0
1391  0404 89            	pushw	x
1392  0405 ae0000        	ldw	x,#L101
1393  0408 cd0000        	call	_assert_failed
1395  040b 5b04          	addw	sp,#4
1396  040d               L402:
1397                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1399  040d 7b0d          	ld	a,(OFST+10,sp)
1400  040f a155          	cp	a,#85
1401  0411 2704          	jreq	L012
1402  0413 0d0d          	tnz	(OFST+10,sp)
1403  0415 2603          	jrne	L602
1404  0417               L012:
1405  0417 4f            	clr	a
1406  0418 2010          	jra	L212
1407  041a               L602:
1408  041a ae0128        	ldw	x,#296
1409  041d 89            	pushw	x
1410  041e ae0000        	ldw	x,#0
1411  0421 89            	pushw	x
1412  0422 ae0000        	ldw	x,#L101
1413  0425 cd0000        	call	_assert_failed
1415  0428 5b04          	addw	sp,#4
1416  042a               L212:
1417                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1419  042a 7b0e          	ld	a,(OFST+11,sp)
1420  042c a12a          	cp	a,#42
1421  042e 2704          	jreq	L612
1422  0430 0d0e          	tnz	(OFST+11,sp)
1423  0432 2603          	jrne	L412
1424  0434               L612:
1425  0434 4f            	clr	a
1426  0435 2010          	jra	L022
1427  0437               L412:
1428  0437 ae0129        	ldw	x,#297
1429  043a 89            	pushw	x
1430  043b ae0000        	ldw	x,#0
1431  043e 89            	pushw	x
1432  043f ae0000        	ldw	x,#L101
1433  0442 cd0000        	call	_assert_failed
1435  0445 5b04          	addw	sp,#4
1436  0447               L022:
1437                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1437                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1439  0447 c6525d        	ld	a,21085
1440  044a a4f0          	and	a,#240
1441  044c c7525d        	ld	21085,a
1442                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1442                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1442                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1442                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1444  044f 7b0c          	ld	a,(OFST+9,sp)
1445  0451 a408          	and	a,#8
1446  0453 6b03          	ld	(OFST+0,sp),a
1447  0455 7b0b          	ld	a,(OFST+8,sp)
1448  0457 a402          	and	a,#2
1449  0459 1a03          	or	a,(OFST+0,sp)
1450  045b 6b02          	ld	(OFST-1,sp),a
1451  045d 7b08          	ld	a,(OFST+5,sp)
1452  045f a404          	and	a,#4
1453  0461 6b01          	ld	(OFST-2,sp),a
1454  0463 7b05          	ld	a,(OFST+2,sp)
1455  0465 a401          	and	a,#1
1456  0467 1a01          	or	a,(OFST-2,sp)
1457  0469 1a02          	or	a,(OFST-1,sp)
1458  046b ca525d        	or	a,21085
1459  046e c7525d        	ld	21085,a
1460                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1460                     ; 312                           (uint8_t)TIM1_OCMode);
1462  0471 c6525a        	ld	a,21082
1463  0474 a48f          	and	a,#143
1464  0476 1a04          	or	a,(OFST+1,sp)
1465  0478 c7525a        	ld	21082,a
1466                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1468  047b c6526f        	ld	a,21103
1469  047e a4cf          	and	a,#207
1470  0480 c7526f        	ld	21103,a
1471                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1471                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1473  0483 7b0e          	ld	a,(OFST+11,sp)
1474  0485 a420          	and	a,#32
1475  0487 6b03          	ld	(OFST+0,sp),a
1476  0489 7b0d          	ld	a,(OFST+10,sp)
1477  048b a410          	and	a,#16
1478  048d 1a03          	or	a,(OFST+0,sp)
1479  048f ca526f        	or	a,21103
1480  0492 c7526f        	ld	21103,a
1481                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1483  0495 7b09          	ld	a,(OFST+6,sp)
1484  0497 c75269        	ld	21097,a
1485                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1487  049a 7b0a          	ld	a,(OFST+7,sp)
1488  049c c7526a        	ld	21098,a
1489                     ; 323 }
1492  049f 5b05          	addw	sp,#5
1493  04a1 81            	ret
1568                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1568                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1568                     ; 340                   uint16_t TIM1_Pulse,
1568                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1568                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1568                     ; 343 {
1569                     	switch	.text
1570  04a2               _TIM1_OC4Init:
1572  04a2 89            	pushw	x
1573  04a3 88            	push	a
1574       00000001      OFST:	set	1
1577                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1579  04a4 9e            	ld	a,xh
1580  04a5 4d            	tnz	a
1581  04a6 2719          	jreq	L622
1582  04a8 9e            	ld	a,xh
1583  04a9 a110          	cp	a,#16
1584  04ab 2714          	jreq	L622
1585  04ad 9e            	ld	a,xh
1586  04ae a120          	cp	a,#32
1587  04b0 270f          	jreq	L622
1588  04b2 9e            	ld	a,xh
1589  04b3 a130          	cp	a,#48
1590  04b5 270a          	jreq	L622
1591  04b7 9e            	ld	a,xh
1592  04b8 a160          	cp	a,#96
1593  04ba 2705          	jreq	L622
1594  04bc 9e            	ld	a,xh
1595  04bd a170          	cp	a,#112
1596  04bf 2603          	jrne	L422
1597  04c1               L622:
1598  04c1 4f            	clr	a
1599  04c2 2010          	jra	L032
1600  04c4               L422:
1601  04c4 ae0159        	ldw	x,#345
1602  04c7 89            	pushw	x
1603  04c8 ae0000        	ldw	x,#0
1604  04cb 89            	pushw	x
1605  04cc ae0000        	ldw	x,#L101
1606  04cf cd0000        	call	_assert_failed
1608  04d2 5b04          	addw	sp,#4
1609  04d4               L032:
1610                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1612  04d4 0d03          	tnz	(OFST+2,sp)
1613  04d6 2706          	jreq	L432
1614  04d8 7b03          	ld	a,(OFST+2,sp)
1615  04da a111          	cp	a,#17
1616  04dc 2603          	jrne	L232
1617  04de               L432:
1618  04de 4f            	clr	a
1619  04df 2010          	jra	L632
1620  04e1               L232:
1621  04e1 ae015a        	ldw	x,#346
1622  04e4 89            	pushw	x
1623  04e5 ae0000        	ldw	x,#0
1624  04e8 89            	pushw	x
1625  04e9 ae0000        	ldw	x,#L101
1626  04ec cd0000        	call	_assert_failed
1628  04ef 5b04          	addw	sp,#4
1629  04f1               L632:
1630                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1632  04f1 0d08          	tnz	(OFST+7,sp)
1633  04f3 2706          	jreq	L242
1634  04f5 7b08          	ld	a,(OFST+7,sp)
1635  04f7 a122          	cp	a,#34
1636  04f9 2603          	jrne	L042
1637  04fb               L242:
1638  04fb 4f            	clr	a
1639  04fc 2010          	jra	L442
1640  04fe               L042:
1641  04fe ae015b        	ldw	x,#347
1642  0501 89            	pushw	x
1643  0502 ae0000        	ldw	x,#0
1644  0505 89            	pushw	x
1645  0506 ae0000        	ldw	x,#L101
1646  0509 cd0000        	call	_assert_failed
1648  050c 5b04          	addw	sp,#4
1649  050e               L442:
1650                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1652  050e 7b09          	ld	a,(OFST+8,sp)
1653  0510 a155          	cp	a,#85
1654  0512 2704          	jreq	L052
1655  0514 0d09          	tnz	(OFST+8,sp)
1656  0516 2603          	jrne	L642
1657  0518               L052:
1658  0518 4f            	clr	a
1659  0519 2010          	jra	L252
1660  051b               L642:
1661  051b ae015c        	ldw	x,#348
1662  051e 89            	pushw	x
1663  051f ae0000        	ldw	x,#0
1664  0522 89            	pushw	x
1665  0523 ae0000        	ldw	x,#L101
1666  0526 cd0000        	call	_assert_failed
1668  0529 5b04          	addw	sp,#4
1669  052b               L252:
1670                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1672  052b c6525d        	ld	a,21085
1673  052e a4cf          	and	a,#207
1674  0530 c7525d        	ld	21085,a
1675                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1675                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1677  0533 7b08          	ld	a,(OFST+7,sp)
1678  0535 a420          	and	a,#32
1679  0537 6b01          	ld	(OFST+0,sp),a
1680  0539 7b03          	ld	a,(OFST+2,sp)
1681  053b a410          	and	a,#16
1682  053d 1a01          	or	a,(OFST+0,sp)
1683  053f ca525d        	or	a,21085
1684  0542 c7525d        	ld	21085,a
1685                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1685                     ; 358                           TIM1_OCMode);
1687  0545 c6525b        	ld	a,21083
1688  0548 a48f          	and	a,#143
1689  054a 1a02          	or	a,(OFST+1,sp)
1690  054c c7525b        	ld	21083,a
1691                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1693  054f 0d09          	tnz	(OFST+8,sp)
1694  0551 270a          	jreq	L734
1695                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1697  0553 c6526f        	ld	a,21103
1698  0556 aadf          	or	a,#223
1699  0558 c7526f        	ld	21103,a
1701  055b 2004          	jra	L144
1702  055d               L734:
1703                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1705  055d 721d526f      	bres	21103,#6
1706  0561               L144:
1707                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1709  0561 7b06          	ld	a,(OFST+5,sp)
1710  0563 c7526b        	ld	21099,a
1711                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1713  0566 7b07          	ld	a,(OFST+6,sp)
1714  0568 c7526c        	ld	21100,a
1715                     ; 373 }
1718  056b 5b03          	addw	sp,#3
1719  056d 81            	ret
1925                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1925                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1925                     ; 390                      uint8_t TIM1_DeadTime,
1925                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1925                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1925                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1925                     ; 394 {
1926                     	switch	.text
1927  056e               _TIM1_BDTRConfig:
1929  056e 89            	pushw	x
1930  056f 88            	push	a
1931       00000001      OFST:	set	1
1934                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1936  0570 9e            	ld	a,xh
1937  0571 a104          	cp	a,#4
1938  0573 2704          	jreq	L062
1939  0575 9e            	ld	a,xh
1940  0576 4d            	tnz	a
1941  0577 2603          	jrne	L652
1942  0579               L062:
1943  0579 4f            	clr	a
1944  057a 2010          	jra	L262
1945  057c               L652:
1946  057c ae018c        	ldw	x,#396
1947  057f 89            	pushw	x
1948  0580 ae0000        	ldw	x,#0
1949  0583 89            	pushw	x
1950  0584 ae0000        	ldw	x,#L101
1951  0587 cd0000        	call	_assert_failed
1953  058a 5b04          	addw	sp,#4
1954  058c               L262:
1955                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1957  058c 0d03          	tnz	(OFST+2,sp)
1958  058e 2712          	jreq	L662
1959  0590 7b03          	ld	a,(OFST+2,sp)
1960  0592 a101          	cp	a,#1
1961  0594 270c          	jreq	L662
1962  0596 7b03          	ld	a,(OFST+2,sp)
1963  0598 a102          	cp	a,#2
1964  059a 2706          	jreq	L662
1965  059c 7b03          	ld	a,(OFST+2,sp)
1966  059e a103          	cp	a,#3
1967  05a0 2603          	jrne	L462
1968  05a2               L662:
1969  05a2 4f            	clr	a
1970  05a3 2010          	jra	L072
1971  05a5               L462:
1972  05a5 ae018d        	ldw	x,#397
1973  05a8 89            	pushw	x
1974  05a9 ae0000        	ldw	x,#0
1975  05ac 89            	pushw	x
1976  05ad ae0000        	ldw	x,#L101
1977  05b0 cd0000        	call	_assert_failed
1979  05b3 5b04          	addw	sp,#4
1980  05b5               L072:
1981                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1983  05b5 7b07          	ld	a,(OFST+6,sp)
1984  05b7 a110          	cp	a,#16
1985  05b9 2704          	jreq	L472
1986  05bb 0d07          	tnz	(OFST+6,sp)
1987  05bd 2603          	jrne	L272
1988  05bf               L472:
1989  05bf 4f            	clr	a
1990  05c0 2010          	jra	L672
1991  05c2               L272:
1992  05c2 ae018e        	ldw	x,#398
1993  05c5 89            	pushw	x
1994  05c6 ae0000        	ldw	x,#0
1995  05c9 89            	pushw	x
1996  05ca ae0000        	ldw	x,#L101
1997  05cd cd0000        	call	_assert_failed
1999  05d0 5b04          	addw	sp,#4
2000  05d2               L672:
2001                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
2003  05d2 0d08          	tnz	(OFST+7,sp)
2004  05d4 2706          	jreq	L203
2005  05d6 7b08          	ld	a,(OFST+7,sp)
2006  05d8 a120          	cp	a,#32
2007  05da 2603          	jrne	L003
2008  05dc               L203:
2009  05dc 4f            	clr	a
2010  05dd 2010          	jra	L403
2011  05df               L003:
2012  05df ae018f        	ldw	x,#399
2013  05e2 89            	pushw	x
2014  05e3 ae0000        	ldw	x,#0
2015  05e6 89            	pushw	x
2016  05e7 ae0000        	ldw	x,#L101
2017  05ea cd0000        	call	_assert_failed
2019  05ed 5b04          	addw	sp,#4
2020  05ef               L403:
2021                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
2023  05ef 7b09          	ld	a,(OFST+8,sp)
2024  05f1 a140          	cp	a,#64
2025  05f3 2704          	jreq	L013
2026  05f5 0d09          	tnz	(OFST+8,sp)
2027  05f7 2603          	jrne	L603
2028  05f9               L013:
2029  05f9 4f            	clr	a
2030  05fa 2010          	jra	L213
2031  05fc               L603:
2032  05fc ae0190        	ldw	x,#400
2033  05ff 89            	pushw	x
2034  0600 ae0000        	ldw	x,#0
2035  0603 89            	pushw	x
2036  0604 ae0000        	ldw	x,#L101
2037  0607 cd0000        	call	_assert_failed
2039  060a 5b04          	addw	sp,#4
2040  060c               L213:
2041                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
2043  060c 7b06          	ld	a,(OFST+5,sp)
2044  060e c7526e        	ld	21102,a
2045                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
2045                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
2045                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
2047  0611 7b07          	ld	a,(OFST+6,sp)
2048  0613 1a08          	or	a,(OFST+7,sp)
2049  0615 1a09          	or	a,(OFST+8,sp)
2050  0617 6b01          	ld	(OFST+0,sp),a
2051  0619 7b02          	ld	a,(OFST+1,sp)
2052  061b 1a03          	or	a,(OFST+2,sp)
2053  061d 1a01          	or	a,(OFST+0,sp)
2054  061f c7526d        	ld	21101,a
2055                     ; 409 }
2058  0622 5b03          	addw	sp,#3
2059  0624 81            	ret
2262                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
2262                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2262                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
2262                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2262                     ; 427                  uint8_t TIM1_ICFilter)
2262                     ; 428 {
2263                     	switch	.text
2264  0625               _TIM1_ICInit:
2266  0625 89            	pushw	x
2267       00000000      OFST:	set	0
2270                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
2272  0626 9e            	ld	a,xh
2273  0627 4d            	tnz	a
2274  0628 270f          	jreq	L023
2275  062a 9e            	ld	a,xh
2276  062b a101          	cp	a,#1
2277  062d 270a          	jreq	L023
2278  062f 9e            	ld	a,xh
2279  0630 a102          	cp	a,#2
2280  0632 2705          	jreq	L023
2281  0634 9e            	ld	a,xh
2282  0635 a103          	cp	a,#3
2283  0637 2603          	jrne	L613
2284  0639               L023:
2285  0639 4f            	clr	a
2286  063a 2010          	jra	L223
2287  063c               L613:
2288  063c ae01ae        	ldw	x,#430
2289  063f 89            	pushw	x
2290  0640 ae0000        	ldw	x,#0
2291  0643 89            	pushw	x
2292  0644 ae0000        	ldw	x,#L101
2293  0647 cd0000        	call	_assert_failed
2295  064a 5b04          	addw	sp,#4
2296  064c               L223:
2297                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2299  064c 0d02          	tnz	(OFST+2,sp)
2300  064e 2706          	jreq	L623
2301  0650 7b02          	ld	a,(OFST+2,sp)
2302  0652 a101          	cp	a,#1
2303  0654 2603          	jrne	L423
2304  0656               L623:
2305  0656 4f            	clr	a
2306  0657 2010          	jra	L033
2307  0659               L423:
2308  0659 ae01af        	ldw	x,#431
2309  065c 89            	pushw	x
2310  065d ae0000        	ldw	x,#0
2311  0660 89            	pushw	x
2312  0661 ae0000        	ldw	x,#L101
2313  0664 cd0000        	call	_assert_failed
2315  0667 5b04          	addw	sp,#4
2316  0669               L033:
2317                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2319  0669 7b05          	ld	a,(OFST+5,sp)
2320  066b a101          	cp	a,#1
2321  066d 270c          	jreq	L433
2322  066f 7b05          	ld	a,(OFST+5,sp)
2323  0671 a102          	cp	a,#2
2324  0673 2706          	jreq	L433
2325  0675 7b05          	ld	a,(OFST+5,sp)
2326  0677 a103          	cp	a,#3
2327  0679 2603          	jrne	L233
2328  067b               L433:
2329  067b 4f            	clr	a
2330  067c 2010          	jra	L633
2331  067e               L233:
2332  067e ae01b0        	ldw	x,#432
2333  0681 89            	pushw	x
2334  0682 ae0000        	ldw	x,#0
2335  0685 89            	pushw	x
2336  0686 ae0000        	ldw	x,#L101
2337  0689 cd0000        	call	_assert_failed
2339  068c 5b04          	addw	sp,#4
2340  068e               L633:
2341                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2343  068e 0d06          	tnz	(OFST+6,sp)
2344  0690 2712          	jreq	L243
2345  0692 7b06          	ld	a,(OFST+6,sp)
2346  0694 a104          	cp	a,#4
2347  0696 270c          	jreq	L243
2348  0698 7b06          	ld	a,(OFST+6,sp)
2349  069a a108          	cp	a,#8
2350  069c 2706          	jreq	L243
2351  069e 7b06          	ld	a,(OFST+6,sp)
2352  06a0 a10c          	cp	a,#12
2353  06a2 2603          	jrne	L043
2354  06a4               L243:
2355  06a4 4f            	clr	a
2356  06a5 2010          	jra	L443
2357  06a7               L043:
2358  06a7 ae01b1        	ldw	x,#433
2359  06aa 89            	pushw	x
2360  06ab ae0000        	ldw	x,#0
2361  06ae 89            	pushw	x
2362  06af ae0000        	ldw	x,#L101
2363  06b2 cd0000        	call	_assert_failed
2365  06b5 5b04          	addw	sp,#4
2366  06b7               L443:
2367                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2369  06b7 7b07          	ld	a,(OFST+7,sp)
2370  06b9 a110          	cp	a,#16
2371  06bb 2403          	jruge	L643
2372  06bd 4f            	clr	a
2373  06be 2010          	jra	L053
2374  06c0               L643:
2375  06c0 ae01b2        	ldw	x,#434
2376  06c3 89            	pushw	x
2377  06c4 ae0000        	ldw	x,#0
2378  06c7 89            	pushw	x
2379  06c8 ae0000        	ldw	x,#L101
2380  06cb cd0000        	call	_assert_failed
2382  06ce 5b04          	addw	sp,#4
2383  06d0               L053:
2384                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2386  06d0 0d01          	tnz	(OFST+1,sp)
2387  06d2 2614          	jrne	L176
2388                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2388                     ; 440                (uint8_t)TIM1_ICSelection,
2388                     ; 441                (uint8_t)TIM1_ICFilter);
2390  06d4 7b07          	ld	a,(OFST+7,sp)
2391  06d6 88            	push	a
2392  06d7 7b06          	ld	a,(OFST+6,sp)
2393  06d9 97            	ld	xl,a
2394  06da 7b03          	ld	a,(OFST+3,sp)
2395  06dc 95            	ld	xh,a
2396  06dd cd150c        	call	L3_TI1_Config
2398  06e0 84            	pop	a
2399                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2401  06e1 7b06          	ld	a,(OFST+6,sp)
2402  06e3 cd126b        	call	_TIM1_SetIC1Prescaler
2405  06e6 2046          	jra	L376
2406  06e8               L176:
2407                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2409  06e8 7b01          	ld	a,(OFST+1,sp)
2410  06ea a101          	cp	a,#1
2411  06ec 2614          	jrne	L576
2412                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2412                     ; 449                (uint8_t)TIM1_ICSelection,
2412                     ; 450                (uint8_t)TIM1_ICFilter);
2414  06ee 7b07          	ld	a,(OFST+7,sp)
2415  06f0 88            	push	a
2416  06f1 7b06          	ld	a,(OFST+6,sp)
2417  06f3 97            	ld	xl,a
2418  06f4 7b03          	ld	a,(OFST+3,sp)
2419  06f6 95            	ld	xh,a
2420  06f7 cd153c        	call	L5_TI2_Config
2422  06fa 84            	pop	a
2423                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2425  06fb 7b06          	ld	a,(OFST+6,sp)
2426  06fd cd129a        	call	_TIM1_SetIC2Prescaler
2429  0700 202c          	jra	L376
2430  0702               L576:
2431                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2433  0702 7b01          	ld	a,(OFST+1,sp)
2434  0704 a102          	cp	a,#2
2435  0706 2614          	jrne	L107
2436                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2436                     ; 458                (uint8_t)TIM1_ICSelection,
2436                     ; 459                (uint8_t)TIM1_ICFilter);
2438  0708 7b07          	ld	a,(OFST+7,sp)
2439  070a 88            	push	a
2440  070b 7b06          	ld	a,(OFST+6,sp)
2441  070d 97            	ld	xl,a
2442  070e 7b03          	ld	a,(OFST+3,sp)
2443  0710 95            	ld	xh,a
2444  0711 cd156c        	call	L7_TI3_Config
2446  0714 84            	pop	a
2447                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2449  0715 7b06          	ld	a,(OFST+6,sp)
2450  0717 cd12c9        	call	_TIM1_SetIC3Prescaler
2453  071a 2012          	jra	L376
2454  071c               L107:
2455                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2455                     ; 467                (uint8_t)TIM1_ICSelection,
2455                     ; 468                (uint8_t)TIM1_ICFilter);
2457  071c 7b07          	ld	a,(OFST+7,sp)
2458  071e 88            	push	a
2459  071f 7b06          	ld	a,(OFST+6,sp)
2460  0721 97            	ld	xl,a
2461  0722 7b03          	ld	a,(OFST+3,sp)
2462  0724 95            	ld	xh,a
2463  0725 cd159c        	call	L11_TI4_Config
2465  0728 84            	pop	a
2466                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2468  0729 7b06          	ld	a,(OFST+6,sp)
2469  072b cd12f8        	call	_TIM1_SetIC4Prescaler
2471  072e               L376:
2472                     ; 472 }
2475  072e 85            	popw	x
2476  072f 81            	ret
2573                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2573                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2573                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2573                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2573                     ; 492                      uint8_t TIM1_ICFilter)
2573                     ; 493 {
2574                     	switch	.text
2575  0730               _TIM1_PWMIConfig:
2577  0730 89            	pushw	x
2578  0731 89            	pushw	x
2579       00000002      OFST:	set	2
2582                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2584                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2586                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2588  0732 9e            	ld	a,xh
2589  0733 4d            	tnz	a
2590  0734 2705          	jreq	L653
2591  0736 9e            	ld	a,xh
2592  0737 a101          	cp	a,#1
2593  0739 2603          	jrne	L453
2594  073b               L653:
2595  073b 4f            	clr	a
2596  073c 2010          	jra	L063
2597  073e               L453:
2598  073e ae01f2        	ldw	x,#498
2599  0741 89            	pushw	x
2600  0742 ae0000        	ldw	x,#0
2601  0745 89            	pushw	x
2602  0746 ae0000        	ldw	x,#L101
2603  0749 cd0000        	call	_assert_failed
2605  074c 5b04          	addw	sp,#4
2606  074e               L063:
2607                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2609  074e 0d04          	tnz	(OFST+2,sp)
2610  0750 2706          	jreq	L463
2611  0752 7b04          	ld	a,(OFST+2,sp)
2612  0754 a101          	cp	a,#1
2613  0756 2603          	jrne	L263
2614  0758               L463:
2615  0758 4f            	clr	a
2616  0759 2010          	jra	L663
2617  075b               L263:
2618  075b ae01f3        	ldw	x,#499
2619  075e 89            	pushw	x
2620  075f ae0000        	ldw	x,#0
2621  0762 89            	pushw	x
2622  0763 ae0000        	ldw	x,#L101
2623  0766 cd0000        	call	_assert_failed
2625  0769 5b04          	addw	sp,#4
2626  076b               L663:
2627                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2629  076b 7b07          	ld	a,(OFST+5,sp)
2630  076d a101          	cp	a,#1
2631  076f 270c          	jreq	L273
2632  0771 7b07          	ld	a,(OFST+5,sp)
2633  0773 a102          	cp	a,#2
2634  0775 2706          	jreq	L273
2635  0777 7b07          	ld	a,(OFST+5,sp)
2636  0779 a103          	cp	a,#3
2637  077b 2603          	jrne	L073
2638  077d               L273:
2639  077d 4f            	clr	a
2640  077e 2010          	jra	L473
2641  0780               L073:
2642  0780 ae01f4        	ldw	x,#500
2643  0783 89            	pushw	x
2644  0784 ae0000        	ldw	x,#0
2645  0787 89            	pushw	x
2646  0788 ae0000        	ldw	x,#L101
2647  078b cd0000        	call	_assert_failed
2649  078e 5b04          	addw	sp,#4
2650  0790               L473:
2651                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2653  0790 0d08          	tnz	(OFST+6,sp)
2654  0792 2712          	jreq	L004
2655  0794 7b08          	ld	a,(OFST+6,sp)
2656  0796 a104          	cp	a,#4
2657  0798 270c          	jreq	L004
2658  079a 7b08          	ld	a,(OFST+6,sp)
2659  079c a108          	cp	a,#8
2660  079e 2706          	jreq	L004
2661  07a0 7b08          	ld	a,(OFST+6,sp)
2662  07a2 a10c          	cp	a,#12
2663  07a4 2603          	jrne	L673
2664  07a6               L004:
2665  07a6 4f            	clr	a
2666  07a7 2010          	jra	L204
2667  07a9               L673:
2668  07a9 ae01f5        	ldw	x,#501
2669  07ac 89            	pushw	x
2670  07ad ae0000        	ldw	x,#0
2671  07b0 89            	pushw	x
2672  07b1 ae0000        	ldw	x,#L101
2673  07b4 cd0000        	call	_assert_failed
2675  07b7 5b04          	addw	sp,#4
2676  07b9               L204:
2677                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2679  07b9 7b04          	ld	a,(OFST+2,sp)
2680  07bb a101          	cp	a,#1
2681  07bd 2706          	jreq	L357
2682                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2684  07bf a601          	ld	a,#1
2685  07c1 6b01          	ld	(OFST-1,sp),a
2687  07c3 2002          	jra	L557
2688  07c5               L357:
2689                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2691  07c5 0f01          	clr	(OFST-1,sp)
2692  07c7               L557:
2693                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2695  07c7 7b07          	ld	a,(OFST+5,sp)
2696  07c9 a101          	cp	a,#1
2697  07cb 2606          	jrne	L757
2698                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2700  07cd a602          	ld	a,#2
2701  07cf 6b02          	ld	(OFST+0,sp),a
2703  07d1 2004          	jra	L167
2704  07d3               L757:
2705                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2707  07d3 a601          	ld	a,#1
2708  07d5 6b02          	ld	(OFST+0,sp),a
2709  07d7               L167:
2710                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2712  07d7 0d03          	tnz	(OFST+1,sp)
2713  07d9 2626          	jrne	L367
2714                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2714                     ; 527                (uint8_t)TIM1_ICFilter);
2716  07db 7b09          	ld	a,(OFST+7,sp)
2717  07dd 88            	push	a
2718  07de 7b08          	ld	a,(OFST+6,sp)
2719  07e0 97            	ld	xl,a
2720  07e1 7b05          	ld	a,(OFST+3,sp)
2721  07e3 95            	ld	xh,a
2722  07e4 cd150c        	call	L3_TI1_Config
2724  07e7 84            	pop	a
2725                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2727  07e8 7b08          	ld	a,(OFST+6,sp)
2728  07ea cd126b        	call	_TIM1_SetIC1Prescaler
2730                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2732  07ed 7b09          	ld	a,(OFST+7,sp)
2733  07ef 88            	push	a
2734  07f0 7b03          	ld	a,(OFST+1,sp)
2735  07f2 97            	ld	xl,a
2736  07f3 7b02          	ld	a,(OFST+0,sp)
2737  07f5 95            	ld	xh,a
2738  07f6 cd153c        	call	L5_TI2_Config
2740  07f9 84            	pop	a
2741                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2743  07fa 7b08          	ld	a,(OFST+6,sp)
2744  07fc cd129a        	call	_TIM1_SetIC2Prescaler
2747  07ff 2024          	jra	L567
2748  0801               L367:
2749                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2749                     ; 542                (uint8_t)TIM1_ICFilter);
2751  0801 7b09          	ld	a,(OFST+7,sp)
2752  0803 88            	push	a
2753  0804 7b08          	ld	a,(OFST+6,sp)
2754  0806 97            	ld	xl,a
2755  0807 7b05          	ld	a,(OFST+3,sp)
2756  0809 95            	ld	xh,a
2757  080a cd153c        	call	L5_TI2_Config
2759  080d 84            	pop	a
2760                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2762  080e 7b08          	ld	a,(OFST+6,sp)
2763  0810 cd129a        	call	_TIM1_SetIC2Prescaler
2765                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2767  0813 7b09          	ld	a,(OFST+7,sp)
2768  0815 88            	push	a
2769  0816 7b03          	ld	a,(OFST+1,sp)
2770  0818 97            	ld	xl,a
2771  0819 7b02          	ld	a,(OFST+0,sp)
2772  081b 95            	ld	xh,a
2773  081c cd150c        	call	L3_TI1_Config
2775  081f 84            	pop	a
2776                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2778  0820 7b08          	ld	a,(OFST+6,sp)
2779  0822 cd126b        	call	_TIM1_SetIC1Prescaler
2781  0825               L567:
2782                     ; 553 }
2785  0825 5b04          	addw	sp,#4
2786  0827 81            	ret
2842                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2842                     ; 562 {
2843                     	switch	.text
2844  0828               _TIM1_Cmd:
2846  0828 88            	push	a
2847       00000000      OFST:	set	0
2850                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2852  0829 4d            	tnz	a
2853  082a 2704          	jreq	L014
2854  082c a101          	cp	a,#1
2855  082e 2603          	jrne	L604
2856  0830               L014:
2857  0830 4f            	clr	a
2858  0831 2010          	jra	L214
2859  0833               L604:
2860  0833 ae0234        	ldw	x,#564
2861  0836 89            	pushw	x
2862  0837 ae0000        	ldw	x,#0
2863  083a 89            	pushw	x
2864  083b ae0000        	ldw	x,#L101
2865  083e cd0000        	call	_assert_failed
2867  0841 5b04          	addw	sp,#4
2868  0843               L214:
2869                     ; 567   if (NewState != DISABLE)
2871  0843 0d01          	tnz	(OFST+1,sp)
2872  0845 2706          	jreq	L5101
2873                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2875  0847 72105250      	bset	21072,#0
2877  084b 2004          	jra	L7101
2878  084d               L5101:
2879                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2881  084d 72115250      	bres	21072,#0
2882  0851               L7101:
2883                     ; 575 }
2886  0851 84            	pop	a
2887  0852 81            	ret
2924                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2924                     ; 584 {
2925                     	switch	.text
2926  0853               _TIM1_CtrlPWMOutputs:
2928  0853 88            	push	a
2929       00000000      OFST:	set	0
2932                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2934  0854 4d            	tnz	a
2935  0855 2704          	jreq	L024
2936  0857 a101          	cp	a,#1
2937  0859 2603          	jrne	L614
2938  085b               L024:
2939  085b 4f            	clr	a
2940  085c 2010          	jra	L224
2941  085e               L614:
2942  085e ae024a        	ldw	x,#586
2943  0861 89            	pushw	x
2944  0862 ae0000        	ldw	x,#0
2945  0865 89            	pushw	x
2946  0866 ae0000        	ldw	x,#L101
2947  0869 cd0000        	call	_assert_failed
2949  086c 5b04          	addw	sp,#4
2950  086e               L224:
2951                     ; 590   if (NewState != DISABLE)
2953  086e 0d01          	tnz	(OFST+1,sp)
2954  0870 2706          	jreq	L7301
2955                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2957  0872 721e526d      	bset	21101,#7
2959  0876 2004          	jra	L1401
2960  0878               L7301:
2961                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2963  0878 721f526d      	bres	21101,#7
2964  087c               L1401:
2965                     ; 598 }
2968  087c 84            	pop	a
2969  087d 81            	ret
3077                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
3077                     ; 618 {
3078                     	switch	.text
3079  087e               _TIM1_ITConfig:
3081  087e 89            	pushw	x
3082       00000000      OFST:	set	0
3085                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
3087  087f 9e            	ld	a,xh
3088  0880 4d            	tnz	a
3089  0881 2703          	jreq	L624
3090  0883 4f            	clr	a
3091  0884 2010          	jra	L034
3092  0886               L624:
3093  0886 ae026c        	ldw	x,#620
3094  0889 89            	pushw	x
3095  088a ae0000        	ldw	x,#0
3096  088d 89            	pushw	x
3097  088e ae0000        	ldw	x,#L101
3098  0891 cd0000        	call	_assert_failed
3100  0894 5b04          	addw	sp,#4
3101  0896               L034:
3102                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3104  0896 0d02          	tnz	(OFST+2,sp)
3105  0898 2706          	jreq	L434
3106  089a 7b02          	ld	a,(OFST+2,sp)
3107  089c a101          	cp	a,#1
3108  089e 2603          	jrne	L234
3109  08a0               L434:
3110  08a0 4f            	clr	a
3111  08a1 2010          	jra	L634
3112  08a3               L234:
3113  08a3 ae026d        	ldw	x,#621
3114  08a6 89            	pushw	x
3115  08a7 ae0000        	ldw	x,#0
3116  08aa 89            	pushw	x
3117  08ab ae0000        	ldw	x,#L101
3118  08ae cd0000        	call	_assert_failed
3120  08b1 5b04          	addw	sp,#4
3121  08b3               L634:
3122                     ; 623   if (NewState != DISABLE)
3124  08b3 0d02          	tnz	(OFST+2,sp)
3125  08b5 270a          	jreq	L1111
3126                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
3128  08b7 c65254        	ld	a,21076
3129  08ba 1a01          	or	a,(OFST+1,sp)
3130  08bc c75254        	ld	21076,a
3132  08bf 2009          	jra	L3111
3133  08c1               L1111:
3134                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
3136  08c1 7b01          	ld	a,(OFST+1,sp)
3137  08c3 43            	cpl	a
3138  08c4 c45254        	and	a,21076
3139  08c7 c75254        	ld	21076,a
3140  08ca               L3111:
3141                     ; 633 }
3144  08ca 85            	popw	x
3145  08cb 81            	ret
3169                     ; 640 void TIM1_InternalClockConfig(void)
3169                     ; 641 {
3170                     	switch	.text
3171  08cc               _TIM1_InternalClockConfig:
3175                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
3177  08cc c65252        	ld	a,21074
3178  08cf a4f8          	and	a,#248
3179  08d1 c75252        	ld	21074,a
3180                     ; 644 }
3183  08d4 81            	ret
3301                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3301                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3301                     ; 664                               uint8_t ExtTRGFilter)
3301                     ; 665 {
3302                     	switch	.text
3303  08d5               _TIM1_ETRClockMode1Config:
3305  08d5 89            	pushw	x
3306       00000000      OFST:	set	0
3309                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3311  08d6 9e            	ld	a,xh
3312  08d7 4d            	tnz	a
3313  08d8 270f          	jreq	L644
3314  08da 9e            	ld	a,xh
3315  08db a110          	cp	a,#16
3316  08dd 270a          	jreq	L644
3317  08df 9e            	ld	a,xh
3318  08e0 a120          	cp	a,#32
3319  08e2 2705          	jreq	L644
3320  08e4 9e            	ld	a,xh
3321  08e5 a130          	cp	a,#48
3322  08e7 2603          	jrne	L444
3323  08e9               L644:
3324  08e9 4f            	clr	a
3325  08ea 2010          	jra	L054
3326  08ec               L444:
3327  08ec ae029b        	ldw	x,#667
3328  08ef 89            	pushw	x
3329  08f0 ae0000        	ldw	x,#0
3330  08f3 89            	pushw	x
3331  08f4 ae0000        	ldw	x,#L101
3332  08f7 cd0000        	call	_assert_failed
3334  08fa 5b04          	addw	sp,#4
3335  08fc               L054:
3336                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3338  08fc 7b02          	ld	a,(OFST+2,sp)
3339  08fe a180          	cp	a,#128
3340  0900 2704          	jreq	L454
3341  0902 0d02          	tnz	(OFST+2,sp)
3342  0904 2603          	jrne	L254
3343  0906               L454:
3344  0906 4f            	clr	a
3345  0907 2010          	jra	L654
3346  0909               L254:
3347  0909 ae029c        	ldw	x,#668
3348  090c 89            	pushw	x
3349  090d ae0000        	ldw	x,#0
3350  0910 89            	pushw	x
3351  0911 ae0000        	ldw	x,#L101
3352  0914 cd0000        	call	_assert_failed
3354  0917 5b04          	addw	sp,#4
3355  0919               L654:
3356                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3358  0919 7b05          	ld	a,(OFST+5,sp)
3359  091b 88            	push	a
3360  091c 7b03          	ld	a,(OFST+3,sp)
3361  091e 97            	ld	xl,a
3362  091f 7b02          	ld	a,(OFST+2,sp)
3363  0921 95            	ld	xh,a
3364  0922 ad63          	call	_TIM1_ETRConfig
3366  0924 84            	pop	a
3367                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
3367                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
3369  0925 c65252        	ld	a,21074
3370  0928 a488          	and	a,#136
3371  092a aa77          	or	a,#119
3372  092c c75252        	ld	21074,a
3373                     ; 676 }
3376  092f 85            	popw	x
3377  0930 81            	ret
3436                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3436                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3436                     ; 696                               uint8_t ExtTRGFilter)
3436                     ; 697 {
3437                     	switch	.text
3438  0931               _TIM1_ETRClockMode2Config:
3440  0931 89            	pushw	x
3441       00000000      OFST:	set	0
3444                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3446  0932 9e            	ld	a,xh
3447  0933 4d            	tnz	a
3448  0934 270f          	jreq	L464
3449  0936 9e            	ld	a,xh
3450  0937 a110          	cp	a,#16
3451  0939 270a          	jreq	L464
3452  093b 9e            	ld	a,xh
3453  093c a120          	cp	a,#32
3454  093e 2705          	jreq	L464
3455  0940 9e            	ld	a,xh
3456  0941 a130          	cp	a,#48
3457  0943 2603          	jrne	L264
3458  0945               L464:
3459  0945 4f            	clr	a
3460  0946 2010          	jra	L664
3461  0948               L264:
3462  0948 ae02bb        	ldw	x,#699
3463  094b 89            	pushw	x
3464  094c ae0000        	ldw	x,#0
3465  094f 89            	pushw	x
3466  0950 ae0000        	ldw	x,#L101
3467  0953 cd0000        	call	_assert_failed
3469  0956 5b04          	addw	sp,#4
3470  0958               L664:
3471                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3473  0958 7b02          	ld	a,(OFST+2,sp)
3474  095a a180          	cp	a,#128
3475  095c 2704          	jreq	L274
3476  095e 0d02          	tnz	(OFST+2,sp)
3477  0960 2603          	jrne	L074
3478  0962               L274:
3479  0962 4f            	clr	a
3480  0963 2010          	jra	L474
3481  0965               L074:
3482  0965 ae02bc        	ldw	x,#700
3483  0968 89            	pushw	x
3484  0969 ae0000        	ldw	x,#0
3485  096c 89            	pushw	x
3486  096d ae0000        	ldw	x,#L101
3487  0970 cd0000        	call	_assert_failed
3489  0973 5b04          	addw	sp,#4
3490  0975               L474:
3491                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3493  0975 7b05          	ld	a,(OFST+5,sp)
3494  0977 88            	push	a
3495  0978 7b03          	ld	a,(OFST+3,sp)
3496  097a 97            	ld	xl,a
3497  097b 7b02          	ld	a,(OFST+2,sp)
3498  097d 95            	ld	xh,a
3499  097e ad07          	call	_TIM1_ETRConfig
3501  0980 84            	pop	a
3502                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3504  0981 721c5253      	bset	21075,#6
3505                     ; 707 }
3508  0985 85            	popw	x
3509  0986 81            	ret
3566                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3566                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3566                     ; 727                     uint8_t ExtTRGFilter)
3566                     ; 728 {
3567                     	switch	.text
3568  0987               _TIM1_ETRConfig:
3570  0987 89            	pushw	x
3571       00000000      OFST:	set	0
3574                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3576  0988 7b05          	ld	a,(OFST+5,sp)
3577  098a a110          	cp	a,#16
3578  098c 2403          	jruge	L005
3579  098e 4f            	clr	a
3580  098f 2010          	jra	L205
3581  0991               L005:
3582  0991 ae02da        	ldw	x,#730
3583  0994 89            	pushw	x
3584  0995 ae0000        	ldw	x,#0
3585  0998 89            	pushw	x
3586  0999 ae0000        	ldw	x,#L101
3587  099c cd0000        	call	_assert_failed
3589  099f 5b04          	addw	sp,#4
3590  09a1               L205:
3591                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3591                     ; 733                          (uint8_t)ExtTRGFilter );
3593  09a1 7b01          	ld	a,(OFST+1,sp)
3594  09a3 1a02          	or	a,(OFST+2,sp)
3595  09a5 1a05          	or	a,(OFST+5,sp)
3596  09a7 ca5253        	or	a,21075
3597  09aa c75253        	ld	21075,a
3598                     ; 734 }
3601  09ad 85            	popw	x
3602  09ae 81            	ret
3692                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3692                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3692                     ; 753                                  uint8_t ICFilter)
3692                     ; 754 {
3693                     	switch	.text
3694  09af               _TIM1_TIxExternalClockConfig:
3696  09af 89            	pushw	x
3697       00000000      OFST:	set	0
3700                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3702  09b0 9e            	ld	a,xh
3703  09b1 a140          	cp	a,#64
3704  09b3 270a          	jreq	L015
3705  09b5 9e            	ld	a,xh
3706  09b6 a160          	cp	a,#96
3707  09b8 2705          	jreq	L015
3708  09ba 9e            	ld	a,xh
3709  09bb a150          	cp	a,#80
3710  09bd 2603          	jrne	L605
3711  09bf               L015:
3712  09bf 4f            	clr	a
3713  09c0 2010          	jra	L215
3714  09c2               L605:
3715  09c2 ae02f4        	ldw	x,#756
3716  09c5 89            	pushw	x
3717  09c6 ae0000        	ldw	x,#0
3718  09c9 89            	pushw	x
3719  09ca ae0000        	ldw	x,#L101
3720  09cd cd0000        	call	_assert_failed
3722  09d0 5b04          	addw	sp,#4
3723  09d2               L215:
3724                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3726  09d2 0d02          	tnz	(OFST+2,sp)
3727  09d4 2706          	jreq	L615
3728  09d6 7b02          	ld	a,(OFST+2,sp)
3729  09d8 a101          	cp	a,#1
3730  09da 2603          	jrne	L415
3731  09dc               L615:
3732  09dc 4f            	clr	a
3733  09dd 2010          	jra	L025
3734  09df               L415:
3735  09df ae02f5        	ldw	x,#757
3736  09e2 89            	pushw	x
3737  09e3 ae0000        	ldw	x,#0
3738  09e6 89            	pushw	x
3739  09e7 ae0000        	ldw	x,#L101
3740  09ea cd0000        	call	_assert_failed
3742  09ed 5b04          	addw	sp,#4
3743  09ef               L025:
3744                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3746  09ef 7b05          	ld	a,(OFST+5,sp)
3747  09f1 a110          	cp	a,#16
3748  09f3 2403          	jruge	L225
3749  09f5 4f            	clr	a
3750  09f6 2010          	jra	L425
3751  09f8               L225:
3752  09f8 ae02f6        	ldw	x,#758
3753  09fb 89            	pushw	x
3754  09fc ae0000        	ldw	x,#0
3755  09ff 89            	pushw	x
3756  0a00 ae0000        	ldw	x,#L101
3757  0a03 cd0000        	call	_assert_failed
3759  0a06 5b04          	addw	sp,#4
3760  0a08               L425:
3761                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3763  0a08 7b01          	ld	a,(OFST+1,sp)
3764  0a0a a160          	cp	a,#96
3765  0a0c 260f          	jrne	L3131
3766                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3768  0a0e 7b05          	ld	a,(OFST+5,sp)
3769  0a10 88            	push	a
3770  0a11 ae0001        	ldw	x,#1
3771  0a14 7b03          	ld	a,(OFST+3,sp)
3772  0a16 95            	ld	xh,a
3773  0a17 cd153c        	call	L5_TI2_Config
3775  0a1a 84            	pop	a
3777  0a1b 200d          	jra	L5131
3778  0a1d               L3131:
3779                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3781  0a1d 7b05          	ld	a,(OFST+5,sp)
3782  0a1f 88            	push	a
3783  0a20 ae0001        	ldw	x,#1
3784  0a23 7b03          	ld	a,(OFST+3,sp)
3785  0a25 95            	ld	xh,a
3786  0a26 cd150c        	call	L3_TI1_Config
3788  0a29 84            	pop	a
3789  0a2a               L5131:
3790                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3792  0a2a 7b01          	ld	a,(OFST+1,sp)
3793  0a2c ad0a          	call	_TIM1_SelectInputTrigger
3795                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3797  0a2e c65252        	ld	a,21074
3798  0a31 aa07          	or	a,#7
3799  0a33 c75252        	ld	21074,a
3800                     ; 775 }
3803  0a36 85            	popw	x
3804  0a37 81            	ret
3890                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3890                     ; 788 {
3891                     	switch	.text
3892  0a38               _TIM1_SelectInputTrigger:
3894  0a38 88            	push	a
3895       00000000      OFST:	set	0
3898                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3900  0a39 a140          	cp	a,#64
3901  0a3b 2713          	jreq	L235
3902  0a3d a150          	cp	a,#80
3903  0a3f 270f          	jreq	L235
3904  0a41 a160          	cp	a,#96
3905  0a43 270b          	jreq	L235
3906  0a45 a170          	cp	a,#112
3907  0a47 2707          	jreq	L235
3908  0a49 a130          	cp	a,#48
3909  0a4b 2703          	jreq	L235
3910  0a4d 4d            	tnz	a
3911  0a4e 2603          	jrne	L035
3912  0a50               L235:
3913  0a50 4f            	clr	a
3914  0a51 2010          	jra	L435
3915  0a53               L035:
3916  0a53 ae0316        	ldw	x,#790
3917  0a56 89            	pushw	x
3918  0a57 ae0000        	ldw	x,#0
3919  0a5a 89            	pushw	x
3920  0a5b ae0000        	ldw	x,#L101
3921  0a5e cd0000        	call	_assert_failed
3923  0a61 5b04          	addw	sp,#4
3924  0a63               L435:
3925                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3927  0a63 c65252        	ld	a,21074
3928  0a66 a48f          	and	a,#143
3929  0a68 1a01          	or	a,(OFST+1,sp)
3930  0a6a c75252        	ld	21074,a
3931                     ; 794 }
3934  0a6d 84            	pop	a
3935  0a6e 81            	ret
3972                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3972                     ; 804 {
3973                     	switch	.text
3974  0a6f               _TIM1_UpdateDisableConfig:
3976  0a6f 88            	push	a
3977       00000000      OFST:	set	0
3980                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3982  0a70 4d            	tnz	a
3983  0a71 2704          	jreq	L245
3984  0a73 a101          	cp	a,#1
3985  0a75 2603          	jrne	L045
3986  0a77               L245:
3987  0a77 4f            	clr	a
3988  0a78 2010          	jra	L445
3989  0a7a               L045:
3990  0a7a ae0326        	ldw	x,#806
3991  0a7d 89            	pushw	x
3992  0a7e ae0000        	ldw	x,#0
3993  0a81 89            	pushw	x
3994  0a82 ae0000        	ldw	x,#L101
3995  0a85 cd0000        	call	_assert_failed
3997  0a88 5b04          	addw	sp,#4
3998  0a8a               L445:
3999                     ; 809   if (NewState != DISABLE)
4001  0a8a 0d01          	tnz	(OFST+1,sp)
4002  0a8c 2706          	jreq	L3731
4003                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
4005  0a8e 72125250      	bset	21072,#1
4007  0a92 2004          	jra	L5731
4008  0a94               L3731:
4009                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
4011  0a94 72135250      	bres	21072,#1
4012  0a98               L5731:
4013                     ; 817 }
4016  0a98 84            	pop	a
4017  0a99 81            	ret
4076                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
4076                     ; 828 {
4077                     	switch	.text
4078  0a9a               _TIM1_UpdateRequestConfig:
4080  0a9a 88            	push	a
4081       00000000      OFST:	set	0
4084                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
4086  0a9b 4d            	tnz	a
4087  0a9c 2704          	jreq	L255
4088  0a9e a101          	cp	a,#1
4089  0aa0 2603          	jrne	L055
4090  0aa2               L255:
4091  0aa2 4f            	clr	a
4092  0aa3 2010          	jra	L455
4093  0aa5               L055:
4094  0aa5 ae033e        	ldw	x,#830
4095  0aa8 89            	pushw	x
4096  0aa9 ae0000        	ldw	x,#0
4097  0aac 89            	pushw	x
4098  0aad ae0000        	ldw	x,#L101
4099  0ab0 cd0000        	call	_assert_failed
4101  0ab3 5b04          	addw	sp,#4
4102  0ab5               L455:
4103                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
4105  0ab5 0d01          	tnz	(OFST+1,sp)
4106  0ab7 2706          	jreq	L5241
4107                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
4109  0ab9 72145250      	bset	21072,#2
4111  0abd 2004          	jra	L7241
4112  0abf               L5241:
4113                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
4115  0abf 72155250      	bres	21072,#2
4116  0ac3               L7241:
4117                     ; 841 }
4120  0ac3 84            	pop	a
4121  0ac4 81            	ret
4158                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
4158                     ; 850 {
4159                     	switch	.text
4160  0ac5               _TIM1_SelectHallSensor:
4162  0ac5 88            	push	a
4163       00000000      OFST:	set	0
4166                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4168  0ac6 4d            	tnz	a
4169  0ac7 2704          	jreq	L265
4170  0ac9 a101          	cp	a,#1
4171  0acb 2603          	jrne	L065
4172  0acd               L265:
4173  0acd 4f            	clr	a
4174  0ace 2010          	jra	L465
4175  0ad0               L065:
4176  0ad0 ae0354        	ldw	x,#852
4177  0ad3 89            	pushw	x
4178  0ad4 ae0000        	ldw	x,#0
4179  0ad7 89            	pushw	x
4180  0ad8 ae0000        	ldw	x,#L101
4181  0adb cd0000        	call	_assert_failed
4183  0ade 5b04          	addw	sp,#4
4184  0ae0               L465:
4185                     ; 855   if (NewState != DISABLE)
4187  0ae0 0d01          	tnz	(OFST+1,sp)
4188  0ae2 2706          	jreq	L7441
4189                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
4191  0ae4 721e5251      	bset	21073,#7
4193  0ae8 2004          	jra	L1541
4194  0aea               L7441:
4195                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
4197  0aea 721f5251      	bres	21073,#7
4198  0aee               L1541:
4199                     ; 863 }
4202  0aee 84            	pop	a
4203  0aef 81            	ret
4261                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
4261                     ; 874 {
4262                     	switch	.text
4263  0af0               _TIM1_SelectOnePulseMode:
4265  0af0 88            	push	a
4266       00000000      OFST:	set	0
4269                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
4271  0af1 a101          	cp	a,#1
4272  0af3 2703          	jreq	L275
4273  0af5 4d            	tnz	a
4274  0af6 2603          	jrne	L075
4275  0af8               L275:
4276  0af8 4f            	clr	a
4277  0af9 2010          	jra	L475
4278  0afb               L075:
4279  0afb ae036c        	ldw	x,#876
4280  0afe 89            	pushw	x
4281  0aff ae0000        	ldw	x,#0
4282  0b02 89            	pushw	x
4283  0b03 ae0000        	ldw	x,#L101
4284  0b06 cd0000        	call	_assert_failed
4286  0b09 5b04          	addw	sp,#4
4287  0b0b               L475:
4288                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
4290  0b0b 0d01          	tnz	(OFST+1,sp)
4291  0b0d 2706          	jreq	L1051
4292                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
4294  0b0f 72165250      	bset	21072,#3
4296  0b13 2004          	jra	L3051
4297  0b15               L1051:
4298                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
4300  0b15 72175250      	bres	21072,#3
4301  0b19               L3051:
4302                     ; 888 }
4305  0b19 84            	pop	a
4306  0b1a 81            	ret
4405                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
4405                     ; 904 {
4406                     	switch	.text
4407  0b1b               _TIM1_SelectOutputTrigger:
4409  0b1b 88            	push	a
4410       00000000      OFST:	set	0
4413                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
4415  0b1c 4d            	tnz	a
4416  0b1d 2718          	jreq	L206
4417  0b1f a110          	cp	a,#16
4418  0b21 2714          	jreq	L206
4419  0b23 a120          	cp	a,#32
4420  0b25 2710          	jreq	L206
4421  0b27 a130          	cp	a,#48
4422  0b29 270c          	jreq	L206
4423  0b2b a140          	cp	a,#64
4424  0b2d 2708          	jreq	L206
4425  0b2f a150          	cp	a,#80
4426  0b31 2704          	jreq	L206
4427  0b33 a160          	cp	a,#96
4428  0b35 2603          	jrne	L006
4429  0b37               L206:
4430  0b37 4f            	clr	a
4431  0b38 2010          	jra	L406
4432  0b3a               L006:
4433  0b3a ae038a        	ldw	x,#906
4434  0b3d 89            	pushw	x
4435  0b3e ae0000        	ldw	x,#0
4436  0b41 89            	pushw	x
4437  0b42 ae0000        	ldw	x,#L101
4438  0b45 cd0000        	call	_assert_failed
4440  0b48 5b04          	addw	sp,#4
4441  0b4a               L406:
4442                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
4442                     ; 910                         (uint8_t) TIM1_TRGOSource);
4444  0b4a c65251        	ld	a,21073
4445  0b4d a48f          	and	a,#143
4446  0b4f 1a01          	or	a,(OFST+1,sp)
4447  0b51 c75251        	ld	21073,a
4448                     ; 911 }
4451  0b54 84            	pop	a
4452  0b55 81            	ret
4527                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4527                     ; 924 {
4528                     	switch	.text
4529  0b56               _TIM1_SelectSlaveMode:
4531  0b56 88            	push	a
4532       00000000      OFST:	set	0
4535                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4537  0b57 a104          	cp	a,#4
4538  0b59 270c          	jreq	L216
4539  0b5b a105          	cp	a,#5
4540  0b5d 2708          	jreq	L216
4541  0b5f a106          	cp	a,#6
4542  0b61 2704          	jreq	L216
4543  0b63 a107          	cp	a,#7
4544  0b65 2603          	jrne	L016
4545  0b67               L216:
4546  0b67 4f            	clr	a
4547  0b68 2010          	jra	L416
4548  0b6a               L016:
4549  0b6a ae039e        	ldw	x,#926
4550  0b6d 89            	pushw	x
4551  0b6e ae0000        	ldw	x,#0
4552  0b71 89            	pushw	x
4553  0b72 ae0000        	ldw	x,#L101
4554  0b75 cd0000        	call	_assert_failed
4556  0b78 5b04          	addw	sp,#4
4557  0b7a               L416:
4558                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4558                     ; 930                          (uint8_t)TIM1_SlaveMode);
4560  0b7a c65252        	ld	a,21074
4561  0b7d a4f8          	and	a,#248
4562  0b7f 1a01          	or	a,(OFST+1,sp)
4563  0b81 c75252        	ld	21074,a
4564                     ; 931 }
4567  0b84 84            	pop	a
4568  0b85 81            	ret
4605                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4605                     ; 940 {
4606                     	switch	.text
4607  0b86               _TIM1_SelectMasterSlaveMode:
4609  0b86 88            	push	a
4610       00000000      OFST:	set	0
4613                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4615  0b87 4d            	tnz	a
4616  0b88 2704          	jreq	L226
4617  0b8a a101          	cp	a,#1
4618  0b8c 2603          	jrne	L026
4619  0b8e               L226:
4620  0b8e 4f            	clr	a
4621  0b8f 2010          	jra	L426
4622  0b91               L026:
4623  0b91 ae03ae        	ldw	x,#942
4624  0b94 89            	pushw	x
4625  0b95 ae0000        	ldw	x,#0
4626  0b98 89            	pushw	x
4627  0b99 ae0000        	ldw	x,#L101
4628  0b9c cd0000        	call	_assert_failed
4630  0b9f 5b04          	addw	sp,#4
4631  0ba1               L426:
4632                     ; 945   if (NewState != DISABLE)
4634  0ba1 0d01          	tnz	(OFST+1,sp)
4635  0ba3 2706          	jreq	L5161
4636                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4638  0ba5 721e5252      	bset	21074,#7
4640  0ba9 2004          	jra	L7161
4641  0bab               L5161:
4642                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4644  0bab 721f5252      	bres	21074,#7
4645  0baf               L7161:
4646                     ; 953 }
4649  0baf 84            	pop	a
4650  0bb0 81            	ret
4737                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4737                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4737                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4737                     ; 978 {
4738                     	switch	.text
4739  0bb1               _TIM1_EncoderInterfaceConfig:
4741  0bb1 89            	pushw	x
4742       00000000      OFST:	set	0
4745                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4747  0bb2 9e            	ld	a,xh
4748  0bb3 a101          	cp	a,#1
4749  0bb5 270a          	jreq	L236
4750  0bb7 9e            	ld	a,xh
4751  0bb8 a102          	cp	a,#2
4752  0bba 2705          	jreq	L236
4753  0bbc 9e            	ld	a,xh
4754  0bbd a103          	cp	a,#3
4755  0bbf 2603          	jrne	L036
4756  0bc1               L236:
4757  0bc1 4f            	clr	a
4758  0bc2 2010          	jra	L436
4759  0bc4               L036:
4760  0bc4 ae03d4        	ldw	x,#980
4761  0bc7 89            	pushw	x
4762  0bc8 ae0000        	ldw	x,#0
4763  0bcb 89            	pushw	x
4764  0bcc ae0000        	ldw	x,#L101
4765  0bcf cd0000        	call	_assert_failed
4767  0bd2 5b04          	addw	sp,#4
4768  0bd4               L436:
4769                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4771  0bd4 0d02          	tnz	(OFST+2,sp)
4772  0bd6 2706          	jreq	L046
4773  0bd8 7b02          	ld	a,(OFST+2,sp)
4774  0bda a101          	cp	a,#1
4775  0bdc 2603          	jrne	L636
4776  0bde               L046:
4777  0bde 4f            	clr	a
4778  0bdf 2010          	jra	L246
4779  0be1               L636:
4780  0be1 ae03d5        	ldw	x,#981
4781  0be4 89            	pushw	x
4782  0be5 ae0000        	ldw	x,#0
4783  0be8 89            	pushw	x
4784  0be9 ae0000        	ldw	x,#L101
4785  0bec cd0000        	call	_assert_failed
4787  0bef 5b04          	addw	sp,#4
4788  0bf1               L246:
4789                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4791  0bf1 0d05          	tnz	(OFST+5,sp)
4792  0bf3 2706          	jreq	L646
4793  0bf5 7b05          	ld	a,(OFST+5,sp)
4794  0bf7 a101          	cp	a,#1
4795  0bf9 2603          	jrne	L446
4796  0bfb               L646:
4797  0bfb 4f            	clr	a
4798  0bfc 2010          	jra	L056
4799  0bfe               L446:
4800  0bfe ae03d6        	ldw	x,#982
4801  0c01 89            	pushw	x
4802  0c02 ae0000        	ldw	x,#0
4803  0c05 89            	pushw	x
4804  0c06 ae0000        	ldw	x,#L101
4805  0c09 cd0000        	call	_assert_failed
4807  0c0c 5b04          	addw	sp,#4
4808  0c0e               L056:
4809                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4811  0c0e 0d02          	tnz	(OFST+2,sp)
4812  0c10 2706          	jreq	L1661
4813                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4815  0c12 7212525c      	bset	21084,#1
4817  0c16 2004          	jra	L3661
4818  0c18               L1661:
4819                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4821  0c18 7213525c      	bres	21084,#1
4822  0c1c               L3661:
4823                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4825  0c1c 0d05          	tnz	(OFST+5,sp)
4826  0c1e 2706          	jreq	L5661
4827                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4829  0c20 721a525c      	bset	21084,#5
4831  0c24 2004          	jra	L7661
4832  0c26               L5661:
4833                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4835  0c26 721b525c      	bres	21084,#5
4836  0c2a               L7661:
4837                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4837                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4839  0c2a c65252        	ld	a,21074
4840  0c2d a4f0          	and	a,#240
4841  0c2f 1a01          	or	a,(OFST+1,sp)
4842  0c31 c75252        	ld	21074,a
4843                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4843                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4845  0c34 c65258        	ld	a,21080
4846  0c37 a4fc          	and	a,#252
4847  0c39 aa01          	or	a,#1
4848  0c3b c75258        	ld	21080,a
4849                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4849                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4851  0c3e c65259        	ld	a,21081
4852  0c41 a4fc          	and	a,#252
4853  0c43 aa01          	or	a,#1
4854  0c45 c75259        	ld	21081,a
4855                     ; 1011 }
4858  0c48 85            	popw	x
4859  0c49 81            	ret
4927                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4927                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4927                     ; 1025 {
4928                     	switch	.text
4929  0c4a               _TIM1_PrescalerConfig:
4931  0c4a 89            	pushw	x
4932       00000000      OFST:	set	0
4935                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4937  0c4b 0d05          	tnz	(OFST+5,sp)
4938  0c4d 2706          	jreq	L656
4939  0c4f 7b05          	ld	a,(OFST+5,sp)
4940  0c51 a101          	cp	a,#1
4941  0c53 2603          	jrne	L456
4942  0c55               L656:
4943  0c55 4f            	clr	a
4944  0c56 2010          	jra	L066
4945  0c58               L456:
4946  0c58 ae0403        	ldw	x,#1027
4947  0c5b 89            	pushw	x
4948  0c5c ae0000        	ldw	x,#0
4949  0c5f 89            	pushw	x
4950  0c60 ae0000        	ldw	x,#L101
4951  0c63 cd0000        	call	_assert_failed
4953  0c66 5b04          	addw	sp,#4
4954  0c68               L066:
4955                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4957  0c68 7b01          	ld	a,(OFST+1,sp)
4958  0c6a c75260        	ld	21088,a
4959                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4961  0c6d 7b02          	ld	a,(OFST+2,sp)
4962  0c6f c75261        	ld	21089,a
4963                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4965  0c72 7b05          	ld	a,(OFST+5,sp)
4966  0c74 c75257        	ld	21079,a
4967                     ; 1035 }
4970  0c77 85            	popw	x
4971  0c78 81            	ret
5008                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
5008                     ; 1049 {
5009                     	switch	.text
5010  0c79               _TIM1_CounterModeConfig:
5012  0c79 88            	push	a
5013       00000000      OFST:	set	0
5016                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
5018  0c7a 4d            	tnz	a
5019  0c7b 2710          	jreq	L666
5020  0c7d a110          	cp	a,#16
5021  0c7f 270c          	jreq	L666
5022  0c81 a120          	cp	a,#32
5023  0c83 2708          	jreq	L666
5024  0c85 a140          	cp	a,#64
5025  0c87 2704          	jreq	L666
5026  0c89 a160          	cp	a,#96
5027  0c8b 2603          	jrne	L466
5028  0c8d               L666:
5029  0c8d 4f            	clr	a
5030  0c8e 2010          	jra	L076
5031  0c90               L466:
5032  0c90 ae041b        	ldw	x,#1051
5033  0c93 89            	pushw	x
5034  0c94 ae0000        	ldw	x,#0
5035  0c97 89            	pushw	x
5036  0c98 ae0000        	ldw	x,#L101
5037  0c9b cd0000        	call	_assert_failed
5039  0c9e 5b04          	addw	sp,#4
5040  0ca0               L076:
5041                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
5041                     ; 1056                         | (uint8_t)TIM1_CounterMode);
5043  0ca0 c65250        	ld	a,21072
5044  0ca3 a48f          	and	a,#143
5045  0ca5 1a01          	or	a,(OFST+1,sp)
5046  0ca7 c75250        	ld	21072,a
5047                     ; 1057 }
5050  0caa 84            	pop	a
5051  0cab 81            	ret
5110                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5110                     ; 1068 {
5111                     	switch	.text
5112  0cac               _TIM1_ForcedOC1Config:
5114  0cac 88            	push	a
5115       00000000      OFST:	set	0
5118                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5120  0cad a150          	cp	a,#80
5121  0caf 2704          	jreq	L676
5122  0cb1 a140          	cp	a,#64
5123  0cb3 2603          	jrne	L476
5124  0cb5               L676:
5125  0cb5 4f            	clr	a
5126  0cb6 2010          	jra	L007
5127  0cb8               L476:
5128  0cb8 ae042e        	ldw	x,#1070
5129  0cbb 89            	pushw	x
5130  0cbc ae0000        	ldw	x,#0
5131  0cbf 89            	pushw	x
5132  0cc0 ae0000        	ldw	x,#L101
5133  0cc3 cd0000        	call	_assert_failed
5135  0cc6 5b04          	addw	sp,#4
5136  0cc8               L007:
5137                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
5137                     ; 1074                            (uint8_t)TIM1_ForcedAction);
5139  0cc8 c65258        	ld	a,21080
5140  0ccb a48f          	and	a,#143
5141  0ccd 1a01          	or	a,(OFST+1,sp)
5142  0ccf c75258        	ld	21080,a
5143                     ; 1075 }
5146  0cd2 84            	pop	a
5147  0cd3 81            	ret
5184                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5184                     ; 1086 {
5185                     	switch	.text
5186  0cd4               _TIM1_ForcedOC2Config:
5188  0cd4 88            	push	a
5189       00000000      OFST:	set	0
5192                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5194  0cd5 a150          	cp	a,#80
5195  0cd7 2704          	jreq	L607
5196  0cd9 a140          	cp	a,#64
5197  0cdb 2603          	jrne	L407
5198  0cdd               L607:
5199  0cdd 4f            	clr	a
5200  0cde 2010          	jra	L017
5201  0ce0               L407:
5202  0ce0 ae0440        	ldw	x,#1088
5203  0ce3 89            	pushw	x
5204  0ce4 ae0000        	ldw	x,#0
5205  0ce7 89            	pushw	x
5206  0ce8 ae0000        	ldw	x,#L101
5207  0ceb cd0000        	call	_assert_failed
5209  0cee 5b04          	addw	sp,#4
5210  0cf0               L017:
5211                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
5211                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
5213  0cf0 c65259        	ld	a,21081
5214  0cf3 a48f          	and	a,#143
5215  0cf5 1a01          	or	a,(OFST+1,sp)
5216  0cf7 c75259        	ld	21081,a
5217                     ; 1093 }
5220  0cfa 84            	pop	a
5221  0cfb 81            	ret
5258                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5258                     ; 1105 {
5259                     	switch	.text
5260  0cfc               _TIM1_ForcedOC3Config:
5262  0cfc 88            	push	a
5263       00000000      OFST:	set	0
5266                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5268  0cfd a150          	cp	a,#80
5269  0cff 2704          	jreq	L617
5270  0d01 a140          	cp	a,#64
5271  0d03 2603          	jrne	L417
5272  0d05               L617:
5273  0d05 4f            	clr	a
5274  0d06 2010          	jra	L027
5275  0d08               L417:
5276  0d08 ae0453        	ldw	x,#1107
5277  0d0b 89            	pushw	x
5278  0d0c ae0000        	ldw	x,#0
5279  0d0f 89            	pushw	x
5280  0d10 ae0000        	ldw	x,#L101
5281  0d13 cd0000        	call	_assert_failed
5283  0d16 5b04          	addw	sp,#4
5284  0d18               L027:
5285                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
5285                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
5287  0d18 c6525a        	ld	a,21082
5288  0d1b a48f          	and	a,#143
5289  0d1d 1a01          	or	a,(OFST+1,sp)
5290  0d1f c7525a        	ld	21082,a
5291                     ; 1112 }
5294  0d22 84            	pop	a
5295  0d23 81            	ret
5332                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
5332                     ; 1124 {
5333                     	switch	.text
5334  0d24               _TIM1_ForcedOC4Config:
5336  0d24 88            	push	a
5337       00000000      OFST:	set	0
5340                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
5342  0d25 a150          	cp	a,#80
5343  0d27 2704          	jreq	L627
5344  0d29 a140          	cp	a,#64
5345  0d2b 2603          	jrne	L427
5346  0d2d               L627:
5347  0d2d 4f            	clr	a
5348  0d2e 2010          	jra	L037
5349  0d30               L427:
5350  0d30 ae0466        	ldw	x,#1126
5351  0d33 89            	pushw	x
5352  0d34 ae0000        	ldw	x,#0
5353  0d37 89            	pushw	x
5354  0d38 ae0000        	ldw	x,#L101
5355  0d3b cd0000        	call	_assert_failed
5357  0d3e 5b04          	addw	sp,#4
5358  0d40               L037:
5359                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
5359                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
5361  0d40 c6525b        	ld	a,21083
5362  0d43 a48f          	and	a,#143
5363  0d45 1a01          	or	a,(OFST+1,sp)
5364  0d47 c7525b        	ld	21083,a
5365                     ; 1131 }
5368  0d4a 84            	pop	a
5369  0d4b 81            	ret
5406                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
5406                     ; 1140 {
5407                     	switch	.text
5408  0d4c               _TIM1_ARRPreloadConfig:
5410  0d4c 88            	push	a
5411       00000000      OFST:	set	0
5414                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5416  0d4d 4d            	tnz	a
5417  0d4e 2704          	jreq	L637
5418  0d50 a101          	cp	a,#1
5419  0d52 2603          	jrne	L437
5420  0d54               L637:
5421  0d54 4f            	clr	a
5422  0d55 2010          	jra	L047
5423  0d57               L437:
5424  0d57 ae0476        	ldw	x,#1142
5425  0d5a 89            	pushw	x
5426  0d5b ae0000        	ldw	x,#0
5427  0d5e 89            	pushw	x
5428  0d5f ae0000        	ldw	x,#L101
5429  0d62 cd0000        	call	_assert_failed
5431  0d65 5b04          	addw	sp,#4
5432  0d67               L047:
5433                     ; 1145   if (NewState != DISABLE)
5435  0d67 0d01          	tnz	(OFST+1,sp)
5436  0d69 2706          	jreq	L7502
5437                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
5439  0d6b 721e5250      	bset	21072,#7
5441  0d6f 2004          	jra	L1602
5442  0d71               L7502:
5443                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
5445  0d71 721f5250      	bres	21072,#7
5446  0d75               L1602:
5447                     ; 1153 }
5450  0d75 84            	pop	a
5451  0d76 81            	ret
5487                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
5487                     ; 1162 {
5488                     	switch	.text
5489  0d77               _TIM1_SelectCOM:
5491  0d77 88            	push	a
5492       00000000      OFST:	set	0
5495                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5497  0d78 4d            	tnz	a
5498  0d79 2704          	jreq	L647
5499  0d7b a101          	cp	a,#1
5500  0d7d 2603          	jrne	L447
5501  0d7f               L647:
5502  0d7f 4f            	clr	a
5503  0d80 2010          	jra	L057
5504  0d82               L447:
5505  0d82 ae048c        	ldw	x,#1164
5506  0d85 89            	pushw	x
5507  0d86 ae0000        	ldw	x,#0
5508  0d89 89            	pushw	x
5509  0d8a ae0000        	ldw	x,#L101
5510  0d8d cd0000        	call	_assert_failed
5512  0d90 5b04          	addw	sp,#4
5513  0d92               L057:
5514                     ; 1167   if (NewState != DISABLE)
5516  0d92 0d01          	tnz	(OFST+1,sp)
5517  0d94 2706          	jreq	L1012
5518                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
5520  0d96 72145251      	bset	21073,#2
5522  0d9a 2004          	jra	L3012
5523  0d9c               L1012:
5524                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
5526  0d9c 72155251      	bres	21073,#2
5527  0da0               L3012:
5528                     ; 1175 }
5531  0da0 84            	pop	a
5532  0da1 81            	ret
5569                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5569                     ; 1184 {
5570                     	switch	.text
5571  0da2               _TIM1_CCPreloadControl:
5573  0da2 88            	push	a
5574       00000000      OFST:	set	0
5577                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5579  0da3 4d            	tnz	a
5580  0da4 2704          	jreq	L657
5581  0da6 a101          	cp	a,#1
5582  0da8 2603          	jrne	L457
5583  0daa               L657:
5584  0daa 4f            	clr	a
5585  0dab 2010          	jra	L067
5586  0dad               L457:
5587  0dad ae04a2        	ldw	x,#1186
5588  0db0 89            	pushw	x
5589  0db1 ae0000        	ldw	x,#0
5590  0db4 89            	pushw	x
5591  0db5 ae0000        	ldw	x,#L101
5592  0db8 cd0000        	call	_assert_failed
5594  0dbb 5b04          	addw	sp,#4
5595  0dbd               L067:
5596                     ; 1189   if (NewState != DISABLE)
5598  0dbd 0d01          	tnz	(OFST+1,sp)
5599  0dbf 2706          	jreq	L3212
5600                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5602  0dc1 72105251      	bset	21073,#0
5604  0dc5 2004          	jra	L5212
5605  0dc7               L3212:
5606                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5608  0dc7 72115251      	bres	21073,#0
5609  0dcb               L5212:
5610                     ; 1197 }
5613  0dcb 84            	pop	a
5614  0dcc 81            	ret
5651                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5651                     ; 1206 {
5652                     	switch	.text
5653  0dcd               _TIM1_OC1PreloadConfig:
5655  0dcd 88            	push	a
5656       00000000      OFST:	set	0
5659                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5661  0dce 4d            	tnz	a
5662  0dcf 2704          	jreq	L667
5663  0dd1 a101          	cp	a,#1
5664  0dd3 2603          	jrne	L467
5665  0dd5               L667:
5666  0dd5 4f            	clr	a
5667  0dd6 2010          	jra	L077
5668  0dd8               L467:
5669  0dd8 ae04b8        	ldw	x,#1208
5670  0ddb 89            	pushw	x
5671  0ddc ae0000        	ldw	x,#0
5672  0ddf 89            	pushw	x
5673  0de0 ae0000        	ldw	x,#L101
5674  0de3 cd0000        	call	_assert_failed
5676  0de6 5b04          	addw	sp,#4
5677  0de8               L077:
5678                     ; 1211   if (NewState != DISABLE)
5680  0de8 0d01          	tnz	(OFST+1,sp)
5681  0dea 2706          	jreq	L5412
5682                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5684  0dec 72165258      	bset	21080,#3
5686  0df0 2004          	jra	L7412
5687  0df2               L5412:
5688                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5690  0df2 72175258      	bres	21080,#3
5691  0df6               L7412:
5692                     ; 1219 }
5695  0df6 84            	pop	a
5696  0df7 81            	ret
5733                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5733                     ; 1228 {
5734                     	switch	.text
5735  0df8               _TIM1_OC2PreloadConfig:
5737  0df8 88            	push	a
5738       00000000      OFST:	set	0
5741                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5743  0df9 4d            	tnz	a
5744  0dfa 2704          	jreq	L677
5745  0dfc a101          	cp	a,#1
5746  0dfe 2603          	jrne	L477
5747  0e00               L677:
5748  0e00 4f            	clr	a
5749  0e01 2010          	jra	L0001
5750  0e03               L477:
5751  0e03 ae04ce        	ldw	x,#1230
5752  0e06 89            	pushw	x
5753  0e07 ae0000        	ldw	x,#0
5754  0e0a 89            	pushw	x
5755  0e0b ae0000        	ldw	x,#L101
5756  0e0e cd0000        	call	_assert_failed
5758  0e11 5b04          	addw	sp,#4
5759  0e13               L0001:
5760                     ; 1233   if (NewState != DISABLE)
5762  0e13 0d01          	tnz	(OFST+1,sp)
5763  0e15 2706          	jreq	L7612
5764                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5766  0e17 72165259      	bset	21081,#3
5768  0e1b 2004          	jra	L1712
5769  0e1d               L7612:
5770                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5772  0e1d 72175259      	bres	21081,#3
5773  0e21               L1712:
5774                     ; 1241 }
5777  0e21 84            	pop	a
5778  0e22 81            	ret
5815                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5815                     ; 1250 {
5816                     	switch	.text
5817  0e23               _TIM1_OC3PreloadConfig:
5819  0e23 88            	push	a
5820       00000000      OFST:	set	0
5823                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5825  0e24 4d            	tnz	a
5826  0e25 2704          	jreq	L6001
5827  0e27 a101          	cp	a,#1
5828  0e29 2603          	jrne	L4001
5829  0e2b               L6001:
5830  0e2b 4f            	clr	a
5831  0e2c 2010          	jra	L0101
5832  0e2e               L4001:
5833  0e2e ae04e4        	ldw	x,#1252
5834  0e31 89            	pushw	x
5835  0e32 ae0000        	ldw	x,#0
5836  0e35 89            	pushw	x
5837  0e36 ae0000        	ldw	x,#L101
5838  0e39 cd0000        	call	_assert_failed
5840  0e3c 5b04          	addw	sp,#4
5841  0e3e               L0101:
5842                     ; 1255   if (NewState != DISABLE)
5844  0e3e 0d01          	tnz	(OFST+1,sp)
5845  0e40 2706          	jreq	L1122
5846                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5848  0e42 7216525a      	bset	21082,#3
5850  0e46 2004          	jra	L3122
5851  0e48               L1122:
5852                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5854  0e48 7217525a      	bres	21082,#3
5855  0e4c               L3122:
5856                     ; 1263 }
5859  0e4c 84            	pop	a
5860  0e4d 81            	ret
5897                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5897                     ; 1272 {
5898                     	switch	.text
5899  0e4e               _TIM1_OC4PreloadConfig:
5901  0e4e 88            	push	a
5902       00000000      OFST:	set	0
5905                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5907  0e4f 4d            	tnz	a
5908  0e50 2704          	jreq	L6101
5909  0e52 a101          	cp	a,#1
5910  0e54 2603          	jrne	L4101
5911  0e56               L6101:
5912  0e56 4f            	clr	a
5913  0e57 2010          	jra	L0201
5914  0e59               L4101:
5915  0e59 ae04fa        	ldw	x,#1274
5916  0e5c 89            	pushw	x
5917  0e5d ae0000        	ldw	x,#0
5918  0e60 89            	pushw	x
5919  0e61 ae0000        	ldw	x,#L101
5920  0e64 cd0000        	call	_assert_failed
5922  0e67 5b04          	addw	sp,#4
5923  0e69               L0201:
5924                     ; 1277   if (NewState != DISABLE)
5926  0e69 0d01          	tnz	(OFST+1,sp)
5927  0e6b 2706          	jreq	L3322
5928                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5930  0e6d 7216525b      	bset	21083,#3
5932  0e71 2004          	jra	L5322
5933  0e73               L3322:
5934                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5936  0e73 7217525b      	bres	21083,#3
5937  0e77               L5322:
5938                     ; 1285 }
5941  0e77 84            	pop	a
5942  0e78 81            	ret
5978                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5978                     ; 1294 {
5979                     	switch	.text
5980  0e79               _TIM1_OC1FastConfig:
5982  0e79 88            	push	a
5983       00000000      OFST:	set	0
5986                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5988  0e7a 4d            	tnz	a
5989  0e7b 2704          	jreq	L6201
5990  0e7d a101          	cp	a,#1
5991  0e7f 2603          	jrne	L4201
5992  0e81               L6201:
5993  0e81 4f            	clr	a
5994  0e82 2010          	jra	L0301
5995  0e84               L4201:
5996  0e84 ae0510        	ldw	x,#1296
5997  0e87 89            	pushw	x
5998  0e88 ae0000        	ldw	x,#0
5999  0e8b 89            	pushw	x
6000  0e8c ae0000        	ldw	x,#L101
6001  0e8f cd0000        	call	_assert_failed
6003  0e92 5b04          	addw	sp,#4
6004  0e94               L0301:
6005                     ; 1299   if (NewState != DISABLE)
6007  0e94 0d01          	tnz	(OFST+1,sp)
6008  0e96 2706          	jreq	L5522
6009                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
6011  0e98 72145258      	bset	21080,#2
6013  0e9c 2004          	jra	L7522
6014  0e9e               L5522:
6015                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6017  0e9e 72155258      	bres	21080,#2
6018  0ea2               L7522:
6019                     ; 1307 }
6022  0ea2 84            	pop	a
6023  0ea3 81            	ret
6059                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
6059                     ; 1316 {
6060                     	switch	.text
6061  0ea4               _TIM1_OC2FastConfig:
6063  0ea4 88            	push	a
6064       00000000      OFST:	set	0
6067                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6069  0ea5 4d            	tnz	a
6070  0ea6 2704          	jreq	L6301
6071  0ea8 a101          	cp	a,#1
6072  0eaa 2603          	jrne	L4301
6073  0eac               L6301:
6074  0eac 4f            	clr	a
6075  0ead 2010          	jra	L0401
6076  0eaf               L4301:
6077  0eaf ae0526        	ldw	x,#1318
6078  0eb2 89            	pushw	x
6079  0eb3 ae0000        	ldw	x,#0
6080  0eb6 89            	pushw	x
6081  0eb7 ae0000        	ldw	x,#L101
6082  0eba cd0000        	call	_assert_failed
6084  0ebd 5b04          	addw	sp,#4
6085  0ebf               L0401:
6086                     ; 1321   if (NewState != DISABLE)
6088  0ebf 0d01          	tnz	(OFST+1,sp)
6089  0ec1 2706          	jreq	L7722
6090                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
6092  0ec3 72145259      	bset	21081,#2
6094  0ec7 2004          	jra	L1032
6095  0ec9               L7722:
6096                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6098  0ec9 72155259      	bres	21081,#2
6099  0ecd               L1032:
6100                     ; 1329 }
6103  0ecd 84            	pop	a
6104  0ece 81            	ret
6140                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
6140                     ; 1338 {
6141                     	switch	.text
6142  0ecf               _TIM1_OC3FastConfig:
6144  0ecf 88            	push	a
6145       00000000      OFST:	set	0
6148                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6150  0ed0 4d            	tnz	a
6151  0ed1 2704          	jreq	L6401
6152  0ed3 a101          	cp	a,#1
6153  0ed5 2603          	jrne	L4401
6154  0ed7               L6401:
6155  0ed7 4f            	clr	a
6156  0ed8 2010          	jra	L0501
6157  0eda               L4401:
6158  0eda ae053c        	ldw	x,#1340
6159  0edd 89            	pushw	x
6160  0ede ae0000        	ldw	x,#0
6161  0ee1 89            	pushw	x
6162  0ee2 ae0000        	ldw	x,#L101
6163  0ee5 cd0000        	call	_assert_failed
6165  0ee8 5b04          	addw	sp,#4
6166  0eea               L0501:
6167                     ; 1343   if (NewState != DISABLE)
6169  0eea 0d01          	tnz	(OFST+1,sp)
6170  0eec 2706          	jreq	L1232
6171                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
6173  0eee 7214525a      	bset	21082,#2
6175  0ef2 2004          	jra	L3232
6176  0ef4               L1232:
6177                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6179  0ef4 7215525a      	bres	21082,#2
6180  0ef8               L3232:
6181                     ; 1351 }
6184  0ef8 84            	pop	a
6185  0ef9 81            	ret
6221                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
6221                     ; 1360 {
6222                     	switch	.text
6223  0efa               _TIM1_OC4FastConfig:
6225  0efa 88            	push	a
6226       00000000      OFST:	set	0
6229                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6231  0efb 4d            	tnz	a
6232  0efc 2704          	jreq	L6501
6233  0efe a101          	cp	a,#1
6234  0f00 2603          	jrne	L4501
6235  0f02               L6501:
6236  0f02 4f            	clr	a
6237  0f03 2010          	jra	L0601
6238  0f05               L4501:
6239  0f05 ae0552        	ldw	x,#1362
6240  0f08 89            	pushw	x
6241  0f09 ae0000        	ldw	x,#0
6242  0f0c 89            	pushw	x
6243  0f0d ae0000        	ldw	x,#L101
6244  0f10 cd0000        	call	_assert_failed
6246  0f13 5b04          	addw	sp,#4
6247  0f15               L0601:
6248                     ; 1365   if (NewState != DISABLE)
6250  0f15 0d01          	tnz	(OFST+1,sp)
6251  0f17 2706          	jreq	L3432
6252                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
6254  0f19 7214525b      	bset	21083,#2
6256  0f1d 2004          	jra	L5432
6257  0f1f               L3432:
6258                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
6260  0f1f 7215525b      	bres	21083,#2
6261  0f23               L5432:
6262                     ; 1373 }
6265  0f23 84            	pop	a
6266  0f24 81            	ret
6372                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
6372                     ; 1390 {
6373                     	switch	.text
6374  0f25               _TIM1_GenerateEvent:
6376  0f25 88            	push	a
6377       00000000      OFST:	set	0
6380                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
6382  0f26 4d            	tnz	a
6383  0f27 2703          	jreq	L4601
6384  0f29 4f            	clr	a
6385  0f2a 2010          	jra	L6601
6386  0f2c               L4601:
6387  0f2c ae0570        	ldw	x,#1392
6388  0f2f 89            	pushw	x
6389  0f30 ae0000        	ldw	x,#0
6390  0f33 89            	pushw	x
6391  0f34 ae0000        	ldw	x,#L101
6392  0f37 cd0000        	call	_assert_failed
6394  0f3a 5b04          	addw	sp,#4
6395  0f3c               L6601:
6396                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
6398  0f3c 7b01          	ld	a,(OFST+1,sp)
6399  0f3e c75257        	ld	21079,a
6400                     ; 1396 }
6403  0f41 84            	pop	a
6404  0f42 81            	ret
6441                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6441                     ; 1407 {
6442                     	switch	.text
6443  0f43               _TIM1_OC1PolarityConfig:
6445  0f43 88            	push	a
6446       00000000      OFST:	set	0
6449                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6451  0f44 4d            	tnz	a
6452  0f45 2704          	jreq	L4701
6453  0f47 a122          	cp	a,#34
6454  0f49 2603          	jrne	L2701
6455  0f4b               L4701:
6456  0f4b 4f            	clr	a
6457  0f4c 2010          	jra	L6701
6458  0f4e               L2701:
6459  0f4e ae0581        	ldw	x,#1409
6460  0f51 89            	pushw	x
6461  0f52 ae0000        	ldw	x,#0
6462  0f55 89            	pushw	x
6463  0f56 ae0000        	ldw	x,#L101
6464  0f59 cd0000        	call	_assert_failed
6466  0f5c 5b04          	addw	sp,#4
6467  0f5e               L6701:
6468                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6470  0f5e 0d01          	tnz	(OFST+1,sp)
6471  0f60 2706          	jreq	L7242
6472                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
6474  0f62 7212525c      	bset	21084,#1
6476  0f66 2004          	jra	L1342
6477  0f68               L7242:
6478                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
6480  0f68 7213525c      	bres	21084,#1
6481  0f6c               L1342:
6482                     ; 1420 }
6485  0f6c 84            	pop	a
6486  0f6d 81            	ret
6523                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6523                     ; 1431 {
6524                     	switch	.text
6525  0f6e               _TIM1_OC1NPolarityConfig:
6527  0f6e 88            	push	a
6528       00000000      OFST:	set	0
6531                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6533  0f6f 4d            	tnz	a
6534  0f70 2704          	jreq	L4011
6535  0f72 a188          	cp	a,#136
6536  0f74 2603          	jrne	L2011
6537  0f76               L4011:
6538  0f76 4f            	clr	a
6539  0f77 2010          	jra	L6011
6540  0f79               L2011:
6541  0f79 ae0599        	ldw	x,#1433
6542  0f7c 89            	pushw	x
6543  0f7d ae0000        	ldw	x,#0
6544  0f80 89            	pushw	x
6545  0f81 ae0000        	ldw	x,#L101
6546  0f84 cd0000        	call	_assert_failed
6548  0f87 5b04          	addw	sp,#4
6549  0f89               L6011:
6550                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6552  0f89 0d01          	tnz	(OFST+1,sp)
6553  0f8b 2706          	jreq	L1542
6554                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
6556  0f8d 7216525c      	bset	21084,#3
6558  0f91 2004          	jra	L3542
6559  0f93               L1542:
6560                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
6562  0f93 7217525c      	bres	21084,#3
6563  0f97               L3542:
6564                     ; 1444 }
6567  0f97 84            	pop	a
6568  0f98 81            	ret
6605                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6605                     ; 1455 {
6606                     	switch	.text
6607  0f99               _TIM1_OC2PolarityConfig:
6609  0f99 88            	push	a
6610       00000000      OFST:	set	0
6613                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6615  0f9a 4d            	tnz	a
6616  0f9b 2704          	jreq	L4111
6617  0f9d a122          	cp	a,#34
6618  0f9f 2603          	jrne	L2111
6619  0fa1               L4111:
6620  0fa1 4f            	clr	a
6621  0fa2 2010          	jra	L6111
6622  0fa4               L2111:
6623  0fa4 ae05b1        	ldw	x,#1457
6624  0fa7 89            	pushw	x
6625  0fa8 ae0000        	ldw	x,#0
6626  0fab 89            	pushw	x
6627  0fac ae0000        	ldw	x,#L101
6628  0faf cd0000        	call	_assert_failed
6630  0fb2 5b04          	addw	sp,#4
6631  0fb4               L6111:
6632                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6634  0fb4 0d01          	tnz	(OFST+1,sp)
6635  0fb6 2706          	jreq	L3742
6636                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6638  0fb8 721a525c      	bset	21084,#5
6640  0fbc 2004          	jra	L5742
6641  0fbe               L3742:
6642                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6644  0fbe 721b525c      	bres	21084,#5
6645  0fc2               L5742:
6646                     ; 1468 }
6649  0fc2 84            	pop	a
6650  0fc3 81            	ret
6687                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6687                     ; 1479 {
6688                     	switch	.text
6689  0fc4               _TIM1_OC2NPolarityConfig:
6691  0fc4 88            	push	a
6692       00000000      OFST:	set	0
6695                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6697  0fc5 4d            	tnz	a
6698  0fc6 2704          	jreq	L4211
6699  0fc8 a188          	cp	a,#136
6700  0fca 2603          	jrne	L2211
6701  0fcc               L4211:
6702  0fcc 4f            	clr	a
6703  0fcd 2010          	jra	L6211
6704  0fcf               L2211:
6705  0fcf ae05c9        	ldw	x,#1481
6706  0fd2 89            	pushw	x
6707  0fd3 ae0000        	ldw	x,#0
6708  0fd6 89            	pushw	x
6709  0fd7 ae0000        	ldw	x,#L101
6710  0fda cd0000        	call	_assert_failed
6712  0fdd 5b04          	addw	sp,#4
6713  0fdf               L6211:
6714                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6716  0fdf 0d01          	tnz	(OFST+1,sp)
6717  0fe1 2706          	jreq	L5152
6718                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6720  0fe3 721e525c      	bset	21084,#7
6722  0fe7 2004          	jra	L7152
6723  0fe9               L5152:
6724                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6726  0fe9 721f525c      	bres	21084,#7
6727  0fed               L7152:
6728                     ; 1492 }
6731  0fed 84            	pop	a
6732  0fee 81            	ret
6769                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6769                     ; 1503 {
6770                     	switch	.text
6771  0fef               _TIM1_OC3PolarityConfig:
6773  0fef 88            	push	a
6774       00000000      OFST:	set	0
6777                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6779  0ff0 4d            	tnz	a
6780  0ff1 2704          	jreq	L4311
6781  0ff3 a122          	cp	a,#34
6782  0ff5 2603          	jrne	L2311
6783  0ff7               L4311:
6784  0ff7 4f            	clr	a
6785  0ff8 2010          	jra	L6311
6786  0ffa               L2311:
6787  0ffa ae05e1        	ldw	x,#1505
6788  0ffd 89            	pushw	x
6789  0ffe ae0000        	ldw	x,#0
6790  1001 89            	pushw	x
6791  1002 ae0000        	ldw	x,#L101
6792  1005 cd0000        	call	_assert_failed
6794  1008 5b04          	addw	sp,#4
6795  100a               L6311:
6796                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6798  100a 0d01          	tnz	(OFST+1,sp)
6799  100c 2706          	jreq	L7352
6800                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6802  100e 7212525d      	bset	21085,#1
6804  1012 2004          	jra	L1452
6805  1014               L7352:
6806                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6808  1014 7213525d      	bres	21085,#1
6809  1018               L1452:
6810                     ; 1516 }
6813  1018 84            	pop	a
6814  1019 81            	ret
6851                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6851                     ; 1528 {
6852                     	switch	.text
6853  101a               _TIM1_OC3NPolarityConfig:
6855  101a 88            	push	a
6856       00000000      OFST:	set	0
6859                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6861  101b 4d            	tnz	a
6862  101c 2704          	jreq	L4411
6863  101e a188          	cp	a,#136
6864  1020 2603          	jrne	L2411
6865  1022               L4411:
6866  1022 4f            	clr	a
6867  1023 2010          	jra	L6411
6868  1025               L2411:
6869  1025 ae05fa        	ldw	x,#1530
6870  1028 89            	pushw	x
6871  1029 ae0000        	ldw	x,#0
6872  102c 89            	pushw	x
6873  102d ae0000        	ldw	x,#L101
6874  1030 cd0000        	call	_assert_failed
6876  1033 5b04          	addw	sp,#4
6877  1035               L6411:
6878                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6880  1035 0d01          	tnz	(OFST+1,sp)
6881  1037 2706          	jreq	L1652
6882                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6884  1039 7216525d      	bset	21085,#3
6886  103d 2004          	jra	L3652
6887  103f               L1652:
6888                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6890  103f 7217525d      	bres	21085,#3
6891  1043               L3652:
6892                     ; 1541 }
6895  1043 84            	pop	a
6896  1044 81            	ret
6933                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6933                     ; 1552 {
6934                     	switch	.text
6935  1045               _TIM1_OC4PolarityConfig:
6937  1045 88            	push	a
6938       00000000      OFST:	set	0
6941                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6943  1046 4d            	tnz	a
6944  1047 2704          	jreq	L4511
6945  1049 a122          	cp	a,#34
6946  104b 2603          	jrne	L2511
6947  104d               L4511:
6948  104d 4f            	clr	a
6949  104e 2010          	jra	L6511
6950  1050               L2511:
6951  1050 ae0612        	ldw	x,#1554
6952  1053 89            	pushw	x
6953  1054 ae0000        	ldw	x,#0
6954  1057 89            	pushw	x
6955  1058 ae0000        	ldw	x,#L101
6956  105b cd0000        	call	_assert_failed
6958  105e 5b04          	addw	sp,#4
6959  1060               L6511:
6960                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6962  1060 0d01          	tnz	(OFST+1,sp)
6963  1062 2706          	jreq	L3062
6964                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6966  1064 721a525d      	bset	21085,#5
6968  1068 2004          	jra	L5062
6969  106a               L3062:
6970                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6972  106a 721b525d      	bres	21085,#5
6973  106e               L5062:
6974                     ; 1565 }
6977  106e 84            	pop	a
6978  106f 81            	ret
7024                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7024                     ; 1580 {
7025                     	switch	.text
7026  1070               _TIM1_CCxCmd:
7028  1070 89            	pushw	x
7029       00000000      OFST:	set	0
7032                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7034  1071 9e            	ld	a,xh
7035  1072 4d            	tnz	a
7036  1073 270f          	jreq	L4611
7037  1075 9e            	ld	a,xh
7038  1076 a101          	cp	a,#1
7039  1078 270a          	jreq	L4611
7040  107a 9e            	ld	a,xh
7041  107b a102          	cp	a,#2
7042  107d 2705          	jreq	L4611
7043  107f 9e            	ld	a,xh
7044  1080 a103          	cp	a,#3
7045  1082 2603          	jrne	L2611
7046  1084               L4611:
7047  1084 4f            	clr	a
7048  1085 2010          	jra	L6611
7049  1087               L2611:
7050  1087 ae062e        	ldw	x,#1582
7051  108a 89            	pushw	x
7052  108b ae0000        	ldw	x,#0
7053  108e 89            	pushw	x
7054  108f ae0000        	ldw	x,#L101
7055  1092 cd0000        	call	_assert_failed
7057  1095 5b04          	addw	sp,#4
7058  1097               L6611:
7059                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7061  1097 0d02          	tnz	(OFST+2,sp)
7062  1099 2706          	jreq	L2711
7063  109b 7b02          	ld	a,(OFST+2,sp)
7064  109d a101          	cp	a,#1
7065  109f 2603          	jrne	L0711
7066  10a1               L2711:
7067  10a1 4f            	clr	a
7068  10a2 2010          	jra	L4711
7069  10a4               L0711:
7070  10a4 ae062f        	ldw	x,#1583
7071  10a7 89            	pushw	x
7072  10a8 ae0000        	ldw	x,#0
7073  10ab 89            	pushw	x
7074  10ac ae0000        	ldw	x,#L101
7075  10af cd0000        	call	_assert_failed
7077  10b2 5b04          	addw	sp,#4
7078  10b4               L4711:
7079                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
7081  10b4 0d01          	tnz	(OFST+1,sp)
7082  10b6 2610          	jrne	L1362
7083                     ; 1588     if (NewState != DISABLE)
7085  10b8 0d02          	tnz	(OFST+2,sp)
7086  10ba 2706          	jreq	L3362
7087                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
7089  10bc 7210525c      	bset	21084,#0
7091  10c0 2040          	jra	L7362
7092  10c2               L3362:
7093                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7095  10c2 7211525c      	bres	21084,#0
7096  10c6 203a          	jra	L7362
7097  10c8               L1362:
7098                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
7100  10c8 7b01          	ld	a,(OFST+1,sp)
7101  10ca a101          	cp	a,#1
7102  10cc 2610          	jrne	L1462
7103                     ; 1601     if (NewState != DISABLE)
7105  10ce 0d02          	tnz	(OFST+2,sp)
7106  10d0 2706          	jreq	L3462
7107                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
7109  10d2 7218525c      	bset	21084,#4
7111  10d6 202a          	jra	L7362
7112  10d8               L3462:
7113                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7115  10d8 7219525c      	bres	21084,#4
7116  10dc 2024          	jra	L7362
7117  10de               L1462:
7118                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
7120  10de 7b01          	ld	a,(OFST+1,sp)
7121  10e0 a102          	cp	a,#2
7122  10e2 2610          	jrne	L1562
7123                     ; 1613     if (NewState != DISABLE)
7125  10e4 0d02          	tnz	(OFST+2,sp)
7126  10e6 2706          	jreq	L3562
7127                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
7129  10e8 7210525d      	bset	21085,#0
7131  10ec 2014          	jra	L7362
7132  10ee               L3562:
7133                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7135  10ee 7211525d      	bres	21085,#0
7136  10f2 200e          	jra	L7362
7137  10f4               L1562:
7138                     ; 1625     if (NewState != DISABLE)
7140  10f4 0d02          	tnz	(OFST+2,sp)
7141  10f6 2706          	jreq	L1662
7142                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
7144  10f8 7218525d      	bset	21085,#4
7146  10fc 2004          	jra	L7362
7147  10fe               L1662:
7148                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7150  10fe 7219525d      	bres	21085,#4
7151  1102               L7362:
7152                     ; 1634 }
7155  1102 85            	popw	x
7156  1103 81            	ret
7202                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
7202                     ; 1648 {
7203                     	switch	.text
7204  1104               _TIM1_CCxNCmd:
7206  1104 89            	pushw	x
7207       00000000      OFST:	set	0
7210                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
7212  1105 9e            	ld	a,xh
7213  1106 4d            	tnz	a
7214  1107 270a          	jreq	L2021
7215  1109 9e            	ld	a,xh
7216  110a a101          	cp	a,#1
7217  110c 2705          	jreq	L2021
7218  110e 9e            	ld	a,xh
7219  110f a102          	cp	a,#2
7220  1111 2603          	jrne	L0021
7221  1113               L2021:
7222  1113 4f            	clr	a
7223  1114 2010          	jra	L4021
7224  1116               L0021:
7225  1116 ae0672        	ldw	x,#1650
7226  1119 89            	pushw	x
7227  111a ae0000        	ldw	x,#0
7228  111d 89            	pushw	x
7229  111e ae0000        	ldw	x,#L101
7230  1121 cd0000        	call	_assert_failed
7232  1124 5b04          	addw	sp,#4
7233  1126               L4021:
7234                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
7236  1126 0d02          	tnz	(OFST+2,sp)
7237  1128 2706          	jreq	L0121
7238  112a 7b02          	ld	a,(OFST+2,sp)
7239  112c a101          	cp	a,#1
7240  112e 2603          	jrne	L6021
7241  1130               L0121:
7242  1130 4f            	clr	a
7243  1131 2010          	jra	L2121
7244  1133               L6021:
7245  1133 ae0673        	ldw	x,#1651
7246  1136 89            	pushw	x
7247  1137 ae0000        	ldw	x,#0
7248  113a 89            	pushw	x
7249  113b ae0000        	ldw	x,#L101
7250  113e cd0000        	call	_assert_failed
7252  1141 5b04          	addw	sp,#4
7253  1143               L2121:
7254                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
7256  1143 0d01          	tnz	(OFST+1,sp)
7257  1145 2610          	jrne	L7072
7258                     ; 1656     if (NewState != DISABLE)
7260  1147 0d02          	tnz	(OFST+2,sp)
7261  1149 2706          	jreq	L1172
7262                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
7264  114b 7214525c      	bset	21084,#2
7266  114f 202a          	jra	L5172
7267  1151               L1172:
7268                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
7270  1151 7215525c      	bres	21084,#2
7271  1155 2024          	jra	L5172
7272  1157               L7072:
7273                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
7275  1157 7b01          	ld	a,(OFST+1,sp)
7276  1159 a101          	cp	a,#1
7277  115b 2610          	jrne	L7172
7278                     ; 1668     if (NewState != DISABLE)
7280  115d 0d02          	tnz	(OFST+2,sp)
7281  115f 2706          	jreq	L1272
7282                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
7284  1161 721c525c      	bset	21084,#6
7286  1165 2014          	jra	L5172
7287  1167               L1272:
7288                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
7290  1167 721d525c      	bres	21084,#6
7291  116b 200e          	jra	L5172
7292  116d               L7172:
7293                     ; 1680     if (NewState != DISABLE)
7295  116d 0d02          	tnz	(OFST+2,sp)
7296  116f 2706          	jreq	L7272
7297                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
7299  1171 7214525d      	bset	21085,#2
7301  1175 2004          	jra	L5172
7302  1177               L7272:
7303                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
7305  1177 7215525d      	bres	21085,#2
7306  117b               L5172:
7307                     ; 1689 }
7310  117b 85            	popw	x
7311  117c 81            	ret
7357                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
7357                     ; 1713 {
7358                     	switch	.text
7359  117d               _TIM1_SelectOCxM:
7361  117d 89            	pushw	x
7362       00000000      OFST:	set	0
7365                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
7367  117e 9e            	ld	a,xh
7368  117f 4d            	tnz	a
7369  1180 270f          	jreq	L0221
7370  1182 9e            	ld	a,xh
7371  1183 a101          	cp	a,#1
7372  1185 270a          	jreq	L0221
7373  1187 9e            	ld	a,xh
7374  1188 a102          	cp	a,#2
7375  118a 2705          	jreq	L0221
7376  118c 9e            	ld	a,xh
7377  118d a103          	cp	a,#3
7378  118f 2603          	jrne	L6121
7379  1191               L0221:
7380  1191 4f            	clr	a
7381  1192 2010          	jra	L2221
7382  1194               L6121:
7383  1194 ae06b3        	ldw	x,#1715
7384  1197 89            	pushw	x
7385  1198 ae0000        	ldw	x,#0
7386  119b 89            	pushw	x
7387  119c ae0000        	ldw	x,#L101
7388  119f cd0000        	call	_assert_failed
7390  11a2 5b04          	addw	sp,#4
7391  11a4               L2221:
7392                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
7394  11a4 0d02          	tnz	(OFST+2,sp)
7395  11a6 272a          	jreq	L6221
7396  11a8 7b02          	ld	a,(OFST+2,sp)
7397  11aa a110          	cp	a,#16
7398  11ac 2724          	jreq	L6221
7399  11ae 7b02          	ld	a,(OFST+2,sp)
7400  11b0 a120          	cp	a,#32
7401  11b2 271e          	jreq	L6221
7402  11b4 7b02          	ld	a,(OFST+2,sp)
7403  11b6 a130          	cp	a,#48
7404  11b8 2718          	jreq	L6221
7405  11ba 7b02          	ld	a,(OFST+2,sp)
7406  11bc a160          	cp	a,#96
7407  11be 2712          	jreq	L6221
7408  11c0 7b02          	ld	a,(OFST+2,sp)
7409  11c2 a170          	cp	a,#112
7410  11c4 270c          	jreq	L6221
7411  11c6 7b02          	ld	a,(OFST+2,sp)
7412  11c8 a150          	cp	a,#80
7413  11ca 2706          	jreq	L6221
7414  11cc 7b02          	ld	a,(OFST+2,sp)
7415  11ce a140          	cp	a,#64
7416  11d0 2603          	jrne	L4221
7417  11d2               L6221:
7418  11d2 4f            	clr	a
7419  11d3 2010          	jra	L0321
7420  11d5               L4221:
7421  11d5 ae06b4        	ldw	x,#1716
7422  11d8 89            	pushw	x
7423  11d9 ae0000        	ldw	x,#0
7424  11dc 89            	pushw	x
7425  11dd ae0000        	ldw	x,#L101
7426  11e0 cd0000        	call	_assert_failed
7428  11e3 5b04          	addw	sp,#4
7429  11e5               L0321:
7430                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
7432  11e5 0d01          	tnz	(OFST+1,sp)
7433  11e7 2610          	jrne	L5572
7434                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
7436  11e9 7211525c      	bres	21084,#0
7437                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
7437                     ; 1725                             | (uint8_t)TIM1_OCMode);
7439  11ed c65258        	ld	a,21080
7440  11f0 a48f          	and	a,#143
7441  11f2 1a02          	or	a,(OFST+2,sp)
7442  11f4 c75258        	ld	21080,a
7444  11f7 203a          	jra	L7572
7445  11f9               L5572:
7446                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
7448  11f9 7b01          	ld	a,(OFST+1,sp)
7449  11fb a101          	cp	a,#1
7450  11fd 2610          	jrne	L1672
7451                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
7453  11ff 7219525c      	bres	21084,#4
7454                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
7454                     ; 1734                             | (uint8_t)TIM1_OCMode);
7456  1203 c65259        	ld	a,21081
7457  1206 a48f          	and	a,#143
7458  1208 1a02          	or	a,(OFST+2,sp)
7459  120a c75259        	ld	21081,a
7461  120d 2024          	jra	L7572
7462  120f               L1672:
7463                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
7465  120f 7b01          	ld	a,(OFST+1,sp)
7466  1211 a102          	cp	a,#2
7467  1213 2610          	jrne	L5672
7468                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
7470  1215 7211525d      	bres	21085,#0
7471                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
7471                     ; 1743                             | (uint8_t)TIM1_OCMode);
7473  1219 c6525a        	ld	a,21082
7474  121c a48f          	and	a,#143
7475  121e 1a02          	or	a,(OFST+2,sp)
7476  1220 c7525a        	ld	21082,a
7478  1223 200e          	jra	L7572
7479  1225               L5672:
7480                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
7482  1225 7219525d      	bres	21085,#4
7483                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
7483                     ; 1752                             | (uint8_t)TIM1_OCMode);
7485  1229 c6525b        	ld	a,21083
7486  122c a48f          	and	a,#143
7487  122e 1a02          	or	a,(OFST+2,sp)
7488  1230 c7525b        	ld	21083,a
7489  1233               L7572:
7490                     ; 1754 }
7493  1233 85            	popw	x
7494  1234 81            	ret
7528                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
7528                     ; 1763 {
7529                     	switch	.text
7530  1235               _TIM1_SetCounter:
7534                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
7536  1235 9e            	ld	a,xh
7537  1236 c7525e        	ld	21086,a
7538                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
7540  1239 9f            	ld	a,xl
7541  123a c7525f        	ld	21087,a
7542                     ; 1767 }
7545  123d 81            	ret
7579                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
7579                     ; 1776 {
7580                     	switch	.text
7581  123e               _TIM1_SetAutoreload:
7585                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
7587  123e 9e            	ld	a,xh
7588  123f c75262        	ld	21090,a
7589                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
7591  1242 9f            	ld	a,xl
7592  1243 c75263        	ld	21091,a
7593                     ; 1780  }
7596  1246 81            	ret
7630                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
7630                     ; 1789 {
7631                     	switch	.text
7632  1247               _TIM1_SetCompare1:
7636                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
7638  1247 9e            	ld	a,xh
7639  1248 c75265        	ld	21093,a
7640                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
7642  124b 9f            	ld	a,xl
7643  124c c75266        	ld	21094,a
7644                     ; 1793 }
7647  124f 81            	ret
7681                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7681                     ; 1802 {
7682                     	switch	.text
7683  1250               _TIM1_SetCompare2:
7687                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7689  1250 9e            	ld	a,xh
7690  1251 c75267        	ld	21095,a
7691                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7693  1254 9f            	ld	a,xl
7694  1255 c75268        	ld	21096,a
7695                     ; 1806 }
7698  1258 81            	ret
7732                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7732                     ; 1815 {
7733                     	switch	.text
7734  1259               _TIM1_SetCompare3:
7738                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7740  1259 9e            	ld	a,xh
7741  125a c75269        	ld	21097,a
7742                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7744  125d 9f            	ld	a,xl
7745  125e c7526a        	ld	21098,a
7746                     ; 1819 }
7749  1261 81            	ret
7783                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7783                     ; 1828 {
7784                     	switch	.text
7785  1262               _TIM1_SetCompare4:
7789                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7791  1262 9e            	ld	a,xh
7792  1263 c7526b        	ld	21099,a
7793                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7795  1266 9f            	ld	a,xl
7796  1267 c7526c        	ld	21100,a
7797                     ; 1832 }
7800  126a 81            	ret
7837                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7837                     ; 1845 {
7838                     	switch	.text
7839  126b               _TIM1_SetIC1Prescaler:
7841  126b 88            	push	a
7842       00000000      OFST:	set	0
7845                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7847  126c 4d            	tnz	a
7848  126d 270c          	jreq	L2521
7849  126f a104          	cp	a,#4
7850  1271 2708          	jreq	L2521
7851  1273 a108          	cp	a,#8
7852  1275 2704          	jreq	L2521
7853  1277 a10c          	cp	a,#12
7854  1279 2603          	jrne	L0521
7855  127b               L2521:
7856  127b 4f            	clr	a
7857  127c 2010          	jra	L4521
7858  127e               L0521:
7859  127e ae0737        	ldw	x,#1847
7860  1281 89            	pushw	x
7861  1282 ae0000        	ldw	x,#0
7862  1285 89            	pushw	x
7863  1286 ae0000        	ldw	x,#L101
7864  1289 cd0000        	call	_assert_failed
7866  128c 5b04          	addw	sp,#4
7867  128e               L4521:
7868                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7868                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7870  128e c65258        	ld	a,21080
7871  1291 a4f3          	and	a,#243
7872  1293 1a01          	or	a,(OFST+1,sp)
7873  1295 c75258        	ld	21080,a
7874                     ; 1852 }
7877  1298 84            	pop	a
7878  1299 81            	ret
7915                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7915                     ; 1865 {
7916                     	switch	.text
7917  129a               _TIM1_SetIC2Prescaler:
7919  129a 88            	push	a
7920       00000000      OFST:	set	0
7923                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7925  129b 4d            	tnz	a
7926  129c 270c          	jreq	L2621
7927  129e a104          	cp	a,#4
7928  12a0 2708          	jreq	L2621
7929  12a2 a108          	cp	a,#8
7930  12a4 2704          	jreq	L2621
7931  12a6 a10c          	cp	a,#12
7932  12a8 2603          	jrne	L0621
7933  12aa               L2621:
7934  12aa 4f            	clr	a
7935  12ab 2010          	jra	L4621
7936  12ad               L0621:
7937  12ad ae074c        	ldw	x,#1868
7938  12b0 89            	pushw	x
7939  12b1 ae0000        	ldw	x,#0
7940  12b4 89            	pushw	x
7941  12b5 ae0000        	ldw	x,#L101
7942  12b8 cd0000        	call	_assert_failed
7944  12bb 5b04          	addw	sp,#4
7945  12bd               L4621:
7946                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7946                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7948  12bd c65259        	ld	a,21081
7949  12c0 a4f3          	and	a,#243
7950  12c2 1a01          	or	a,(OFST+1,sp)
7951  12c4 c75259        	ld	21081,a
7952                     ; 1873 }
7955  12c7 84            	pop	a
7956  12c8 81            	ret
7993                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7993                     ; 1886 {
7994                     	switch	.text
7995  12c9               _TIM1_SetIC3Prescaler:
7997  12c9 88            	push	a
7998       00000000      OFST:	set	0
8001                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
8003  12ca 4d            	tnz	a
8004  12cb 270c          	jreq	L2721
8005  12cd a104          	cp	a,#4
8006  12cf 2708          	jreq	L2721
8007  12d1 a108          	cp	a,#8
8008  12d3 2704          	jreq	L2721
8009  12d5 a10c          	cp	a,#12
8010  12d7 2603          	jrne	L0721
8011  12d9               L2721:
8012  12d9 4f            	clr	a
8013  12da 2010          	jra	L4721
8014  12dc               L0721:
8015  12dc ae0761        	ldw	x,#1889
8016  12df 89            	pushw	x
8017  12e0 ae0000        	ldw	x,#0
8018  12e3 89            	pushw	x
8019  12e4 ae0000        	ldw	x,#L101
8020  12e7 cd0000        	call	_assert_failed
8022  12ea 5b04          	addw	sp,#4
8023  12ec               L4721:
8024                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
8024                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
8026  12ec c6525a        	ld	a,21082
8027  12ef a4f3          	and	a,#243
8028  12f1 1a01          	or	a,(OFST+1,sp)
8029  12f3 c7525a        	ld	21082,a
8030                     ; 1894 }
8033  12f6 84            	pop	a
8034  12f7 81            	ret
8071                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
8071                     ; 1907 {
8072                     	switch	.text
8073  12f8               _TIM1_SetIC4Prescaler:
8075  12f8 88            	push	a
8076       00000000      OFST:	set	0
8079                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
8081  12f9 4d            	tnz	a
8082  12fa 270c          	jreq	L2031
8083  12fc a104          	cp	a,#4
8084  12fe 2708          	jreq	L2031
8085  1300 a108          	cp	a,#8
8086  1302 2704          	jreq	L2031
8087  1304 a10c          	cp	a,#12
8088  1306 2603          	jrne	L0031
8089  1308               L2031:
8090  1308 4f            	clr	a
8091  1309 2010          	jra	L4031
8092  130b               L0031:
8093  130b ae0776        	ldw	x,#1910
8094  130e 89            	pushw	x
8095  130f ae0000        	ldw	x,#0
8096  1312 89            	pushw	x
8097  1313 ae0000        	ldw	x,#L101
8098  1316 cd0000        	call	_assert_failed
8100  1319 5b04          	addw	sp,#4
8101  131b               L4031:
8102                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
8102                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
8104  131b c6525b        	ld	a,21083
8105  131e a4f3          	and	a,#243
8106  1320 1a01          	or	a,(OFST+1,sp)
8107  1322 c7525b        	ld	21083,a
8108                     ; 1915 }
8111  1325 84            	pop	a
8112  1326 81            	ret
8164                     ; 1922 uint16_t TIM1_GetCapture1(void)
8164                     ; 1923 {
8165                     	switch	.text
8166  1327               _TIM1_GetCapture1:
8168  1327 5204          	subw	sp,#4
8169       00000004      OFST:	set	4
8172                     ; 1926   uint16_t tmpccr1 = 0;
8174                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
8178                     ; 1929   tmpccr1h = TIM1->CCR1H;
8180  1329 c65265        	ld	a,21093
8181  132c 6b02          	ld	(OFST-2,sp),a
8182                     ; 1930   tmpccr1l = TIM1->CCR1L;
8184  132e c65266        	ld	a,21094
8185  1331 6b01          	ld	(OFST-3,sp),a
8186                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
8188  1333 7b01          	ld	a,(OFST-3,sp)
8189  1335 5f            	clrw	x
8190  1336 97            	ld	xl,a
8191  1337 1f03          	ldw	(OFST-1,sp),x
8192                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
8194  1339 7b02          	ld	a,(OFST-2,sp)
8195  133b 5f            	clrw	x
8196  133c 97            	ld	xl,a
8197  133d 4f            	clr	a
8198  133e 02            	rlwa	x,a
8199  133f 01            	rrwa	x,a
8200  1340 1a04          	or	a,(OFST+0,sp)
8201  1342 01            	rrwa	x,a
8202  1343 1a03          	or	a,(OFST-1,sp)
8203  1345 01            	rrwa	x,a
8204  1346 1f03          	ldw	(OFST-1,sp),x
8205                     ; 1935   return (uint16_t)tmpccr1;
8207  1348 1e03          	ldw	x,(OFST-1,sp)
8210  134a 5b04          	addw	sp,#4
8211  134c 81            	ret
8263                     ; 1943 uint16_t TIM1_GetCapture2(void)
8263                     ; 1944 {
8264                     	switch	.text
8265  134d               _TIM1_GetCapture2:
8267  134d 5204          	subw	sp,#4
8268       00000004      OFST:	set	4
8271                     ; 1947   uint16_t tmpccr2 = 0;
8273                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
8277                     ; 1950   tmpccr2h = TIM1->CCR2H;
8279  134f c65267        	ld	a,21095
8280  1352 6b02          	ld	(OFST-2,sp),a
8281                     ; 1951   tmpccr2l = TIM1->CCR2L;
8283  1354 c65268        	ld	a,21096
8284  1357 6b01          	ld	(OFST-3,sp),a
8285                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
8287  1359 7b01          	ld	a,(OFST-3,sp)
8288  135b 5f            	clrw	x
8289  135c 97            	ld	xl,a
8290  135d 1f03          	ldw	(OFST-1,sp),x
8291                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
8293  135f 7b02          	ld	a,(OFST-2,sp)
8294  1361 5f            	clrw	x
8295  1362 97            	ld	xl,a
8296  1363 4f            	clr	a
8297  1364 02            	rlwa	x,a
8298  1365 01            	rrwa	x,a
8299  1366 1a04          	or	a,(OFST+0,sp)
8300  1368 01            	rrwa	x,a
8301  1369 1a03          	or	a,(OFST-1,sp)
8302  136b 01            	rrwa	x,a
8303  136c 1f03          	ldw	(OFST-1,sp),x
8304                     ; 1956   return (uint16_t)tmpccr2;
8306  136e 1e03          	ldw	x,(OFST-1,sp)
8309  1370 5b04          	addw	sp,#4
8310  1372 81            	ret
8362                     ; 1964 uint16_t TIM1_GetCapture3(void)
8362                     ; 1965 {
8363                     	switch	.text
8364  1373               _TIM1_GetCapture3:
8366  1373 5204          	subw	sp,#4
8367       00000004      OFST:	set	4
8370                     ; 1967   uint16_t tmpccr3 = 0;
8372                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
8376                     ; 1970   tmpccr3h = TIM1->CCR3H;
8378  1375 c65269        	ld	a,21097
8379  1378 6b02          	ld	(OFST-2,sp),a
8380                     ; 1971   tmpccr3l = TIM1->CCR3L;
8382  137a c6526a        	ld	a,21098
8383  137d 6b01          	ld	(OFST-3,sp),a
8384                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
8386  137f 7b01          	ld	a,(OFST-3,sp)
8387  1381 5f            	clrw	x
8388  1382 97            	ld	xl,a
8389  1383 1f03          	ldw	(OFST-1,sp),x
8390                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
8392  1385 7b02          	ld	a,(OFST-2,sp)
8393  1387 5f            	clrw	x
8394  1388 97            	ld	xl,a
8395  1389 4f            	clr	a
8396  138a 02            	rlwa	x,a
8397  138b 01            	rrwa	x,a
8398  138c 1a04          	or	a,(OFST+0,sp)
8399  138e 01            	rrwa	x,a
8400  138f 1a03          	or	a,(OFST-1,sp)
8401  1391 01            	rrwa	x,a
8402  1392 1f03          	ldw	(OFST-1,sp),x
8403                     ; 1976   return (uint16_t)tmpccr3;
8405  1394 1e03          	ldw	x,(OFST-1,sp)
8408  1396 5b04          	addw	sp,#4
8409  1398 81            	ret
8461                     ; 1984 uint16_t TIM1_GetCapture4(void)
8461                     ; 1985 {
8462                     	switch	.text
8463  1399               _TIM1_GetCapture4:
8465  1399 5204          	subw	sp,#4
8466       00000004      OFST:	set	4
8469                     ; 1987   uint16_t tmpccr4 = 0;
8471                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
8475                     ; 1990   tmpccr4h = TIM1->CCR4H;
8477  139b c6526b        	ld	a,21099
8478  139e 6b02          	ld	(OFST-2,sp),a
8479                     ; 1991   tmpccr4l = TIM1->CCR4L;
8481  13a0 c6526c        	ld	a,21100
8482  13a3 6b01          	ld	(OFST-3,sp),a
8483                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
8485  13a5 7b01          	ld	a,(OFST-3,sp)
8486  13a7 5f            	clrw	x
8487  13a8 97            	ld	xl,a
8488  13a9 1f03          	ldw	(OFST-1,sp),x
8489                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
8491  13ab 7b02          	ld	a,(OFST-2,sp)
8492  13ad 5f            	clrw	x
8493  13ae 97            	ld	xl,a
8494  13af 4f            	clr	a
8495  13b0 02            	rlwa	x,a
8496  13b1 01            	rrwa	x,a
8497  13b2 1a04          	or	a,(OFST+0,sp)
8498  13b4 01            	rrwa	x,a
8499  13b5 1a03          	or	a,(OFST-1,sp)
8500  13b7 01            	rrwa	x,a
8501  13b8 1f03          	ldw	(OFST-1,sp),x
8502                     ; 1996   return (uint16_t)tmpccr4;
8504  13ba 1e03          	ldw	x,(OFST-1,sp)
8507  13bc 5b04          	addw	sp,#4
8508  13be 81            	ret
8542                     ; 2004 uint16_t TIM1_GetCounter(void)
8542                     ; 2005 {
8543                     	switch	.text
8544  13bf               _TIM1_GetCounter:
8546  13bf 89            	pushw	x
8547       00000002      OFST:	set	2
8550                     ; 2006   uint16_t tmpcntr = 0;
8552                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
8554  13c0 c6525e        	ld	a,21086
8555  13c3 5f            	clrw	x
8556  13c4 97            	ld	xl,a
8557  13c5 4f            	clr	a
8558  13c6 02            	rlwa	x,a
8559  13c7 1f01          	ldw	(OFST-1,sp),x
8560                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
8562  13c9 c6525f        	ld	a,21087
8563  13cc 5f            	clrw	x
8564  13cd 97            	ld	xl,a
8565  13ce 01            	rrwa	x,a
8566  13cf 1a02          	or	a,(OFST+0,sp)
8567  13d1 01            	rrwa	x,a
8568  13d2 1a01          	or	a,(OFST-1,sp)
8569  13d4 01            	rrwa	x,a
8572  13d5 5b02          	addw	sp,#2
8573  13d7 81            	ret
8607                     ; 2019 uint16_t TIM1_GetPrescaler(void)
8607                     ; 2020 {
8608                     	switch	.text
8609  13d8               _TIM1_GetPrescaler:
8611  13d8 89            	pushw	x
8612       00000002      OFST:	set	2
8615                     ; 2021   uint16_t temp = 0;
8617                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
8619  13d9 c65260        	ld	a,21088
8620  13dc 5f            	clrw	x
8621  13dd 97            	ld	xl,a
8622  13de 4f            	clr	a
8623  13df 02            	rlwa	x,a
8624  13e0 1f01          	ldw	(OFST-1,sp),x
8625                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
8627  13e2 c65261        	ld	a,21089
8628  13e5 5f            	clrw	x
8629  13e6 97            	ld	xl,a
8630  13e7 01            	rrwa	x,a
8631  13e8 1a02          	or	a,(OFST+0,sp)
8632  13ea 01            	rrwa	x,a
8633  13eb 1a01          	or	a,(OFST-1,sp)
8634  13ed 01            	rrwa	x,a
8637  13ee 5b02          	addw	sp,#2
8638  13f0 81            	ret
8813                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8813                     ; 2048 {
8814                     	switch	.text
8815  13f1               _TIM1_GetFlagStatus:
8817  13f1 89            	pushw	x
8818  13f2 89            	pushw	x
8819       00000002      OFST:	set	2
8822                     ; 2049   FlagStatus bitstatus = RESET;
8824                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8828                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8830  13f3 a30001        	cpw	x,#1
8831  13f6 2737          	jreq	L6231
8832  13f8 a30002        	cpw	x,#2
8833  13fb 2732          	jreq	L6231
8834  13fd a30004        	cpw	x,#4
8835  1400 272d          	jreq	L6231
8836  1402 a30008        	cpw	x,#8
8837  1405 2728          	jreq	L6231
8838  1407 a30010        	cpw	x,#16
8839  140a 2723          	jreq	L6231
8840  140c a30020        	cpw	x,#32
8841  140f 271e          	jreq	L6231
8842  1411 a30040        	cpw	x,#64
8843  1414 2719          	jreq	L6231
8844  1416 a30080        	cpw	x,#128
8845  1419 2714          	jreq	L6231
8846  141b a30200        	cpw	x,#512
8847  141e 270f          	jreq	L6231
8848  1420 a30400        	cpw	x,#1024
8849  1423 270a          	jreq	L6231
8850  1425 a30800        	cpw	x,#2048
8851  1428 2705          	jreq	L6231
8852  142a a31000        	cpw	x,#4096
8853  142d 2603          	jrne	L4231
8854  142f               L6231:
8855  142f 4f            	clr	a
8856  1430 2010          	jra	L0331
8857  1432               L4231:
8858  1432 ae0805        	ldw	x,#2053
8859  1435 89            	pushw	x
8860  1436 ae0000        	ldw	x,#0
8861  1439 89            	pushw	x
8862  143a ae0000        	ldw	x,#L101
8863  143d cd0000        	call	_assert_failed
8865  1440 5b04          	addw	sp,#4
8866  1442               L0331:
8867                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8869  1442 c65255        	ld	a,21077
8870  1445 1404          	and	a,(OFST+2,sp)
8871  1447 6b01          	ld	(OFST-1,sp),a
8872                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8874  1449 7b03          	ld	a,(OFST+1,sp)
8875  144b 6b02          	ld	(OFST+0,sp),a
8876                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8878  144d c65256        	ld	a,21078
8879  1450 1402          	and	a,(OFST+0,sp)
8880  1452 1a01          	or	a,(OFST-1,sp)
8881  1454 2706          	jreq	L7643
8882                     ; 2060     bitstatus = SET;
8884  1456 a601          	ld	a,#1
8885  1458 6b02          	ld	(OFST+0,sp),a
8887  145a 2002          	jra	L1743
8888  145c               L7643:
8889                     ; 2064     bitstatus = RESET;
8891  145c 0f02          	clr	(OFST+0,sp)
8892  145e               L1743:
8893                     ; 2066   return (FlagStatus)(bitstatus);
8895  145e 7b02          	ld	a,(OFST+0,sp)
8898  1460 5b04          	addw	sp,#4
8899  1462 81            	ret
8935                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8935                     ; 2088 {
8936                     	switch	.text
8937  1463               _TIM1_ClearFlag:
8939  1463 89            	pushw	x
8940       00000000      OFST:	set	0
8943                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8945  1464 01            	rrwa	x,a
8946  1465 9f            	ld	a,xl
8947  1466 a4e1          	and	a,#225
8948  1468 97            	ld	xl,a
8949  1469 4f            	clr	a
8950  146a 02            	rlwa	x,a
8951  146b 5d            	tnzw	x
8952  146c 2607          	jrne	L4331
8953  146e 1e01          	ldw	x,(OFST+1,sp)
8954  1470 2703          	jreq	L4331
8955  1472 4f            	clr	a
8956  1473 2010          	jra	L6331
8957  1475               L4331:
8958  1475 ae082a        	ldw	x,#2090
8959  1478 89            	pushw	x
8960  1479 ae0000        	ldw	x,#0
8961  147c 89            	pushw	x
8962  147d ae0000        	ldw	x,#L101
8963  1480 cd0000        	call	_assert_failed
8965  1483 5b04          	addw	sp,#4
8966  1485               L6331:
8967                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8969  1485 7b02          	ld	a,(OFST+2,sp)
8970  1487 43            	cpl	a
8971  1488 c75255        	ld	21077,a
8972                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8972                     ; 2095                         (uint8_t)0x1E);
8974  148b 7b01          	ld	a,(OFST+1,sp)
8975  148d 43            	cpl	a
8976  148e a41e          	and	a,#30
8977  1490 c75256        	ld	21078,a
8978                     ; 2096 }
8981  1493 85            	popw	x
8982  1494 81            	ret
9047                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
9047                     ; 2113 {
9048                     	switch	.text
9049  1495               _TIM1_GetITStatus:
9051  1495 88            	push	a
9052  1496 89            	pushw	x
9053       00000002      OFST:	set	2
9056                     ; 2114   ITStatus bitstatus = RESET;
9058                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
9062                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
9064  1497 a101          	cp	a,#1
9065  1499 271c          	jreq	L4431
9066  149b a102          	cp	a,#2
9067  149d 2718          	jreq	L4431
9068  149f a104          	cp	a,#4
9069  14a1 2714          	jreq	L4431
9070  14a3 a108          	cp	a,#8
9071  14a5 2710          	jreq	L4431
9072  14a7 a110          	cp	a,#16
9073  14a9 270c          	jreq	L4431
9074  14ab a120          	cp	a,#32
9075  14ad 2708          	jreq	L4431
9076  14af a140          	cp	a,#64
9077  14b1 2704          	jreq	L4431
9078  14b3 a180          	cp	a,#128
9079  14b5 2603          	jrne	L2431
9080  14b7               L4431:
9081  14b7 4f            	clr	a
9082  14b8 2010          	jra	L6431
9083  14ba               L2431:
9084  14ba ae0846        	ldw	x,#2118
9085  14bd 89            	pushw	x
9086  14be ae0000        	ldw	x,#0
9087  14c1 89            	pushw	x
9088  14c2 ae0000        	ldw	x,#L101
9089  14c5 cd0000        	call	_assert_failed
9091  14c8 5b04          	addw	sp,#4
9092  14ca               L6431:
9093                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
9095  14ca c65255        	ld	a,21077
9096  14cd 1403          	and	a,(OFST+1,sp)
9097  14cf 6b01          	ld	(OFST-1,sp),a
9098                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
9100  14d1 c65254        	ld	a,21076
9101  14d4 1403          	and	a,(OFST+1,sp)
9102  14d6 6b02          	ld	(OFST+0,sp),a
9103                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
9105  14d8 0d01          	tnz	(OFST-1,sp)
9106  14da 270a          	jreq	L3453
9108  14dc 0d02          	tnz	(OFST+0,sp)
9109  14de 2706          	jreq	L3453
9110                     ; 2126     bitstatus = SET;
9112  14e0 a601          	ld	a,#1
9113  14e2 6b02          	ld	(OFST+0,sp),a
9115  14e4 2002          	jra	L5453
9116  14e6               L3453:
9117                     ; 2130     bitstatus = RESET;
9119  14e6 0f02          	clr	(OFST+0,sp)
9120  14e8               L5453:
9121                     ; 2132   return (ITStatus)(bitstatus);
9123  14e8 7b02          	ld	a,(OFST+0,sp)
9126  14ea 5b03          	addw	sp,#3
9127  14ec 81            	ret
9164                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
9164                     ; 2150 {
9165                     	switch	.text
9166  14ed               _TIM1_ClearITPendingBit:
9168  14ed 88            	push	a
9169       00000000      OFST:	set	0
9172                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
9174  14ee 4d            	tnz	a
9175  14ef 2703          	jreq	L2531
9176  14f1 4f            	clr	a
9177  14f2 2010          	jra	L4531
9178  14f4               L2531:
9179  14f4 ae0868        	ldw	x,#2152
9180  14f7 89            	pushw	x
9181  14f8 ae0000        	ldw	x,#0
9182  14fb 89            	pushw	x
9183  14fc ae0000        	ldw	x,#L101
9184  14ff cd0000        	call	_assert_failed
9186  1502 5b04          	addw	sp,#4
9187  1504               L4531:
9188                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
9190  1504 7b01          	ld	a,(OFST+1,sp)
9191  1506 43            	cpl	a
9192  1507 c75255        	ld	21077,a
9193                     ; 2156 }
9196  150a 84            	pop	a
9197  150b 81            	ret
9249                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
9249                     ; 2175                        uint8_t TIM1_ICSelection,
9249                     ; 2176                        uint8_t TIM1_ICFilter)
9249                     ; 2177 {
9250                     	switch	.text
9251  150c               L3_TI1_Config:
9253  150c 89            	pushw	x
9254  150d 88            	push	a
9255       00000001      OFST:	set	1
9258                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
9260  150e 7211525c      	bres	21084,#0
9261                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
9261                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9263  1512 7b06          	ld	a,(OFST+5,sp)
9264  1514 97            	ld	xl,a
9265  1515 a610          	ld	a,#16
9266  1517 42            	mul	x,a
9267  1518 9f            	ld	a,xl
9268  1519 1a03          	or	a,(OFST+2,sp)
9269  151b 6b01          	ld	(OFST+0,sp),a
9270  151d c65258        	ld	a,21080
9271  1520 a40c          	and	a,#12
9272  1522 1a01          	or	a,(OFST+0,sp)
9273  1524 c75258        	ld	21080,a
9274                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9276  1527 0d02          	tnz	(OFST+1,sp)
9277  1529 2706          	jreq	L3163
9278                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
9280  152b 7212525c      	bset	21084,#1
9282  152f 2004          	jra	L5163
9283  1531               L3163:
9284                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
9286  1531 7213525c      	bres	21084,#1
9287  1535               L5163:
9288                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
9290  1535 7210525c      	bset	21084,#0
9291                     ; 2197 }
9294  1539 5b03          	addw	sp,#3
9295  153b 81            	ret
9347                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
9347                     ; 2216                        uint8_t TIM1_ICSelection,
9347                     ; 2217                        uint8_t TIM1_ICFilter)
9347                     ; 2218 {
9348                     	switch	.text
9349  153c               L5_TI2_Config:
9351  153c 89            	pushw	x
9352  153d 88            	push	a
9353       00000001      OFST:	set	1
9356                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
9358  153e 7219525c      	bres	21084,#4
9359                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
9359                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9361  1542 7b06          	ld	a,(OFST+5,sp)
9362  1544 97            	ld	xl,a
9363  1545 a610          	ld	a,#16
9364  1547 42            	mul	x,a
9365  1548 9f            	ld	a,xl
9366  1549 1a03          	or	a,(OFST+2,sp)
9367  154b 6b01          	ld	(OFST+0,sp),a
9368  154d c65259        	ld	a,21081
9369  1550 a40c          	and	a,#12
9370  1552 1a01          	or	a,(OFST+0,sp)
9371  1554 c75259        	ld	21081,a
9372                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9374  1557 0d02          	tnz	(OFST+1,sp)
9375  1559 2706          	jreq	L5463
9376                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
9378  155b 721a525c      	bset	21084,#5
9380  155f 2004          	jra	L7463
9381  1561               L5463:
9382                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
9384  1561 721b525c      	bres	21084,#5
9385  1565               L7463:
9386                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
9388  1565 7218525c      	bset	21084,#4
9389                     ; 2236 }
9392  1569 5b03          	addw	sp,#3
9393  156b 81            	ret
9445                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
9445                     ; 2255                        uint8_t TIM1_ICSelection,
9445                     ; 2256                        uint8_t TIM1_ICFilter)
9445                     ; 2257 {
9446                     	switch	.text
9447  156c               L7_TI3_Config:
9449  156c 89            	pushw	x
9450  156d 88            	push	a
9451       00000001      OFST:	set	1
9454                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
9456  156e 7211525d      	bres	21085,#0
9457                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
9457                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9459  1572 7b06          	ld	a,(OFST+5,sp)
9460  1574 97            	ld	xl,a
9461  1575 a610          	ld	a,#16
9462  1577 42            	mul	x,a
9463  1578 9f            	ld	a,xl
9464  1579 1a03          	or	a,(OFST+2,sp)
9465  157b 6b01          	ld	(OFST+0,sp),a
9466  157d c6525a        	ld	a,21082
9467  1580 a40c          	and	a,#12
9468  1582 1a01          	or	a,(OFST+0,sp)
9469  1584 c7525a        	ld	21082,a
9470                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9472  1587 0d02          	tnz	(OFST+1,sp)
9473  1589 2706          	jreq	L7763
9474                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
9476  158b 7212525d      	bset	21085,#1
9478  158f 2004          	jra	L1073
9479  1591               L7763:
9480                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
9482  1591 7213525d      	bres	21085,#1
9483  1595               L1073:
9484                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
9486  1595 7210525d      	bset	21085,#0
9487                     ; 2276 }
9490  1599 5b03          	addw	sp,#3
9491  159b 81            	ret
9543                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
9543                     ; 2295                        uint8_t TIM1_ICSelection,
9543                     ; 2296                        uint8_t TIM1_ICFilter)
9543                     ; 2297 {
9544                     	switch	.text
9545  159c               L11_TI4_Config:
9547  159c 89            	pushw	x
9548  159d 88            	push	a
9549       00000001      OFST:	set	1
9552                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
9554  159e 7219525d      	bres	21085,#4
9555                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
9555                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
9557  15a2 7b06          	ld	a,(OFST+5,sp)
9558  15a4 97            	ld	xl,a
9559  15a5 a610          	ld	a,#16
9560  15a7 42            	mul	x,a
9561  15a8 9f            	ld	a,xl
9562  15a9 1a03          	or	a,(OFST+2,sp)
9563  15ab 6b01          	ld	(OFST+0,sp),a
9564  15ad c6525b        	ld	a,21083
9565  15b0 a40c          	and	a,#12
9566  15b2 1a01          	or	a,(OFST+0,sp)
9567  15b4 c7525b        	ld	21083,a
9568                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
9570  15b7 0d02          	tnz	(OFST+1,sp)
9571  15b9 2706          	jreq	L1373
9572                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
9574  15bb 721a525d      	bset	21085,#5
9576  15bf 2004          	jra	L3373
9577  15c1               L1373:
9578                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
9580  15c1 721b525d      	bres	21085,#5
9581  15c5               L3373:
9582                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
9584  15c5 7218525d      	bset	21085,#4
9585                     ; 2317 }
9588  15c9 5b03          	addw	sp,#3
9589  15cb 81            	ret
9602                     	xdef	_TIM1_ClearITPendingBit
9603                     	xdef	_TIM1_GetITStatus
9604                     	xdef	_TIM1_ClearFlag
9605                     	xdef	_TIM1_GetFlagStatus
9606                     	xdef	_TIM1_GetPrescaler
9607                     	xdef	_TIM1_GetCounter
9608                     	xdef	_TIM1_GetCapture4
9609                     	xdef	_TIM1_GetCapture3
9610                     	xdef	_TIM1_GetCapture2
9611                     	xdef	_TIM1_GetCapture1
9612                     	xdef	_TIM1_SetIC4Prescaler
9613                     	xdef	_TIM1_SetIC3Prescaler
9614                     	xdef	_TIM1_SetIC2Prescaler
9615                     	xdef	_TIM1_SetIC1Prescaler
9616                     	xdef	_TIM1_SetCompare4
9617                     	xdef	_TIM1_SetCompare3
9618                     	xdef	_TIM1_SetCompare2
9619                     	xdef	_TIM1_SetCompare1
9620                     	xdef	_TIM1_SetAutoreload
9621                     	xdef	_TIM1_SetCounter
9622                     	xdef	_TIM1_SelectOCxM
9623                     	xdef	_TIM1_CCxNCmd
9624                     	xdef	_TIM1_CCxCmd
9625                     	xdef	_TIM1_OC4PolarityConfig
9626                     	xdef	_TIM1_OC3NPolarityConfig
9627                     	xdef	_TIM1_OC3PolarityConfig
9628                     	xdef	_TIM1_OC2NPolarityConfig
9629                     	xdef	_TIM1_OC2PolarityConfig
9630                     	xdef	_TIM1_OC1NPolarityConfig
9631                     	xdef	_TIM1_OC1PolarityConfig
9632                     	xdef	_TIM1_GenerateEvent
9633                     	xdef	_TIM1_OC4FastConfig
9634                     	xdef	_TIM1_OC3FastConfig
9635                     	xdef	_TIM1_OC2FastConfig
9636                     	xdef	_TIM1_OC1FastConfig
9637                     	xdef	_TIM1_OC4PreloadConfig
9638                     	xdef	_TIM1_OC3PreloadConfig
9639                     	xdef	_TIM1_OC2PreloadConfig
9640                     	xdef	_TIM1_OC1PreloadConfig
9641                     	xdef	_TIM1_CCPreloadControl
9642                     	xdef	_TIM1_SelectCOM
9643                     	xdef	_TIM1_ARRPreloadConfig
9644                     	xdef	_TIM1_ForcedOC4Config
9645                     	xdef	_TIM1_ForcedOC3Config
9646                     	xdef	_TIM1_ForcedOC2Config
9647                     	xdef	_TIM1_ForcedOC1Config
9648                     	xdef	_TIM1_CounterModeConfig
9649                     	xdef	_TIM1_PrescalerConfig
9650                     	xdef	_TIM1_EncoderInterfaceConfig
9651                     	xdef	_TIM1_SelectMasterSlaveMode
9652                     	xdef	_TIM1_SelectSlaveMode
9653                     	xdef	_TIM1_SelectOutputTrigger
9654                     	xdef	_TIM1_SelectOnePulseMode
9655                     	xdef	_TIM1_SelectHallSensor
9656                     	xdef	_TIM1_UpdateRequestConfig
9657                     	xdef	_TIM1_UpdateDisableConfig
9658                     	xdef	_TIM1_SelectInputTrigger
9659                     	xdef	_TIM1_TIxExternalClockConfig
9660                     	xdef	_TIM1_ETRConfig
9661                     	xdef	_TIM1_ETRClockMode2Config
9662                     	xdef	_TIM1_ETRClockMode1Config
9663                     	xdef	_TIM1_InternalClockConfig
9664                     	xdef	_TIM1_ITConfig
9665                     	xdef	_TIM1_CtrlPWMOutputs
9666                     	xdef	_TIM1_Cmd
9667                     	xdef	_TIM1_PWMIConfig
9668                     	xdef	_TIM1_ICInit
9669                     	xdef	_TIM1_BDTRConfig
9670                     	xdef	_TIM1_OC4Init
9671                     	xdef	_TIM1_OC3Init
9672                     	xdef	_TIM1_OC2Init
9673                     	xdef	_TIM1_OC1Init
9674                     	xdef	_TIM1_TimeBaseInit
9675                     	xdef	_TIM1_DeInit
9676                     	xref	_assert_failed
9677                     .const:	section	.text
9678  0000               L101:
9679  0000 6c6962726172  	dc.b	"library\stm8s_tim1"
9680  0012 2e6300        	dc.b	".c",0
9700                     	end
