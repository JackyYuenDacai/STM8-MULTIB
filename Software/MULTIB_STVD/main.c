// MAIN.C file

#include "stm8s.h"
void Startup_CLOCK_Config(){
	 CLK_DeInit();
	 CLK_HSECmd(ENABLE);
	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV4);
	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV4);
}
void CLOCK_Config()  
{  
   CLK_DeInit();
	 CLK_HSECmd(ENABLE);
	 CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV1);
	 CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);
}  
void GPIO_init(){
	
	GPIO_DeInit(GPIOD);
	//LED
	GPIO_Init(GPIOD,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_Init(GPIOD,GPIO_PIN_4,GPIO_MODE_OUT_OD_HIZ_FAST);
	GPIO_Init(GPIOD,GPIO_PIN_5,GPIO_MODE_OUT_OD_HIZ_FAST);

	GPIO_Init(GPIOE,GPIO_PIN_5,GPIO_MODE_OUT_OD_HIZ_FAST); //USB SWITCH CONTROL
	GPIO_Init(GPIOC,GPIO_PIN_1,GPIO_MODE_OUT_OD_HIZ_FAST); //USE SWITCH ENABLE
	
	
	GPIO_Init(GPIOB,GPIO_PIN_3,GPIO_MODE_OUT_OD_HIZ_FAST); //USB HUB SEL0
	GPIO_Init(GPIOB,GPIO_PIN_4,GPIO_MODE_OUT_OD_HIZ_FAST); //USB HUB SEL1
	
	//BUTTON
	GPIO_Init(GPIOD,GPIO_PIN_6,GPIO_MODE_IN_FL_NO_IT);
	GPIO_Init(GPIOD,GPIO_PIN_7,GPIO_MODE_IN_FL_NO_IT);
	
	EXTI_DeInit();
	
	//EXTI_SetTLISensitivity(EXTI_TLISENSITIVITY_FALL_ONLY);//
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOD,EXTI_SENSITIVITY_FALL_LOW);
	
}

int main()
{
	unsigned char usbSwitch = 0;
	sim();
	GPIO_init();
	CLOCK_Config();
	GPIO_WriteLow(GPIOD,GPIO_PIN_3);
	
	GPIO_WriteLow(GPIOB,GPIO_PIN_3);
	GPIO_WriteLow(GPIOB,GPIO_PIN_4);
	rim();
	while (1){
		if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_6) == 0){
			GPIO_WriteLow(GPIOD,GPIO_PIN_4); 
			usbSwitch |= 2;
		}else{
			GPIO_WriteHigh(GPIOD,GPIO_PIN_5); 
			usbSwitch &= ~2;
		}
		if(GPIO_ReadInputPin(GPIOD,GPIO_PIN_7) == 0){
			GPIO_WriteLow(GPIOD,GPIO_PIN_5); 
			usbSwitch |= 1;
		}else{
			GPIO_WriteHigh(GPIOD,GPIO_PIN_4);
			usbSwitch &= ~1;
		}
		switch(usbSwitch){
			case 0:
				GPIO_WriteHigh(GPIOC,GPIO_PIN_1); 
				break;
			case 1:
				GPIO_WriteLow(GPIOC,GPIO_PIN_1); 
				GPIO_WriteLow(GPIOE,GPIO_PIN_5); 
				break;
			case 2:
				GPIO_WriteLow(GPIOC,GPIO_PIN_1); 
				GPIO_WriteHigh(GPIOE,GPIO_PIN_5); 
				break;
			default:
				GPIO_WriteHigh(GPIOC,GPIO_PIN_1);
				break;
			}
		;;;
	}
	return 0;
}
#ifdef USE_FULL_ASSERT

/*
  * @brief  Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
  * @param file: pointer to the source file name
  * @param line: assert_param error line source number
  * @retval : None
  */
void assert_failed(u8* file, unsigned long int line)
{ 
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */

  /* Infinite loop */
  while (1)
  {
  }
}
#endif