clear all;
close all;
clc;

x = [[1,0,0];[1,1,0];[1,0,1];[1,1,1]]
d = [0;0;0;1];
[N,n] = size(x);
w = randn(n,1)
lr = 0.01;
E = 1;
axis([-2 3 -2 3]);
grid on; hold on
plot(x(:,2),x(:,3),'r*');
L = 0;
er = min(x(:,2))
while E ~= 0
   E = 0;
   
   for i=1:N
       o = x(i,:) * w;
       yi = hardlim(x(i,:) * w);
       ei = d(i) - yi;
       w = w + lr *ei*x(i,:)';
       E = E + ei^2;
 
   end;
  
   hold on; 
   
   plot(w(1),w(2),'*');
   
end;