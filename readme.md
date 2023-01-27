
| System           | Time(ms) |
| ---------------- | -------- |
| Host             |          |
| Host with CUDA   |          |
| Docker           |          |
| Docker with CUDA |          |


<!-- docker run -u $(id -u):$(id -g) -it --rm --gpus all tensorflow/tensorflow:latest-gpu bash -->

# Instalation and tests

<pre><span style="color:#55FF55"><b>[user@manjaro</b></span><span style="color:#FFFFFF"><b> ~</b></span><span style="color:#55FF55"><b>]$</b></span> docker run -u $(id -u):$(id -g) -it --rm --gpus all tensorflow/tensorflow:latest-gpu bash

<span style="color:#FF5555"><b>________                               _______________                </b></span>
<span style="color:#FF5555"><b>___  __/__________________________________  ____/__  /________      __</b></span>
<span style="color:#FF5555"><b>__  /  _  _ \_  __ \_  ___/  __ \_  ___/_  /_   __  /_  __ \_ | /| / /</b></span>
<span style="color:#FF5555"><b>_  /   /  __/  / / /(__  )/ /_/ /  /   _  __/   _  / / /_/ /_ |/ |/ / </b></span>
<span style="color:#FF5555"><b>/_/    \___//_/ /_//____/ \____//_/    /_/      /_/  \____/____/|__/</b></span>


<span style="color:#AA5500">You are running this container as user with ID 1000 and group 1000,</span>
<span style="color:#AA5500">which should map to the ID and group for your user on the Docker host. Great!</span>

<span style="color:#AA0000">tf-docker</span> <span style="color:#AA5500">/</span> &gt; ls
NGC-DL-CONTAINER-LICENSE  <span style="color:#5555FF"><b>boot</b></span>  <span style="color:#5555FF"><b>etc</b></span>   <span style="color:#55FFFF"><b>lib</b></span>    <span style="color:#55FFFF"><b>lib64</b></span>   <span style="color:#5555FF"><b>media</b></span>  <span style="color:#5555FF"><b>opt</b></span>   <span style="color:#5555FF"><b>root</b></span>  <span style="color:#55FFFF"><b>sbin</b></span>  <span style="color:#5555FF"><b>sys</b></span>  <span style="color:#5555FF"><b>usr</b></span>
<span style="color:#55FFFF"><b>bin</b></span>                       <span style="color:#5555FF"><b>dev</b></span>   <span style="color:#5555FF"><b>home</b></span>  <span style="color:#55FFFF"><b>lib32</b></span>  <span style="color:#55FFFF"><b>libx32</b></span>  <span style="color:#5555FF"><b>mnt</b></span>    <span style="color:#5555FF"><b>proc</b></span>  <span style="color:#5555FF"><b>run</b></span>   <span style="color:#5555FF"><b>srv</b></span>   <span style="background-color:#00AA00"><span style="color:#000000">tmp</span></span>  <span style="color:#5555FF"><b>var</b></span>
<span style="color:#AA0000">tf-docker</span> <span style="color:#AA5500">/</span> &gt; </pre>






<pre><span style="color:#55FF55"><b>[user@torre</b></span><span style="color:#FFFFFF"><b> nvidia-docker</b></span><span style="color:#55FF55"><b>]$</b></span> docker-compose up test
[+] Running 1/0
<span style="color:#0000AA"> ⠿ Container nvidia-docker-test-1  Rec...                                  0.0s</span>
Attaching to nvidia-docker-test-1
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> 
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> ==========
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> == CUDA ==
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> ==========
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> 
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> CUDA Version 11.8.0
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> 
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> Container image Copyright (c) 2016-2022, NVIDIA CORPORATION &amp; AFFILIATES. All rights reserved.
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> 
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> This container image and its contents are governed by the NVIDIA Deep Learning Container License.
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> By pulling and using the container, you accept the terms and conditions of this license:
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> https://developer.nvidia.com/ngc/nvidia-deep-learning-container-license
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> 
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> A copy of this license is made available in this container at /NGC-DL-CONTAINER-LICENSE for your convenience.
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> 
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> Fri Jan 27 22:05:33 2023       
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> +-----------------------------------------------------------------------------+
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> | NVIDIA-SMI 525.85.05    Driver Version: 525.85.05    CUDA Version: 12.0     |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |-------------------------------+----------------------+----------------------+
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> | GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |                               |                      |               MIG M. |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |===============================+======================+======================|
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |   0  NVIDIA GeForce ...  Off  | 00000000:0B:00.0  On |                  N/A |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> | 26%   49C    P0    29W / 180W |   1537MiB /  6144MiB |     24%      Default |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |                               |                      |                  N/A |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> +-------------------------------+----------------------+----------------------+
<span style="color:#00AAAA">nvidia-docker-test-1  |</span>                                                                                
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> +-----------------------------------------------------------------------------+
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> | Processes:                                                                  |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |        ID   ID                                                   Usage      |
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> |=============================================================================|
<span style="color:#00AAAA">nvidia-docker-test-1  |</span> +-----------------------------------------------------------------------------+
<span style="color:#00AAAA">nvidia-docker-test-1 exited with code 0</span>
</pre>



# Developing with CUDA in C
> docker-compose run cuda bash
- Open an interactive session in the CUDA enabled container

<br>

> nvcc program.cu -o executable
- Compilation of a simple CUDA program
  - The `nvidia/cuda` image includes nvcc

<br>

> ./executable
- Runs the program 

## Examples
I've written two simple C programs, `helloworld.cu` which just confirms everythings working fine, and `vectorsum.cu` that adds two 1000000000 elements arrays one by one. Both can be compiled and run as described earlier. <!-- The `nvidia/cuda` image is based on Ubuntu (`cat /etc/*release`), --> The latter's <u>performance is comparable to running locally</u>.
