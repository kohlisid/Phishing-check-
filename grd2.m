function [q] = grd2( alpha , lamda )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes her
% input=importdata(training_set_q2);
input = importdata('C:\Users\souvik paul\Desktop\ques2 ML\training_set_q2.csv');
Y=input([1:6000],31);
k=1;
 while k<=6000,
    if Y(k)==-1;
        Y(k)=0;
end;
        k=k+1;
end;
X([1:6000],[2:31])=input([1:6000],[1:30]);
X([1:6000],1)=ones([1:6000],1);
q=zeros(1,31);
q(1)=1;
i=1;
j=1;
temp=zeros(1,31);
while i<=1000,
    j=1;
    while j<=31,
        temp(j)= (q(j)-q(j)*alpha*lamda/6000)-alpha*sum(sigmoid(q,X,Y,j))/6000;
        j=j+1;
    end;
    q=temp;
    i=i+1;
end;
end

