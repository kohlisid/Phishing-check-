function [] = test()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes her
% input=importdata(training_set_q2);
input = importdata('C:\Users\souvik paul\Desktop\ques2 ML\test_set.csv');
f=fopen('ans.csv','w');
%Y([6001:9055], 1)=input([6001:9055],31);
X([1:2000],[2:31])=input([1:2000],[1:30]);
X([1:2000],1)=ones([1:2000],1);
 a=0.0009; % value of alpha
 l=10; % value of lambda
 ans=[];
q=grd(a,l);
q2=grd2(a,l);  
k=1;
while k<=2000,
test=X(k,[1:31]);
test2=X(k,[1:31]);
val=q*test';
val2=q2*test2';
pro=1/(1+exp(-val));
pro2=1/(1+exp(-val2));
if pro < pro2
    pro=1;
else
pro=-1;
end;
fprintf(f,'%d\n',pro);
k=k+1;
end;
fclose(f);
end