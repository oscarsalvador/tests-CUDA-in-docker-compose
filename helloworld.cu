#include <stdio.h>
//#include "cuPrintf.cu"
__global__ void cuda_hello(){
    printf("Hello world from GPU\n");
}

int main(){
    cuda_hello<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}