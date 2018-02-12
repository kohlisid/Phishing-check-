function [q] = grd( alpha, lamda )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes her
% input=importdata(training_set_q2);
input = importdata('C:\Users\souvik paul\Desktop\ques2 ML\training_set_q2.csv');
Y=input([1:6000],31);
k=1;
while k<=6000,
    if Y(k)==-1;
        Y(k)=1;
    else
        Y(k)=0;
end;
        k=k+1;
end;
X([1:6000],[2:31])=input([1:6000],[1:30]);
X([1:6000],1)=ones([1:6000],1);
q=zeros(1,31);
i=1;
j=1;
% alpha=0.5;
temp=zeros(1,31);
a=[];
while i<=5000,
    j=1;
    while j<=31,
        temp(j)= (q(j)-q(j)*alpha*lamda/6000)-alpha*sum(sigmoid(q,X,Y,j))/6000;
        j=j+1;
    end;
    a=[a cost(temp,X,Y,lamda)];
    q=temp;
    i=i+1;
end;
plot(1:5000,a,'r');
end