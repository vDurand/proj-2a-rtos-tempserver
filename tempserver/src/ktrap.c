/**
* @file     ktrap.c
* @brief    kernel traps capture like stack overflow, malloc failed and kernel
* or user assertions
* @author 
* @date 
*/

/* INCLUDES DEPENDENCIES ***************/
#include <utask.h>

///**
//* @fn void vApplicationStackOverflowHook( xTaskHandle xTask, signed char *pcTaskName );
//* @brief kernel hook here if stack overflow detection
//*/
void vApplicationStackOverflowHook( xTaskHandle xTask, signed char *pcTaskName ){
    uartPutS("error stack overflow by ");
    uartPutS(pcTaskName);
    uartPutS("    \r\n");

    // it's a trap
    while(1);
    //SoftReset();  // implement software mcu reset
}

/**
* @fn vApplicationMallocFailedHook()
* @brief kernel hook here if malloc allocation failed detection
*/
void vApplicationMallocFailedHook( void ){
    uartPutS("error malloc failed    \r\n");

    // it's a trap
    while(1);
    //SoftReset();  // implement software mcu reset
}

/**
* @fn void vAssertCalled( const char *pcFileName, unsigned long ulLine )
* @brief kernel hook here if user or kernel assertion detection
*/
void vAssertCalled( const char *pcFileName, unsigned long ulLine ){
    uartPutS("error application or kernel assertion\r\n");

    // it's a trap
    while(1);
    //SoftReset();  // implement software mcu reset
}