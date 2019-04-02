function [x,y,d]=extended_euclidean(a,b)
% The extended Euclid algorithm find a greatest common divisor (gcd) 
% of two integer numbers in a Euclid space.
%
% Input: Two positive integers a and b with a ? b ? 0
% 
% Output: Integers x,y,d such that d = gcd(a,b) and a*x + b*y = d
%
% Example: Euclidean value between two integers is shown.
%   [x,y,d] = extended_euclidean(a, b)
%
% References:
%  https://en.wikipedia.org/wiki/Extended_Euclidean_algorithm
%  https://stackoverflow.com/questions/43118624/extended-algorithm-implementation-in-matlab
%
% Code by Dunadar - March 2017
% Documented by Daniel Cantón-Enriquez - March 2019

if b==0
    x=1;
    y=0;
    d=a;
    return;
end
[x1,y1,d1]=extended_euclidean(b,mod(a,b));  

x=y1;
y=x1-floor(a/b)*y1;
d=d1;

end 