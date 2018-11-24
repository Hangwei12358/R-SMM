# R-SMM
Codes for AAAI 2018 paper "Sensor-based Activity Recognition via Learning from Distributions".

> ```
>@inproceedings{DBLP:conf/aaai/QianPM18,
>  author    = {Hangwei Qian and
>               Sinno Jialin Pan and
>               Chunyan Miao},
>  title     = {Sensor-Based Activity Recognition via Learning From Distributions},
>  booktitle = {{AAAI}},
>  pages     = {6262--6269},
>  publisher = {{AAAI} Press},
>  year      = {2018}
>}
> ```

The codes are tested in Ubuntu 14.04, with Matlab R2017b.

To run the code, please follow the steps:
1. run **preprocess.m** to generate the corresponding RFF from activity data. The sample data is from Skoda dataset. Notice the rsmmWrite function is generated from folder .\rsmmWrite. If you run the algorithm in a different OS, then you will need to run make.m first.
2. run **rsmm.sh** in terminal to train and test the proposed R-SMM algorithm. It will take around 5 minutes. If you apply the proposed method to other applications, please tune the parameters. The prediction results of each activity will be stored in test.txt.

