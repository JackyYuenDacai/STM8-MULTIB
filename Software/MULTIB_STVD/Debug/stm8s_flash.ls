   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.8.32 - 23 Mar 2010
   3                     ; Generator V4.3.4 - 23 Mar 2010
  75                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  75                     ; 88 {
  77                     	switch	.text
  78  0000               _FLASH_Unlock:
  80  0000 88            	push	a
  81       00000000      OFST:	set	0
  84                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  86  0001 a1fd          	cp	a,#253
  87  0003 2704          	jreq	L01
  88  0005 a1f7          	cp	a,#247
  89  0007 2603          	jrne	L6
  90  0009               L01:
  91  0009 4f            	clr	a
  92  000a 2010          	jra	L21
  93  000c               L6:
  94  000c ae005a        	ldw	x,#90
  95  000f 89            	pushw	x
  96  0010 ae0000        	ldw	x,#0
  97  0013 89            	pushw	x
  98  0014 ae0010        	ldw	x,#L73
  99  0017 cd0000        	call	_assert_failed
 101  001a 5b04          	addw	sp,#4
 102  001c               L21:
 103                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
 105  001c 7b01          	ld	a,(OFST+1,sp)
 106  001e a1fd          	cp	a,#253
 107  0020 260a          	jrne	L14
 108                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
 110  0022 35565062      	mov	20578,#86
 111                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 113  0026 35ae5062      	mov	20578,#174
 115  002a 2008          	jra	L34
 116  002c               L14:
 117                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 119  002c 35ae5064      	mov	20580,#174
 120                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 122  0030 35565064      	mov	20580,#86
 123  0034               L34:
 124                     ; 104 }
 127  0034 84            	pop	a
 128  0035 81            	ret
 164                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 164                     ; 113 {
 165                     	switch	.text
 166  0036               _FLASH_Lock:
 168  0036 88            	push	a
 169       00000000      OFST:	set	0
 172                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 174  0037 a1fd          	cp	a,#253
 175  0039 2704          	jreq	L02
 176  003b a1f7          	cp	a,#247
 177  003d 2603          	jrne	L61
 178  003f               L02:
 179  003f 4f            	clr	a
 180  0040 2010          	jra	L22
 181  0042               L61:
 182  0042 ae0073        	ldw	x,#115
 183  0045 89            	pushw	x
 184  0046 ae0000        	ldw	x,#0
 185  0049 89            	pushw	x
 186  004a ae0010        	ldw	x,#L73
 187  004d cd0000        	call	_assert_failed
 189  0050 5b04          	addw	sp,#4
 190  0052               L22:
 191                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 193  0052 c6505f        	ld	a,20575
 194  0055 1401          	and	a,(OFST+1,sp)
 195  0057 c7505f        	ld	20575,a
 196                     ; 119 }
 199  005a 84            	pop	a
 200  005b 81            	ret
 223                     ; 126 void FLASH_DeInit(void)
 223                     ; 127 {
 224                     	switch	.text
 225  005c               _FLASH_DeInit:
 229                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 231  005c 725f505a      	clr	20570
 232                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 234  0060 725f505b      	clr	20571
 235                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 237  0064 35ff505c      	mov	20572,#255
 238                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 240  0068 7217505f      	bres	20575,#3
 241                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 243  006c 7213505f      	bres	20575,#1
 244                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 246  0070 c6505f        	ld	a,20575
 247                     ; 134 }
 250  0073 81            	ret
 306                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 306                     ; 143 {
 307                     	switch	.text
 308  0074               _FLASH_ITConfig:
 310  0074 88            	push	a
 311       00000000      OFST:	set	0
 314                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 316  0075 4d            	tnz	a
 317  0076 2704          	jreq	L23
 318  0078 a101          	cp	a,#1
 319  007a 2603          	jrne	L03
 320  007c               L23:
 321  007c 4f            	clr	a
 322  007d 2010          	jra	L43
 323  007f               L03:
 324  007f ae0091        	ldw	x,#145
 325  0082 89            	pushw	x
 326  0083 ae0000        	ldw	x,#0
 327  0086 89            	pushw	x
 328  0087 ae0010        	ldw	x,#L73
 329  008a cd0000        	call	_assert_failed
 331  008d 5b04          	addw	sp,#4
 332  008f               L43:
 333                     ; 147   if(NewState != DISABLE)
 335  008f 0d01          	tnz	(OFST+1,sp)
 336  0091 2706          	jreq	L121
 337                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 339  0093 7212505a      	bset	20570,#1
 341  0097 2004          	jra	L321
 342  0099               L121:
 343                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 345  0099 7213505a      	bres	20570,#1
 346  009d               L321:
 347                     ; 155 }
 350  009d 84            	pop	a
 351  009e 81            	ret
 386                     .const:	section	.text
 387  0000               L64:
 388  0000 00008000      	dc.l	32768
 389  0004               L05:
 390  0004 00010000      	dc.l	65536
 391  0008               L25:
 392  0008 00004000      	dc.l	16384
 393  000c               L45:
 394  000c 00004400      	dc.l	17408
 395                     ; 164 void FLASH_EraseByte(uint32_t Address)
 395                     ; 165 {
 396                     	switch	.text
 397  009f               _FLASH_EraseByte:
 399       00000000      OFST:	set	0
 402                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 404  009f 96            	ldw	x,sp
 405  00a0 1c0003        	addw	x,#OFST+3
 406  00a3 cd0000        	call	c_ltor
 408  00a6 ae0000        	ldw	x,#L64
 409  00a9 cd0000        	call	c_lcmp
 411  00ac 250f          	jrult	L44
 412  00ae 96            	ldw	x,sp
 413  00af 1c0003        	addw	x,#OFST+3
 414  00b2 cd0000        	call	c_ltor
 416  00b5 ae0004        	ldw	x,#L05
 417  00b8 cd0000        	call	c_lcmp
 419  00bb 251e          	jrult	L24
 420  00bd               L44:
 421  00bd 96            	ldw	x,sp
 422  00be 1c0003        	addw	x,#OFST+3
 423  00c1 cd0000        	call	c_ltor
 425  00c4 ae0008        	ldw	x,#L25
 426  00c7 cd0000        	call	c_lcmp
 428  00ca 2512          	jrult	L04
 429  00cc 96            	ldw	x,sp
 430  00cd 1c0003        	addw	x,#OFST+3
 431  00d0 cd0000        	call	c_ltor
 433  00d3 ae000c        	ldw	x,#L45
 434  00d6 cd0000        	call	c_lcmp
 436  00d9 2403          	jruge	L04
 437  00db               L24:
 438  00db 4f            	clr	a
 439  00dc 2010          	jra	L65
 440  00de               L04:
 441  00de ae00a7        	ldw	x,#167
 442  00e1 89            	pushw	x
 443  00e2 ae0000        	ldw	x,#0
 444  00e5 89            	pushw	x
 445  00e6 ae0010        	ldw	x,#L73
 446  00e9 cd0000        	call	_assert_failed
 448  00ec 5b04          	addw	sp,#4
 449  00ee               L65:
 450                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 452  00ee 1e05          	ldw	x,(OFST+5,sp)
 453  00f0 7f            	clr	(x)
 454                     ; 171 }
 457  00f1 81            	ret
 501                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 501                     ; 182 {
 502                     	switch	.text
 503  00f2               _FLASH_ProgramByte:
 505       00000000      OFST:	set	0
 508                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 510  00f2 96            	ldw	x,sp
 511  00f3 1c0003        	addw	x,#OFST+3
 512  00f6 cd0000        	call	c_ltor
 514  00f9 ae0000        	ldw	x,#L64
 515  00fc cd0000        	call	c_lcmp
 517  00ff 250f          	jrult	L66
 518  0101 96            	ldw	x,sp
 519  0102 1c0003        	addw	x,#OFST+3
 520  0105 cd0000        	call	c_ltor
 522  0108 ae0004        	ldw	x,#L05
 523  010b cd0000        	call	c_lcmp
 525  010e 251e          	jrult	L46
 526  0110               L66:
 527  0110 96            	ldw	x,sp
 528  0111 1c0003        	addw	x,#OFST+3
 529  0114 cd0000        	call	c_ltor
 531  0117 ae0008        	ldw	x,#L25
 532  011a cd0000        	call	c_lcmp
 534  011d 2512          	jrult	L26
 535  011f 96            	ldw	x,sp
 536  0120 1c0003        	addw	x,#OFST+3
 537  0123 cd0000        	call	c_ltor
 539  0126 ae000c        	ldw	x,#L45
 540  0129 cd0000        	call	c_lcmp
 542  012c 2403          	jruge	L26
 543  012e               L46:
 544  012e 4f            	clr	a
 545  012f 2010          	jra	L07
 546  0131               L26:
 547  0131 ae00b8        	ldw	x,#184
 548  0134 89            	pushw	x
 549  0135 ae0000        	ldw	x,#0
 550  0138 89            	pushw	x
 551  0139 ae0010        	ldw	x,#L73
 552  013c cd0000        	call	_assert_failed
 554  013f 5b04          	addw	sp,#4
 555  0141               L07:
 556                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 558  0141 7b07          	ld	a,(OFST+7,sp)
 559  0143 1e05          	ldw	x,(OFST+5,sp)
 560  0145 f7            	ld	(x),a
 561                     ; 186 }
 564  0146 81            	ret
 599                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 599                     ; 196 {
 600                     	switch	.text
 601  0147               _FLASH_ReadByte:
 603       00000000      OFST:	set	0
 606                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 608  0147 96            	ldw	x,sp
 609  0148 1c0003        	addw	x,#OFST+3
 610  014b cd0000        	call	c_ltor
 612  014e ae0000        	ldw	x,#L64
 613  0151 cd0000        	call	c_lcmp
 615  0154 250f          	jrult	L001
 616  0156 96            	ldw	x,sp
 617  0157 1c0003        	addw	x,#OFST+3
 618  015a cd0000        	call	c_ltor
 620  015d ae0004        	ldw	x,#L05
 621  0160 cd0000        	call	c_lcmp
 623  0163 251e          	jrult	L67
 624  0165               L001:
 625  0165 96            	ldw	x,sp
 626  0166 1c0003        	addw	x,#OFST+3
 627  0169 cd0000        	call	c_ltor
 629  016c ae0008        	ldw	x,#L25
 630  016f cd0000        	call	c_lcmp
 632  0172 2512          	jrult	L47
 633  0174 96            	ldw	x,sp
 634  0175 1c0003        	addw	x,#OFST+3
 635  0178 cd0000        	call	c_ltor
 637  017b ae000c        	ldw	x,#L45
 638  017e cd0000        	call	c_lcmp
 640  0181 2403          	jruge	L47
 641  0183               L67:
 642  0183 4f            	clr	a
 643  0184 2010          	jra	L201
 644  0186               L47:
 645  0186 ae00c6        	ldw	x,#198
 646  0189 89            	pushw	x
 647  018a ae0000        	ldw	x,#0
 648  018d 89            	pushw	x
 649  018e ae0010        	ldw	x,#L73
 650  0191 cd0000        	call	_assert_failed
 652  0194 5b04          	addw	sp,#4
 653  0196               L201:
 654                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 656  0196 1e05          	ldw	x,(OFST+5,sp)
 657  0198 f6            	ld	a,(x)
 660  0199 81            	ret
 704                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 704                     ; 213 {
 705                     	switch	.text
 706  019a               _FLASH_ProgramWord:
 708       00000000      OFST:	set	0
 711                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 713  019a 96            	ldw	x,sp
 714  019b 1c0003        	addw	x,#OFST+3
 715  019e cd0000        	call	c_ltor
 717  01a1 ae0000        	ldw	x,#L64
 718  01a4 cd0000        	call	c_lcmp
 720  01a7 250f          	jrult	L211
 721  01a9 96            	ldw	x,sp
 722  01aa 1c0003        	addw	x,#OFST+3
 723  01ad cd0000        	call	c_ltor
 725  01b0 ae0004        	ldw	x,#L05
 726  01b3 cd0000        	call	c_lcmp
 728  01b6 251e          	jrult	L011
 729  01b8               L211:
 730  01b8 96            	ldw	x,sp
 731  01b9 1c0003        	addw	x,#OFST+3
 732  01bc cd0000        	call	c_ltor
 734  01bf ae0008        	ldw	x,#L25
 735  01c2 cd0000        	call	c_lcmp
 737  01c5 2512          	jrult	L601
 738  01c7 96            	ldw	x,sp
 739  01c8 1c0003        	addw	x,#OFST+3
 740  01cb cd0000        	call	c_ltor
 742  01ce ae000c        	ldw	x,#L45
 743  01d1 cd0000        	call	c_lcmp
 745  01d4 2403          	jruge	L601
 746  01d6               L011:
 747  01d6 4f            	clr	a
 748  01d7 2010          	jra	L411
 749  01d9               L601:
 750  01d9 ae00d7        	ldw	x,#215
 751  01dc 89            	pushw	x
 752  01dd ae0000        	ldw	x,#0
 753  01e0 89            	pushw	x
 754  01e1 ae0010        	ldw	x,#L73
 755  01e4 cd0000        	call	_assert_failed
 757  01e7 5b04          	addw	sp,#4
 758  01e9               L411:
 759                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 761  01e9 721c505b      	bset	20571,#6
 762                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 764  01ed 721d505c      	bres	20572,#6
 765                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 767  01f1 7b07          	ld	a,(OFST+7,sp)
 768  01f3 1e05          	ldw	x,(OFST+5,sp)
 769  01f5 f7            	ld	(x),a
 770                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 772  01f6 7b08          	ld	a,(OFST+8,sp)
 773  01f8 1e05          	ldw	x,(OFST+5,sp)
 774  01fa e701          	ld	(1,x),a
 775                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 777  01fc 7b09          	ld	a,(OFST+9,sp)
 778  01fe 1e05          	ldw	x,(OFST+5,sp)
 779  0200 e702          	ld	(2,x),a
 780                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 782  0202 7b0a          	ld	a,(OFST+10,sp)
 783  0204 1e05          	ldw	x,(OFST+5,sp)
 784  0206 e703          	ld	(3,x),a
 785                     ; 229 }
 788  0208 81            	ret
 834                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 834                     ; 238 {
 835                     	switch	.text
 836  0209               _FLASH_ProgramOptionByte:
 838  0209 89            	pushw	x
 839       00000000      OFST:	set	0
 842                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 844  020a a34800        	cpw	x,#18432
 845  020d 2508          	jrult	L021
 846  020f a34880        	cpw	x,#18560
 847  0212 2403          	jruge	L021
 848  0214 4f            	clr	a
 849  0215 2010          	jra	L221
 850  0217               L021:
 851  0217 ae00f0        	ldw	x,#240
 852  021a 89            	pushw	x
 853  021b ae0000        	ldw	x,#0
 854  021e 89            	pushw	x
 855  021f ae0010        	ldw	x,#L73
 856  0222 cd0000        	call	_assert_failed
 858  0225 5b04          	addw	sp,#4
 859  0227               L221:
 860                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 862  0227 721e505b      	bset	20571,#7
 863                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 865  022b 721f505c      	bres	20572,#7
 866                     ; 247   if(Address == 0x4800)
 868  022f 1e01          	ldw	x,(OFST+1,sp)
 869  0231 a34800        	cpw	x,#18432
 870  0234 2607          	jrne	L742
 871                     ; 250     *((NEAR uint8_t*)Address) = Data;
 873  0236 7b05          	ld	a,(OFST+5,sp)
 874  0238 1e01          	ldw	x,(OFST+1,sp)
 875  023a f7            	ld	(x),a
 877  023b 200c          	jra	L152
 878  023d               L742:
 879                     ; 255     *((NEAR uint8_t*)Address) = Data;
 881  023d 7b05          	ld	a,(OFST+5,sp)
 882  023f 1e01          	ldw	x,(OFST+1,sp)
 883  0241 f7            	ld	(x),a
 884                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 886  0242 7b05          	ld	a,(OFST+5,sp)
 887  0244 43            	cpl	a
 888  0245 1e01          	ldw	x,(OFST+1,sp)
 889  0247 e701          	ld	(1,x),a
 890  0249               L152:
 891                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 893  0249 a6fd          	ld	a,#253
 894  024b cd03e1        	call	_FLASH_WaitForLastOperation
 896                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 898  024e 721f505b      	bres	20571,#7
 899                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 901  0252 721e505c      	bset	20572,#7
 902                     ; 263 }
 905  0256 85            	popw	x
 906  0257 81            	ret
 943                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 943                     ; 271 {
 944                     	switch	.text
 945  0258               _FLASH_EraseOptionByte:
 947  0258 89            	pushw	x
 948       00000000      OFST:	set	0
 951                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 953  0259 a34800        	cpw	x,#18432
 954  025c 2508          	jrult	L621
 955  025e a34880        	cpw	x,#18560
 956  0261 2403          	jruge	L621
 957  0263 4f            	clr	a
 958  0264 2010          	jra	L031
 959  0266               L621:
 960  0266 ae0111        	ldw	x,#273
 961  0269 89            	pushw	x
 962  026a ae0000        	ldw	x,#0
 963  026d 89            	pushw	x
 964  026e ae0010        	ldw	x,#L73
 965  0271 cd0000        	call	_assert_failed
 967  0274 5b04          	addw	sp,#4
 968  0276               L031:
 969                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 971  0276 721e505b      	bset	20571,#7
 972                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 974  027a 721f505c      	bres	20572,#7
 975                     ; 280   if(Address == 0x4800)
 977  027e 1e01          	ldw	x,(OFST+1,sp)
 978  0280 a34800        	cpw	x,#18432
 979  0283 2605          	jrne	L172
 980                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 982  0285 1e01          	ldw	x,(OFST+1,sp)
 983  0287 7f            	clr	(x)
 985  0288 2009          	jra	L372
 986  028a               L172:
 987                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 989  028a 1e01          	ldw	x,(OFST+1,sp)
 990  028c 7f            	clr	(x)
 991                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 993  028d 1e01          	ldw	x,(OFST+1,sp)
 994  028f a6ff          	ld	a,#255
 995  0291 e701          	ld	(1,x),a
 996  0293               L372:
 997                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 999  0293 a6fd          	ld	a,#253
1000  0295 cd03e1        	call	_FLASH_WaitForLastOperation
1002                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
1004  0298 721f505b      	bres	20571,#7
1005                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
1007  029c 721e505c      	bset	20572,#7
1008                     ; 296 }
1011  02a0 85            	popw	x
1012  02a1 81            	ret
1076                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1076                     ; 304 {
1077                     	switch	.text
1078  02a2               _FLASH_ReadOptionByte:
1080  02a2 89            	pushw	x
1081  02a3 5204          	subw	sp,#4
1082       00000004      OFST:	set	4
1085                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1087                     ; 306   uint16_t res_value = 0;
1089                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1091  02a5 a34800        	cpw	x,#18432
1092  02a8 2508          	jrult	L431
1093  02aa a34880        	cpw	x,#18560
1094  02ad 2403          	jruge	L431
1095  02af 4f            	clr	a
1096  02b0 2010          	jra	L631
1097  02b2               L431:
1098  02b2 ae0135        	ldw	x,#309
1099  02b5 89            	pushw	x
1100  02b6 ae0000        	ldw	x,#0
1101  02b9 89            	pushw	x
1102  02ba ae0010        	ldw	x,#L73
1103  02bd cd0000        	call	_assert_failed
1105  02c0 5b04          	addw	sp,#4
1106  02c2               L631:
1107                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1109  02c2 1e05          	ldw	x,(OFST+1,sp)
1110  02c4 f6            	ld	a,(x)
1111  02c5 6b02          	ld	(OFST-2,sp),a
1112                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1114  02c7 1e05          	ldw	x,(OFST+1,sp)
1115  02c9 e601          	ld	a,(1,x)
1116  02cb 6b01          	ld	(OFST-3,sp),a
1117                     ; 315   if(Address == 0x4800)	 
1119  02cd 1e05          	ldw	x,(OFST+1,sp)
1120  02cf a34800        	cpw	x,#18432
1121  02d2 2608          	jrne	L723
1122                     ; 317     res_value =	 value_optbyte;
1124  02d4 7b02          	ld	a,(OFST-2,sp)
1125  02d6 5f            	clrw	x
1126  02d7 97            	ld	xl,a
1127  02d8 1f03          	ldw	(OFST-1,sp),x
1129  02da 2023          	jra	L133
1130  02dc               L723:
1131                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1133  02dc 7b01          	ld	a,(OFST-3,sp)
1134  02de 43            	cpl	a
1135  02df 1102          	cp	a,(OFST-2,sp)
1136  02e1 2617          	jrne	L333
1137                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1139  02e3 7b02          	ld	a,(OFST-2,sp)
1140  02e5 5f            	clrw	x
1141  02e6 97            	ld	xl,a
1142  02e7 4f            	clr	a
1143  02e8 02            	rlwa	x,a
1144  02e9 1f03          	ldw	(OFST-1,sp),x
1145                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1147  02eb 7b01          	ld	a,(OFST-3,sp)
1148  02ed 5f            	clrw	x
1149  02ee 97            	ld	xl,a
1150  02ef 01            	rrwa	x,a
1151  02f0 1a04          	or	a,(OFST+0,sp)
1152  02f2 01            	rrwa	x,a
1153  02f3 1a03          	or	a,(OFST-1,sp)
1154  02f5 01            	rrwa	x,a
1155  02f6 1f03          	ldw	(OFST-1,sp),x
1157  02f8 2005          	jra	L133
1158  02fa               L333:
1159                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1161  02fa ae5555        	ldw	x,#21845
1162  02fd 1f03          	ldw	(OFST-1,sp),x
1163  02ff               L133:
1164                     ; 331   return(res_value);
1166  02ff 1e03          	ldw	x,(OFST-1,sp)
1169  0301 5b06          	addw	sp,#6
1170  0303 81            	ret
1245                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1245                     ; 341 {
1246                     	switch	.text
1247  0304               _FLASH_SetLowPowerMode:
1249  0304 88            	push	a
1250       00000000      OFST:	set	0
1253                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1255  0305 a104          	cp	a,#4
1256  0307 270b          	jreq	L441
1257  0309 a108          	cp	a,#8
1258  030b 2707          	jreq	L441
1259  030d 4d            	tnz	a
1260  030e 2704          	jreq	L441
1261  0310 a10c          	cp	a,#12
1262  0312 2603          	jrne	L241
1263  0314               L441:
1264  0314 4f            	clr	a
1265  0315 2010          	jra	L641
1266  0317               L241:
1267  0317 ae0157        	ldw	x,#343
1268  031a 89            	pushw	x
1269  031b ae0000        	ldw	x,#0
1270  031e 89            	pushw	x
1271  031f ae0010        	ldw	x,#L73
1272  0322 cd0000        	call	_assert_failed
1274  0325 5b04          	addw	sp,#4
1275  0327               L641:
1276                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1278  0327 c6505a        	ld	a,20570
1279  032a a4f3          	and	a,#243
1280  032c c7505a        	ld	20570,a
1281                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1283  032f c6505a        	ld	a,20570
1284  0332 1a01          	or	a,(OFST+1,sp)
1285  0334 c7505a        	ld	20570,a
1286                     ; 350 }
1289  0337 84            	pop	a
1290  0338 81            	ret
1349                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1349                     ; 359 {
1350                     	switch	.text
1351  0339               _FLASH_SetProgrammingTime:
1353  0339 88            	push	a
1354       00000000      OFST:	set	0
1357                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1359  033a 4d            	tnz	a
1360  033b 2704          	jreq	L451
1361  033d a101          	cp	a,#1
1362  033f 2603          	jrne	L251
1363  0341               L451:
1364  0341 4f            	clr	a
1365  0342 2010          	jra	L651
1366  0344               L251:
1367  0344 ae0169        	ldw	x,#361
1368  0347 89            	pushw	x
1369  0348 ae0000        	ldw	x,#0
1370  034b 89            	pushw	x
1371  034c ae0010        	ldw	x,#L73
1372  034f cd0000        	call	_assert_failed
1374  0352 5b04          	addw	sp,#4
1375  0354               L651:
1376                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1378  0354 7211505a      	bres	20570,#0
1379                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1381  0358 c6505a        	ld	a,20570
1382  035b 1a01          	or	a,(OFST+1,sp)
1383  035d c7505a        	ld	20570,a
1384                     ; 365 }
1387  0360 84            	pop	a
1388  0361 81            	ret
1413                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1413                     ; 373 {
1414                     	switch	.text
1415  0362               _FLASH_GetLowPowerMode:
1419                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1421  0362 c6505a        	ld	a,20570
1422  0365 a40c          	and	a,#12
1425  0367 81            	ret
1450                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1450                     ; 383 {
1451                     	switch	.text
1452  0368               _FLASH_GetProgrammingTime:
1456                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1458  0368 c6505a        	ld	a,20570
1459  036b a401          	and	a,#1
1462  036d 81            	ret
1496                     ; 392 uint32_t FLASH_GetBootSize(void)
1496                     ; 393 {
1497                     	switch	.text
1498  036e               _FLASH_GetBootSize:
1500  036e 5204          	subw	sp,#4
1501       00000004      OFST:	set	4
1504                     ; 394   uint32_t temp = 0;
1506                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1508  0370 c6505d        	ld	a,20573
1509  0373 5f            	clrw	x
1510  0374 97            	ld	xl,a
1511  0375 90ae0200      	ldw	y,#512
1512  0379 cd0000        	call	c_umul
1514  037c 96            	ldw	x,sp
1515  037d 1c0001        	addw	x,#OFST-3
1516  0380 cd0000        	call	c_rtol
1518                     ; 400   if(FLASH->FPR == 0xFF)
1520  0383 c6505d        	ld	a,20573
1521  0386 a1ff          	cp	a,#255
1522  0388 2611          	jrne	L554
1523                     ; 402     temp += 512;
1525  038a ae0200        	ldw	x,#512
1526  038d bf02          	ldw	c_lreg+2,x
1527  038f ae0000        	ldw	x,#0
1528  0392 bf00          	ldw	c_lreg,x
1529  0394 96            	ldw	x,sp
1530  0395 1c0001        	addw	x,#OFST-3
1531  0398 cd0000        	call	c_lgadd
1533  039b               L554:
1534                     ; 406   return(temp);
1536  039b 96            	ldw	x,sp
1537  039c 1c0001        	addw	x,#OFST-3
1538  039f cd0000        	call	c_ltor
1542  03a2 5b04          	addw	sp,#4
1543  03a4 81            	ret
1653                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1653                     ; 418 {
1654                     	switch	.text
1655  03a5               _FLASH_GetFlagStatus:
1657  03a5 88            	push	a
1658  03a6 88            	push	a
1659       00000001      OFST:	set	1
1662                     ; 419   FlagStatus status = RESET;
1664                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1666  03a7 a140          	cp	a,#64
1667  03a9 2710          	jreq	L271
1668  03ab a108          	cp	a,#8
1669  03ad 270c          	jreq	L271
1670  03af a104          	cp	a,#4
1671  03b1 2708          	jreq	L271
1672  03b3 a102          	cp	a,#2
1673  03b5 2704          	jreq	L271
1674  03b7 a101          	cp	a,#1
1675  03b9 2603          	jrne	L071
1676  03bb               L271:
1677  03bb 4f            	clr	a
1678  03bc 2010          	jra	L471
1679  03be               L071:
1680  03be ae01a5        	ldw	x,#421
1681  03c1 89            	pushw	x
1682  03c2 ae0000        	ldw	x,#0
1683  03c5 89            	pushw	x
1684  03c6 ae0010        	ldw	x,#L73
1685  03c9 cd0000        	call	_assert_failed
1687  03cc 5b04          	addw	sp,#4
1688  03ce               L471:
1689                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1691  03ce c6505f        	ld	a,20575
1692  03d1 1502          	bcp	a,(OFST+1,sp)
1693  03d3 2706          	jreq	L725
1694                     ; 426     status = SET; /* FLASH_FLAG is set */
1696  03d5 a601          	ld	a,#1
1697  03d7 6b01          	ld	(OFST+0,sp),a
1699  03d9 2002          	jra	L135
1700  03db               L725:
1701                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1703  03db 0f01          	clr	(OFST+0,sp)
1704  03dd               L135:
1705                     ; 434   return status;
1707  03dd 7b01          	ld	a,(OFST+0,sp)
1710  03df 85            	popw	x
1711  03e0 81            	ret
1804                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1804                     ; 550 {
1805                     	switch	.text
1806  03e1               _FLASH_WaitForLastOperation:
1808  03e1 5203          	subw	sp,#3
1809       00000003      OFST:	set	3
1812                     ; 551   uint8_t flagstatus = 0x00;
1814  03e3 0f03          	clr	(OFST+0,sp)
1815                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1817  03e5 aeffff        	ldw	x,#65535
1818  03e8 1f01          	ldw	(OFST-2,sp),x
1819                     ; 557     if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1821  03ea a1fd          	cp	a,#253
1822  03ec 2628          	jrne	L316
1824  03ee 200e          	jra	L106
1825  03f0               L775:
1826                     ; 561         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1826                     ; 562                                                         FLASH_IAPSR_WR_PG_DIS));
1828  03f0 c6505f        	ld	a,20575
1829  03f3 a405          	and	a,#5
1830  03f5 6b03          	ld	(OFST+0,sp),a
1831                     ; 563         timeout--;
1833  03f7 1e01          	ldw	x,(OFST-2,sp)
1834  03f9 1d0001        	subw	x,#1
1835  03fc 1f01          	ldw	(OFST-2,sp),x
1836  03fe               L106:
1837                     ; 559       while((flagstatus == 0x00) && (timeout != 0x00))
1839  03fe 0d03          	tnz	(OFST+0,sp)
1840  0400 261c          	jrne	L706
1842  0402 1e01          	ldw	x,(OFST-2,sp)
1843  0404 26ea          	jrne	L775
1844  0406 2016          	jra	L706
1845  0408               L116:
1846                     ; 570         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1846                     ; 571                                                         FLASH_IAPSR_WR_PG_DIS));
1848  0408 c6505f        	ld	a,20575
1849  040b a441          	and	a,#65
1850  040d 6b03          	ld	(OFST+0,sp),a
1851                     ; 572         timeout--;
1853  040f 1e01          	ldw	x,(OFST-2,sp)
1854  0411 1d0001        	subw	x,#1
1855  0414 1f01          	ldw	(OFST-2,sp),x
1856  0416               L316:
1857                     ; 568       while((flagstatus == 0x00) && (timeout != 0x00))
1859  0416 0d03          	tnz	(OFST+0,sp)
1860  0418 2604          	jrne	L706
1862  041a 1e01          	ldw	x,(OFST-2,sp)
1863  041c 26ea          	jrne	L116
1864  041e               L706:
1865                     ; 583   if(timeout == 0x00 )
1867  041e 1e01          	ldw	x,(OFST-2,sp)
1868  0420 2604          	jrne	L126
1869                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1871  0422 a602          	ld	a,#2
1872  0424 6b03          	ld	(OFST+0,sp),a
1873  0426               L126:
1874                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1876  0426 7b03          	ld	a,(OFST+0,sp)
1879  0428 5b03          	addw	sp,#3
1880  042a 81            	ret
1944                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1944                     ; 599 {
1945                     	switch	.text
1946  042b               _FLASH_EraseBlock:
1948  042b 89            	pushw	x
1949  042c 5206          	subw	sp,#6
1950       00000006      OFST:	set	6
1953                     ; 600   uint32_t startaddress = 0;
1955                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1957  042e 7b0b          	ld	a,(OFST+5,sp)
1958  0430 a1fd          	cp	a,#253
1959  0432 2706          	jreq	L402
1960  0434 7b0b          	ld	a,(OFST+5,sp)
1961  0436 a1f7          	cp	a,#247
1962  0438 2603          	jrne	L202
1963  043a               L402:
1964  043a 4f            	clr	a
1965  043b 2010          	jra	L602
1966  043d               L202:
1967  043d ae0262        	ldw	x,#610
1968  0440 89            	pushw	x
1969  0441 ae0000        	ldw	x,#0
1970  0444 89            	pushw	x
1971  0445 ae0010        	ldw	x,#L73
1972  0448 cd0000        	call	_assert_failed
1974  044b 5b04          	addw	sp,#4
1975  044d               L602:
1976                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1978  044d 7b0b          	ld	a,(OFST+5,sp)
1979  044f a1fd          	cp	a,#253
1980  0451 2626          	jrne	L556
1981                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1983  0453 1e07          	ldw	x,(OFST+1,sp)
1984  0455 a30100        	cpw	x,#256
1985  0458 2403          	jruge	L012
1986  045a 4f            	clr	a
1987  045b 2010          	jra	L212
1988  045d               L012:
1989  045d ae0265        	ldw	x,#613
1990  0460 89            	pushw	x
1991  0461 ae0000        	ldw	x,#0
1992  0464 89            	pushw	x
1993  0465 ae0010        	ldw	x,#L73
1994  0468 cd0000        	call	_assert_failed
1996  046b 5b04          	addw	sp,#4
1997  046d               L212:
1998                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2000  046d ae8000        	ldw	x,#32768
2001  0470 1f05          	ldw	(OFST-1,sp),x
2002  0472 ae0000        	ldw	x,#0
2003  0475 1f03          	ldw	(OFST-3,sp),x
2005  0477 2024          	jra	L756
2006  0479               L556:
2007                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2009  0479 1e07          	ldw	x,(OFST+1,sp)
2010  047b a30008        	cpw	x,#8
2011  047e 2403          	jruge	L412
2012  0480 4f            	clr	a
2013  0481 2010          	jra	L612
2014  0483               L412:
2015  0483 ae026a        	ldw	x,#618
2016  0486 89            	pushw	x
2017  0487 ae0000        	ldw	x,#0
2018  048a 89            	pushw	x
2019  048b ae0010        	ldw	x,#L73
2020  048e cd0000        	call	_assert_failed
2022  0491 5b04          	addw	sp,#4
2023  0493               L612:
2024                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2026  0493 ae4000        	ldw	x,#16384
2027  0496 1f05          	ldw	(OFST-1,sp),x
2028  0498 ae0000        	ldw	x,#0
2029  049b 1f03          	ldw	(OFST-3,sp),x
2030  049d               L756:
2031                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
2033  049d 1e07          	ldw	x,(OFST+1,sp)
2034  049f a680          	ld	a,#128
2035  04a1 cd0000        	call	c_cmulx
2037  04a4 96            	ldw	x,sp
2038  04a5 1c0003        	addw	x,#OFST-3
2039  04a8 cd0000        	call	c_ladd
2041  04ab be02          	ldw	x,c_lreg+2
2042  04ad 1f01          	ldw	(OFST-5,sp),x
2043                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
2045  04af 721a505b      	bset	20571,#5
2046                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
2048  04b3 721b505c      	bres	20572,#5
2049                     ; 636     *pwFlash = (uint32_t)0;
2051  04b7 1e01          	ldw	x,(OFST-5,sp)
2052  04b9 a600          	ld	a,#0
2053  04bb e703          	ld	(3,x),a
2054  04bd a600          	ld	a,#0
2055  04bf e702          	ld	(2,x),a
2056  04c1 a600          	ld	a,#0
2057  04c3 e701          	ld	(1,x),a
2058  04c5 a600          	ld	a,#0
2059  04c7 f7            	ld	(x),a
2060                     ; 644 }
2063  04c8 5b08          	addw	sp,#8
2064  04ca 81            	ret
2169                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2169                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2169                     ; 657 {
2170                     	switch	.text
2171  04cb               _FLASH_ProgramBlock:
2173  04cb 89            	pushw	x
2174  04cc 5206          	subw	sp,#6
2175       00000006      OFST:	set	6
2178                     ; 658   uint16_t Count = 0;
2180                     ; 659   uint32_t startaddress = 0;
2182                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2184  04ce 7b0b          	ld	a,(OFST+5,sp)
2185  04d0 a1fd          	cp	a,#253
2186  04d2 2706          	jreq	L422
2187  04d4 7b0b          	ld	a,(OFST+5,sp)
2188  04d6 a1f7          	cp	a,#247
2189  04d8 2603          	jrne	L222
2190  04da               L422:
2191  04da 4f            	clr	a
2192  04db 2010          	jra	L622
2193  04dd               L222:
2194  04dd ae0296        	ldw	x,#662
2195  04e0 89            	pushw	x
2196  04e1 ae0000        	ldw	x,#0
2197  04e4 89            	pushw	x
2198  04e5 ae0010        	ldw	x,#L73
2199  04e8 cd0000        	call	_assert_failed
2201  04eb 5b04          	addw	sp,#4
2202  04ed               L622:
2203                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2205  04ed 0d0c          	tnz	(OFST+6,sp)
2206  04ef 2706          	jreq	L232
2207  04f1 7b0c          	ld	a,(OFST+6,sp)
2208  04f3 a110          	cp	a,#16
2209  04f5 2603          	jrne	L032
2210  04f7               L232:
2211  04f7 4f            	clr	a
2212  04f8 2010          	jra	L432
2213  04fa               L032:
2214  04fa ae0297        	ldw	x,#663
2215  04fd 89            	pushw	x
2216  04fe ae0000        	ldw	x,#0
2217  0501 89            	pushw	x
2218  0502 ae0010        	ldw	x,#L73
2219  0505 cd0000        	call	_assert_failed
2221  0508 5b04          	addw	sp,#4
2222  050a               L432:
2223                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2225  050a 7b0b          	ld	a,(OFST+5,sp)
2226  050c a1fd          	cp	a,#253
2227  050e 2626          	jrne	L337
2228                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2230  0510 1e07          	ldw	x,(OFST+1,sp)
2231  0512 a30100        	cpw	x,#256
2232  0515 2403          	jruge	L632
2233  0517 4f            	clr	a
2234  0518 2010          	jra	L042
2235  051a               L632:
2236  051a ae029a        	ldw	x,#666
2237  051d 89            	pushw	x
2238  051e ae0000        	ldw	x,#0
2239  0521 89            	pushw	x
2240  0522 ae0010        	ldw	x,#L73
2241  0525 cd0000        	call	_assert_failed
2243  0528 5b04          	addw	sp,#4
2244  052a               L042:
2245                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2247  052a ae8000        	ldw	x,#32768
2248  052d 1f03          	ldw	(OFST-3,sp),x
2249  052f ae0000        	ldw	x,#0
2250  0532 1f01          	ldw	(OFST-5,sp),x
2252  0534 2024          	jra	L537
2253  0536               L337:
2254                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2256  0536 1e07          	ldw	x,(OFST+1,sp)
2257  0538 a30008        	cpw	x,#8
2258  053b 2403          	jruge	L242
2259  053d 4f            	clr	a
2260  053e 2010          	jra	L442
2261  0540               L242:
2262  0540 ae029f        	ldw	x,#671
2263  0543 89            	pushw	x
2264  0544 ae0000        	ldw	x,#0
2265  0547 89            	pushw	x
2266  0548 ae0010        	ldw	x,#L73
2267  054b cd0000        	call	_assert_failed
2269  054e 5b04          	addw	sp,#4
2270  0550               L442:
2271                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2273  0550 ae4000        	ldw	x,#16384
2274  0553 1f03          	ldw	(OFST-3,sp),x
2275  0555 ae0000        	ldw	x,#0
2276  0558 1f01          	ldw	(OFST-5,sp),x
2277  055a               L537:
2278                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2280  055a 1e07          	ldw	x,(OFST+1,sp)
2281  055c a680          	ld	a,#128
2282  055e cd0000        	call	c_cmulx
2284  0561 96            	ldw	x,sp
2285  0562 1c0001        	addw	x,#OFST-5
2286  0565 cd0000        	call	c_lgadd
2288                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2290  0568 0d0c          	tnz	(OFST+6,sp)
2291  056a 260a          	jrne	L737
2292                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2294  056c 7210505b      	bset	20571,#0
2295                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2297  0570 7211505c      	bres	20572,#0
2299  0574 2008          	jra	L147
2300  0576               L737:
2301                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2303  0576 7218505b      	bset	20571,#4
2304                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2306  057a 7219505c      	bres	20572,#4
2307  057e               L147:
2308                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2310  057e 5f            	clrw	x
2311  057f 1f05          	ldw	(OFST-1,sp),x
2312  0581               L347:
2313                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2315  0581 1e0d          	ldw	x,(OFST+7,sp)
2316  0583 72fb05        	addw	x,(OFST-1,sp)
2317  0586 f6            	ld	a,(x)
2318  0587 1e03          	ldw	x,(OFST-3,sp)
2319  0589 72fb05        	addw	x,(OFST-1,sp)
2320  058c f7            	ld	(x),a
2321                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2323  058d 1e05          	ldw	x,(OFST-1,sp)
2324  058f 1c0001        	addw	x,#1
2325  0592 1f05          	ldw	(OFST-1,sp),x
2328  0594 1e05          	ldw	x,(OFST-1,sp)
2329  0596 a30080        	cpw	x,#128
2330  0599 25e6          	jrult	L347
2331                     ; 697 }
2334  059b 5b08          	addw	sp,#8
2335  059d 81            	ret
2348                     	xdef	_FLASH_WaitForLastOperation
2349                     	xdef	_FLASH_ProgramBlock
2350                     	xdef	_FLASH_EraseBlock
2351                     	xdef	_FLASH_GetFlagStatus
2352                     	xdef	_FLASH_GetBootSize
2353                     	xdef	_FLASH_GetProgrammingTime
2354                     	xdef	_FLASH_GetLowPowerMode
2355                     	xdef	_FLASH_SetProgrammingTime
2356                     	xdef	_FLASH_SetLowPowerMode
2357                     	xdef	_FLASH_EraseOptionByte
2358                     	xdef	_FLASH_ProgramOptionByte
2359                     	xdef	_FLASH_ReadOptionByte
2360                     	xdef	_FLASH_ProgramWord
2361                     	xdef	_FLASH_ReadByte
2362                     	xdef	_FLASH_ProgramByte
2363                     	xdef	_FLASH_EraseByte
2364                     	xdef	_FLASH_ITConfig
2365                     	xdef	_FLASH_DeInit
2366                     	xdef	_FLASH_Lock
2367                     	xdef	_FLASH_Unlock
2368                     	xref	_assert_failed
2369                     	switch	.const
2370  0010               L73:
2371  0010 6c6962726172  	dc.b	"library\stm8s_flas"
2372  0022 682e6300      	dc.b	"h.c",0
2373                     	xref.b	c_lreg
2374                     	xref.b	c_x
2375                     	xref.b	c_y
2395                     	xref	c_ladd
2396                     	xref	c_cmulx
2397                     	xref	c_lgadd
2398                     	xref	c_rtol
2399                     	xref	c_umul
2400                     	xref	c_lcmp
2401                     	xref	c_ltor
2402                     	end
