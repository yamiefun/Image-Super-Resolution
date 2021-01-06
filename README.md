# Image Super Resolution
This repository is the project 4 for NCTU course IOC5008: Selected Topics in Visual Recognition using Deep Learning.

0. [Introduction](#Introduction)
1. [How To Use](#How-To-Use)
2. [Result](#Result)
3. [Reference](#Reference)

## Introduction
The purpose of this project is to train a model to reconstruct a high-resolution image from a low-resolution image by a factor of 3.
[dataset](https://drive.google.com/drive/u/3/folders/1H-sIY7zj42Fex1ZjxxSC3PV1pK4Mij6x)

## How To Use
1. There are only HR training image in the dataset, so you need to generate the corresponding LR image by running `generate_lr.py`. Since this the goal of this project is to train a model to rescale the LR image by a factor of 3, this code only generates images 3 times smaller to the original images.

2. Make sure the path of HR and LR images should be the same as [DIV2k dataset](https://data.vision.ee.ethz.ch/cvl/DIV2K/), or the model won't work properly.

3. Run `bash demo.sh` in `EDSR-PyTorch/src/`. You can select the script in `demo.sh` to train or to test the model. Make sure the GPU settings in the scripts are suitable for your machine.
Example image of training:
![](https://i.imgur.com/7n6xWkv.png)

## Result

## Reference 
+ [EDSR repo](https://github.com/thstkdgus35/EDSR-PyTorch)
+ [EDSR paper](https://arxiv.org/pdf/1707.02921.pdf)