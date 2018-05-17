/*** Include file ***/
#include "xparameters.h"
#include "xstatus.h"
#include "xil_exception.h"
#include "xil_assert.h"
#include "xaxivdma.h"
#include "xaxivdma_i.h"
#include "xgpio.h"

#define MEMORY_BASE XPAR_PS7_DDR_0_S_AXI_BASEADDR
#define mask_R 00000000000000000000000000011111
#define mask_G 00000000000000000000000000111111
#define mask_B 00000000000000000000000000011111

/*** Global Variables ***/
unsigned int srcBuffer = (MEMORY_BASE  + 0x1000000);
unsigned int srcBuffer_hdr = (MEMORY_BASE + 0x2000000);
XAxiVdma InstancePtr;
XGpio sw;

int run_triple_frame_buffer(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr);
int vdma_read(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr);
int vdma_write(XAxiVdma* InstancePtr, int DeviceId, int hsize,
		int vsize, int buf_base_addr, int number_frame_count,
		int enable_frm_cnt_intr);

//int hdr();
unsigned int rgb2hsv(unsigned int r, unsigned int g, unsigned int b);//, unsigned int vr);

int main(){
	int Status, mux;
	XGpio_Initialize(&sw, 0);
	XGpio_SetDataDirection(&sw, 1, 0xFFFFFFFF);
	//unsigned int V;
	unsigned int frame;
	unsigned int count=0,x=0,y=0,locx=0,locy=0;
	unsigned int r, g, b;
	xil_printf("\n--- Entering main() --- \r\n");

	while(1){
		mux = (XGpio_DiscreteRead(&sw,1))%2;

		if(mux==0){
			Status = run_triple_frame_buffer(&InstancePtr, 0, 640, 480, srcBuffer, 30, 0);
			if (Status != XST_SUCCESS) {
				xil_printf("Transfer of frames failed with error = %d\r\n",Status);
				return XST_FAILURE;}
		}
		else{
				XAxiVdma_DmaStop(&InstancePtr, XAXIVDMA_WRITE);
				XAxiVdma_DmaStop(&InstancePtr, XAXIVDMA_READ);
				//vdma_read(&InstancePtr, 0, 640, 480, srcBuffer, 30, 0);
				for(int i=0; i<640; i++){
					for(int j=0; j<480; j++){
						frame=Xil_In32(srcBuffer +i + j);


						b = (frame & mask_B);
						//g = ((frame >> 5) & mask_G);
						//r = ((frame >> 11) & mask_R);
						//V = rgb2hsv(r, g, b);



						/*while(frame!=0){
													frame<<1;
													z++;
												}*/


						//Xil_Out32(srcBuffer_hdr + 640*i + 4*j, 0xFFFFFFFF);}

				/*Status = hdr();
				if (Status != XST_SUCCESS) {
					xil_printf("HDR failed with error = %d\r\n",Status);
					return XST_FAILURE;}*/
				run_triple_frame_buffer(&InstancePtr, 0, 640, 480, srcBuffer, 30, 0);
				//vdma_write(&InstancePtr, 0, 640, 480, srcBuffer_hdr, 30, 0);
				}
					int j;
					while (b>=20 && b<=200){
								count++;
								x=x+i+1;
								y=y+j+1;
					}
				locx=(x/count);
				locy=(y/count);
				xil_printf("\%d &%d&\n%d \n%d \r\n",locx,locy,count,b);
		}
	}
}
}
