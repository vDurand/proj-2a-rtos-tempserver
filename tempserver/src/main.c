/**
* @file     main.c
* @brief    practical work to understand the preemptive mode and some kernel tools
* @li 		XC32 C toolchain(tested with xc32 1.21)
* @li 		MPLABX IDE(tested with mplabx 1.85)
* @li       FreeRTOS vs 7.5.2 (2013-08)
* @author   
* @date     
*/

/* CONFIGURATION BITS ***************/
// cpu, low and high speed peripherals clock 80MHz (matrix and peripheral bus)
#pragma config FWDTEN = OFF, CP = OFF, POSCMOD = XT, FNOSC = PRIPLL
#pragma config FPLLIDIV = DIV_2, FPLLMUL = MUL_20, FPLLODIV = DIV_1, FPBDIV = DIV_1

/* INCLUDES DEPENDENCIES ***************/
#include <uart.h>

/**
* @fn void main (void)
* @brief main entry point
*/
int main(void){
    // cache cpu configuration
    SYSTEMConfig(SYS_FREQ, SYS_CFG_WAIT_STATES | SYS_CFG_PCACHE);

    // uart module configuration
    uartConfig();
    adcConfig();
    LedConfig();

    // interruption configuration
    interruptConfig();

    // kernel configuration
    kernelConfig();

    // welcome message
    uartPutC('\r');
    uartPutS("\nHello World Durand Provot\r\n");
    // start kernel scheduling
    vTaskStartScheduler();
    // it's a trap
    while(1);
}
