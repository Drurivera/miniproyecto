//*****************************************************************************
//*****************************************************************************
//   main.c
//   Created on: 11/03/2022
//   Author: Mariandree Rivera
//   Carne: 18178
//*****************************************************************************
//*****************************************************************************

//*****************************************************************************
// Librerias
//*****************************************************************************

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <stdbool.h>

#include "sensorlib/i2cm_drv.h"
#include "sensorlib/hw_mpu6050.h"
#include "sensorlib/mpu6050.h"

#include "inc/hw_gpio.h"
#include "inc/hw_types.h"
#include "inc/hw_memmap.h"
#include "inc/hw_ints.h"
#include "inc/hw_i2c.h"
#include "inc/hw_sysctl.h"

#include "driverlib/uart.h"
#include "driverlib/debug.h"
#include "driverlib/sysctl.h"
#include "driverlib/pin_map.h"
#include "driverlib/gpio.h"
#include "driverlib/pwm.h"
#include "driverlib/timer.h"
#include "driverlib/adc.h"
#include "driverlib/rom.h"
#include "driverlib/rom_map.h"
#include "driverlib/interrupt.h"
#include "driverlib/i2c.h"

#include "utils/uartstdio.h"
#include "MPU6050.h"
#include "PID.h"
#include <math.h>
float x,y,z;

//*****************************************************************************
// Prototipo de funciones
//*****************************************************************************


void Timer0Handler(void)
{
    TimerIntClear(TIMER0_BASE, TIMER_TIMA_TIMEOUT);

}
void UART0IntHandler(void)
{
    UARTIntClear(UART0_BASE,UARTIntStatus(UART0_BASE, true)); //se limpia la bandera de la interrupcion

}
int main(void)
{
    SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_PLL | SYSCTL_OSC_INT | SYSCTL_XTAL_16MHZ);
    InitI2C0();
    MPU6050INIT();
    PID_SETUP ();
    while(1)
    {
        MPU6050READDATA(&x,&y,&z);
        Set_Vary(y);
    }
}
