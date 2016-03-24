/*C6713dskinit.h Include file for C6713DSK.C */

#include "dsk6713.h"
#include "dsk6713_aic23.h"

#define LEFT  1                  //data structure for union of 32-bit data
#define RIGHT 0                  //into two 16-bit data


extern far void vectors();         //external function

static Uint32 CODECEventId, poll;

// This is needed to modify the BSL's data channel McBSP configuration
// See the changes below

extern DSK6713_AIC23_CodecHandle hAIC23_handle;

void c6713_dsk_init();
void comm_poll();
void comm_intr();
void output_sample(int);
void output_left_sample(short);
void output_right_sample(short);
Uint32 input_sample();
short input_left_sample();
short input_right_sample();
