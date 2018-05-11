/**
* @file     utask.c
* @brief    user tasks and kernel config source
* @author   Provot & Durand
* @date     
*/

/* INCLUDES DEPENDENCIES ***************/
#include <utask.h>
#include <string.h>
#include "adc.h"
#include "queue.h"

char help_string[] = "read      return last converted value\r\ndump      return hundred last converted value\r\nstream    return last converted value and update display\r\n          press enter to quit stream mode\r\nreset     software processor reset\r\nbaudrate  update serial communication baudrate of processor\r\nhelp      return supported commands\r\n";
char cmd_help[] = "help";
char cmd_read[] = "read";
char cmd_dump[] = "dump";
char cmd_stream[] = "stream";
char cmd_reset[] = "reset";
char cmd_baudrate[] = "baudrate";
char cmd_return[] = "\0";
char prompt_baudrate[]="Enter new baudrate\r\n";
char updated_baudrate[]="Baudrate updated";
int print_stream;


struct AMessage
 {
    char ucMessageID;
    double value;
 } xMessage;
xQueueHandle xQueue;

/**
* @fn void kernelConfig(void)
* @brief kernel configuration 
*/
void kernelConfig(void){
    xTaskCreate(task1, "Task 1", configMINIMAL_STACK_SIZE, NULL,  1, NULL);
    xTaskCreate(task2, "Task 2", configMINIMAL_STACK_SIZE, NULL,  2, NULL);
    xTaskCreate(task3, "Task 3", configMINIMAL_STACK_SIZE, NULL,  1, NULL);
    xTaskCreate(task4, "Task 4", configMINIMAL_STACK_SIZE, NULL,  1, NULL);
 }

/**
* @fn  void task1(void *pvParameters)
* @brief Read from queue and make led blink accordingly 
*/
void task1(void *pvParameters){
    portTickType pxPreviousWakeTime = xTaskGetTickCount();
    char buf[20];

    struct AMessage *pxRxedMessage;
    if( xQueue != 0 )
    {
        while(1){
            if( xQueueReceive( xQueue, &( pxRxedMessage ), ( portTickType  ) portMAX_DELAY ) )
            {
               if (pxRxedMessage->value < 38.0)
                {
                    if(LATBbits.LATB10 == 1)
                        LATBbits.LATB10 = 0;
                    else
                        LATBbits.LATB10 = 1;
                }
                else{
                    LATBbits.LATB10 = 1;
                }
                vTaskDelayUntil(&pxPreviousWakeTime,500);
            }
            else{
                uartPutS("\r\ntask2, timeout\r\n");
            }
        }
    }
}

/**
* @fn  void task2(void *pvParameters)
* @brief Read adc value and store tempeture in queue
*/
void task2(void *pvParameters){
    portTickType pxPreviousWakeTime = xTaskGetTickCount();
    struct AMessage *pxMessage = & xMessage;
    xQueue = xQueueCreate( 100, sizeof( struct AMessage * ) );
    while(1){
        pxMessage->value = ((adcRead() * 3300.0 / 1024.0) - 500.0)/10.0;
        xQueueSend( xQueue, ( void * ) &pxMessage, ( portTickType  ) 0 );
        vTaskDelayUntil(&pxPreviousWakeTime,20);
    }
}

/**
* @fn  void task3(void *pvParameters)
* @brief react to user commands (read,dump,stream,reset,baudrate or help)
*/
void task3(void *pvParameters){
    print_stream = 0;
    portTickType pxPreviousWakeTime = xTaskGetTickCount();
    char buf[50];
    char * tmpbuf = buf;
    int k,baudrate;
    struct AMessage *pxRxedMessage;
    while(1){
        uartGetS(tmpbuf);
        if(strcmp(buf,cmd_help) == 0){
            uartPutS(help_string);
        } else if((strcmp(buf,cmd_read) == 0)&&( xQueue != 0 )){
            if( xQueueReceive( xQueue, &( pxRxedMessage ), ( portTickType  ) portMAX_DELAY ) )
            {
                sprintf(buf,"%.1f",pxRxedMessage->value);
                uartPutS(buf);
                uartPutS(" C\r\n");
            }
        } else if((strcmp(buf,cmd_dump) == 0)&&( xQueue != 0 )){
            for (k=0;k<100;k++){
                if( xQueueReceive( xQueue, &( pxRxedMessage ), ( portTickType  ) portMAX_DELAY ) )
                {   
                    sprintf(buf,"%.f C   %d",pxRxedMessage->value,k+1);
                    uartPutS(buf);
                    uartPutS(" \r\n");
                }
            }
        } else if(strcmp(buf,cmd_stream) == 0){
            print_stream = 1;
        } else if(strcmp(buf,cmd_return) == 0){
            if(print_stream == 1){
                print_stream = 0;
            }
        } else if(strcmp(buf,cmd_reset) == 0) {
            SoftReset();
        }
        else if(strcmp(buf,cmd_baudrate) == 0) {
            uartPutS(prompt_baudrate);
            uartGetS(tmpbuf);
            uartPutS("\r\n");
            baudrate=atoi(buf);
            if ((baudrate==110)||(baudrate==300)||(baudrate==600)||(baudrate==1200)||(baudrate==2400)||(baudrate==4800)||(baudrate==9600)||(baudrate==14400)||(baudrate==19200)||(baudrate==38400)||(baudrate==57600)||(baudrate==115200)||(baudrate==230400)||(baudrate==460800)||(baudrate==921600)){
                uartPutS(updated_baudrate);
                uartPutS("\r\n");
                UARTSetDataRate(UART1, SYS_FREQ/PB_DIV  ,baudrate );
            }else{
                uartPutS("INVALID BAUDRATE, please return a valid one\r\n");
            }
        }
        vTaskDelayUntil(&pxPreviousWakeTime,1000);
    }
}

/**
* @fn  void task4(void *pvParameters)
* @brief Read tempeture from queue and print it every 20 ms
*/
void task4(void *pvParameters){
    portTickType pxPreviousWakeTime = xTaskGetTickCount();
    char buf[20];
    struct AMessage *pxRxedMessage;
    if( xQueue != 0 )
    {
        while(1){
            if(print_stream == 1){
                if( xQueueReceive( xQueue, &( pxRxedMessage ), ( portTickType  ) portMAX_DELAY ) )
                {
                   sprintf(buf,"%.1f",pxRxedMessage->value);
                   uartPutS(buf);
                   uartPutS(" C        \r");
                   vTaskDelayUntil(&pxPreviousWakeTime,20);
                }
                else{
                    uartPutS("\r\ntask4, timeout\r\n");
                }
            }
        }
    }
}

void LedConfig(void) {
    AD1PCFG=AD1PCFG|0x0400;
    TRISB=TRISB& 0xfffffbff;
    LATB=PORTB|0X00000400;
}

