% written by Hangwei Qian (qian0045@e.ntu.edu.sg),  25-Mar-2018 13:29:06
% This file is to read the activity data, and transform into Random Fourier
% Features (RFF)

clear all
clc
load('sample_data.mat');

% row shold be features, column should be instances
XTrain = data_';
XTest = data_t';
NTrain = size(XTrain,2);
D = size(XTrain,1);

% define the dimension of RFF and generate corresponding features
NProj = 40; 
tmp_W = randn(NProj, D);
tmp_norm_W = tmp_W/max(max(tmp_W));
W = sqrt(2)*tmp_norm_W;
bias = 2*pi*rand(NProj,1);
G_train = (cos(W*XTrain+repmat(bias,1,size(XTrain,2)))/sqrt(NProj))';
G_test = (cos(W*XTest+repmat(bias,1,size(XTest,2)))/sqrt(NProj))';

%save training and testing data in rsmm format
rsmmWrite(strcat('rsmm.train'), label_, group_, sparse(G_train));
rsmmWrite(strcat('rsmm.test'), label_t, group_t, sparse(G_test));

