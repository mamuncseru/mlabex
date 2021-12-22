%% exercise-1

t = 0:1:pi;
f = 2;
y = sin(2*pi*t);
stem(t, y);
ylabel('Amplitude');
xlabel('e');
title('Sinusoidal Sequence');

%% 
fs = 2000;
T = 1/fs;
t  = 0:T:pi;
A = 5;
y = A * cos(2*pi*3*t);
stem(t, y)

%%
t=0:0.01:pi
y = 2*cos(2*pi*2*t)
plot(t, y)
