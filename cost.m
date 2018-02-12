function [ J ] = cost( theta,X ,y ,l)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
h=1./(1+exp(-X*theta'));
J=sum((h-y).*(h-y))/12000+l*sum(theta'.*theta')/12000;
end

