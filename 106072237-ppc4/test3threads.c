#include <8051.h>
#include "preemptive.h"

__data __at (0x38) char i;
__data __at (0x39) char j;
__data __at (0x3A) char mutex;
__data __at (0x3B) char full;
__data __at (0x3C) char empty;
__data __at (0x3D) char buffer[0x03];
__data __at (0x20) char front = 0x00;
__data __at (0x21) char back = 0x00;
__data __at (0x23) char counter;
__data __at (0x24) char flag_first;

void Producer1(void) {
        while (0x01) {
                SemaphoreWait(empty);
                SemaphoreWait(mutex);
                if(counter < 0x03){
                  buffer[back] = i;
                  counter += 0x01;
                  if(back < 0x02)
                    back += 0x01;
                  else
                    back = 0x00; 
                 if(i < 'Z')
                    i += 0x01;
                  else
                    i = 'A';
                }
                SemaphoreSignal(mutex);
                SemaphoreSignal(full);
        }
}

void Producer2(void) {
        while (0x01) {
                SemaphoreWait(empty);
                SemaphoreWait(mutex);
                if(counter < 0x06 && counter > 0x02){
                  buffer[back] = j;
                  counter += 0x01;
                  if(back < 0x02)
                    back += 0x01;
                  else
                    back = 0x00;
                  if(j < '9')
                    j += 0x01;
                  else
                    j = '0';
                  if(counter == 0x06)
                    counter = 0x00;
                }
                SemaphoreSignal(mutex);
                SemaphoreSignal(full);
        }
}

void Consumer(void) {
        TMOD |= 0x20; 
        TH1 = 0xFA; 
        SCON = 0x50;
        TR1 = 0x01;
        while (0x01) {
                SemaphoreWait(full);
                SemaphoreWait(mutex);
                if(flag_first > 0x02){
                SBUF = buffer[front];
                if(front < 0x02)
                  front += 0x01;
                else
                  front = 0x00;
                while(TI == 0x00){}
                TI = 0x00;
                }
                else
                  flag_first += 0x01;
                SemaphoreSignal(mutex);
                SemaphoreSignal(empty);
        }
}

void main(void) {
          SemaphoreCreate(mutex, 0x01);
          SemaphoreCreate(empty, 0x03);
          SemaphoreCreate(full, 0x00);
          i = 'A';
          j = '0';
          counter = 0x00;
          flag_first = 0x00;
          ThreadCreate(Producer1);
          ThreadCreate(Producer2);
          Consumer();
}

void _sdcc_gsinit_startup(void) {
        __asm
                ljmp  _Bootstrap
        __endasm;
}

void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}

void timer0_ISR(void) __interrupt(0x01) {
        __asm
                ljmp _myTimer0Handler
        __endasm;
}
