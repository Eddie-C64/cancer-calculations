%This creates a script file for the statistics
    %for the heights.
        %Eduardo Carrasco
load('height.mat');

mean('height.mat');
median=median('height.mat');
var=var('height.mat');
std=std('height.mat');

N=size('height.mat')
%xvalues=min('height.mat'):max('height.mat')