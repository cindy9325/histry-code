#include <string.h>
#include <math.h>
#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__

#define MAXTHREADS 4  
#define CNAME(s) _ ## s
#define name(s) s ## $


#define SemaphoreCreate(s, n) \
        { \
          s = n; \
        } 

#define SemaphoreWait(s) \
  { \
      SemaphoreWaitBody(s, __COUNTER__); \
  } 

#define SemaphoreWaitBody(S,c) \
        { \
          __asm \
  name(c): MOV _ACC, CNAME(S) \
           JZ name(c) \
           JB ACC.7, name(c) \
           DEC  CNAME(S) \
          __endasm; \
        }

#define SemaphoreSignal(s) \
        { \
          __asm \
            INC CNAME(s) \
          __endasm; \
        } 

typedef char ThreadID;
typedef void (*FunctionPtr)(void);

ThreadID ThreadCreate(FunctionPtr);
void ThreadExit(void);
void myTimer0Handler(void);

#endif 
