#define _GNU_SOURCE 1 // for RTLD_NEXT
#include <dlfcn.h>
#include <stdlib.h>
#include <stdio.h>
extern int FMOD_System_SetOutput(void*, unsigned int);



int FMOD_System_Create(void** sys) 
{  static int(*real_create)(void**) = NULL; 
 


 int ret;  
 

 if(!real_create) 
 
{    real_create = (int(*)(void**))dlsym(RTLD_NEXT, "FMOD_System_Create");  
   if(!real_create)
    {      // this should never happen      


    abort();   
     } 
      } 
       ret = real_create(sys); 
        if(ret == 0 && *sys != NULL)

         {    // FMOD_OUTPUTTYPE_OSS = 10   


          fprintf(stderr, "Forcing FMOD output to Open Sound System\n");    

          FMOD_System_SetOutput(*sys, 10); 

           }  

           return ret;

       }