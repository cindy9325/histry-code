#include <8051.h>
#include "preemptive.h"

__data __at (0x30) char MAX[0x04];
__data __at (0x34) char THREADID;
__data __at (0x35) char THREADVALID = 0x00; 
__data __at (0x36) char Otid;
__data __at (0x37) char tmp_zero = 0x00;
__data __at (0x22) char change_produser;

#define SAVESTATE  \
        {  \
          __asm  \
          PUSH ACC  \
          PUSH B  \
          PUSH DPL  \
          PUSH DPH  \
          PUSH PSW  \
         __endasm;  \
         MAX[THREADID] = 0x47 + THREADID * 0x10;  \
        }

#define RESTORESTATE \
         {  \
          SP = 0x47 + THREADID * 0x10;  \
          __asm \
           POP PSW \
           POP DPH \
           POP DPL \
           POP B \
           POP ACC \
          __endasm; \
          }  

extern void main(void);

void Bootstrap(void) {
      THREADVALID = 0x00;
      SP = 0x07;

      TMOD = 0x00; // timer 0 mode 0
      IE = 0x82; // enable timer 0 interrupt,
      TR0 = 0x01; // start running timer0

      THREADID = ThreadCreate(main);
      RESTORESTATE;
      return;
}

ThreadID ThreadCreate(FunctionPtr fp) {
      char SPtmp = SP;

      if (THREADVALID < 0x03){
        Otid = THREADVALID;
        THREADVALID += 0x01;
      }
      else
        return -0x01;
      SP = 0x40 + 0x10 * Otid;
      PSW = 0x08 * Otid;
      __asm
        PUSH DPL
        PUSH DPH
        PUSH _tmp_zero
        PUSH _tmp_zero
        PUSH _tmp_zero
        PUSH _tmp_zero
        PUSH PSW
      __endasm;
      MAX[Otid] = SP;
      SP = SPtmp;
      return Otid;
}

void myTimer0Handler(void) {
       EA = 0x00;
       SAVESTATE;
       if(THREADID != 0x00){
        change_produser = THREADID;
        THREADID = 0x00;
       }
       else if (change_produser == 0x01)
        THREADID = 0x02;
       else
        THREADID = 0x01;
       RESTORESTATE;
       EA = 0x01;
       __asm
        reti
       __endasm;
}

void ThreadExit(void) {
      EA = 0x00;
      if(THREADID != Otid)
        THREADID += 0x01;
      else
        THREADID = 0x00;
      THREADVALID -= 0x01;
      RESTORESTATE;
      EA = 0x01;
}
