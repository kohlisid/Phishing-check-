function [ val ] = sigmoid( q ,X, Y,x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
j=1;
val([1:6000], 1)=zeros([1:6000], 1);
while j<=6000
i=1;
h=0.0;
while i<=31
    h=h+q(i)*X(j,i);
    i=i+1;
end;
val(j, 1)=(1/(1+exp(-h))-Y(j))*X(j , x);
j=j+1;
end 
end
