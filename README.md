**myRFDiffusion**
===================================
本文是对[RF-Diffusion](https://github.com/mobicom24/RF-Diffusion)的学习档案，个人使用

**Structure**
-------------

本项目部署在服务器上的目录结构如下
![image](https://github.com/HIT-CY/myRFDiffusion/blob/master/img/structure1.png)
![image](https://github.com/HIT-CY/myRFDiffusion/blob/master/img/structure2.png)

**FMCW Data Generation**
-----------
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



