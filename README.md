**myRFDiffusion**
===================================
本文是对[RF-Diffusion](https://github.com/mobicom24/RF-Diffusion)的学习档案，个人使用

**Structure**
-------------

本项目部署在服务器上的目录结构如下<br>
![image](https://github.com/HIT-CY/myRFDiffusion/blob/master/img/structure1.png)

![image](https://github.com/HIT-CY/myRFDiffusion/blob/master/img/structure2.png)

**FMCW Data Generation**
-----------
对FMCW数据集进行处理，最终得到数据集维度（3x4）x128x256x（600x22），其中3是发送天线数量，4是接收天线数量，128是每一帧的chirp数量，256是每一帧的采样率，共22个人，每一个人600帧数据。<br>
参数调整：sample_rate=256，input_dim=128，cond_dim=1，batch_size=16<br>
在Dockerfile所在目录下构建docker镜像<br>
```python
    docker build --no-cache -t myfmcw .
```
在此目录下运行docker镜像进行训练<br>
```python
    docker run --rm --gpus all myfmcw python3 ./RF_Diffusion_fmcw/train.py --task_id 1
```
在此目录下运行docker镜像生成FMCW Data<br>
```python
    docker run --rm --gpus all myfmcw
```
**Result**
----------
![image](https://github.com/HIT-CY/myRFDiffusion/blob/master/img/result1.png)<br>
![image](https://github.com/HIT-CY/myRFDiffusion/blob/master/img/result2.png)<br>



