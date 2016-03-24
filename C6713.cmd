/****************************************************************************/
/*  C6713.cmd                                                               */
/*  Copyright (c) 2010 Texas Instruments Incorporated                       */
/*  Author: Rafael de Souza                                                 */
/*                                                                          */
/*    Description: This file is a sample linker command file that can be    */
/*                 used for linking programs built with the C compiler and  */
/*                 running the resulting .out file on an TMS320C6713        */
/*                 device.  Use it as a guideline.  You will want to        */
/*                 change the memory layout to match your specific C6xxx    */
/*                 target system.  You may want to change the allocation    */
/*                 scheme according to the size of your program.            */
/*                                                                          */
/****************************************************************************/

MEMORY
{
  IVECS:    org=0h,  		len=0x220
  IRAM:		org=0x00000220,	len=0x0002FDE0 /*internal memory*/
  SDRAM:	org=0x80000000, len=0x00100000 /*external memory*/

}

SECTIONS
{
  .EXT_RAM :> SDRAM
  .vectors :> IVECS	/*in vector file*/
  .text    :> IRAM	/*Created by C Compiler*/
  .bss     :> IRAM
  .cinit   :> IRAM
  .stack   :> IRAM
  .sysmem  :> IRAM
  .const   :> IRAM
  .switch  :> IRAM
  .far     :> IRAM
  .cio     :> IRAM
  .csldata :> IRAM

}
