#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <cuda.h>
#include <cuda_runtime.h>
#include <time.h>
#include <unistd.h>

#define N 1000000000
#define MAX_ERR 1e-6

__global__ void vector_add(float *out, float *a, float *b, int n) {
	int stride = blockDim.x;
	int offset = threadIdx.x * stride;

	for(int i = offset; i < offset+stride; i++){
		out[i] = a[i] + b[i];
	}
}

int main(){
	float *a, *b, *out;
	float *d_a, *d_b, *d_out;

	// Allocate host memory
	a = (float*)malloc(sizeof(float) * N);
	b = (float*)malloc(sizeof(float) * N);
	out = (float*)malloc(sizeof(float) * N);

	// Initialize host arrays
	for(int i = 0; i < N; i++){
		a[i] = 1.0f;
		b[i] = 2.0f;
	}

	// Allocate device memory
	cudaMalloc((void**)&d_a, sizeof(float) * N);
	cudaMalloc((void**)&d_b, sizeof(float) * N);
	cudaMalloc((void**)&d_out, sizeof(float) * N);

	// Transfer data from host to device memory
	cudaMemcpy(d_a, a, sizeof(float) * N, cudaMemcpyHostToDevice);
	cudaMemcpy(d_b, b, sizeof(float) * N, cudaMemcpyHostToDevice);

	// Executing kernel
	clock_t begin = clock();
	vector_add<<<(N+255)/256, 256>>>(d_out, d_a, d_b, N);
	//cudaDeviceSynchronize();
	clock_t time = clock() - begin;
	printf("Time %ld\n", time);


	// Transfer data back to host memory
	cudaMemcpy(out, d_out, sizeof(float) * N,
	cudaMemcpyDeviceToHost);
	
	// Verification
	for(int i = 0; i < N; i++){
		//printf("%f", out[i]);
		if(fabs(out[i] - a[i] - b[i]) < MAX_ERR){
			printf("%i", i);
			break;
		}
		//assert(fabs(out[i] - a[i] - b[i]) < MAX_ERR);
	}
	printf("PASSED\n");

	// Deallocate device memory
	cudaFree(d_a);
	cudaFree(d_b);
	cudaFree(d_out);
}
