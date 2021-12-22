% aim of Experiment:- To develop the program for finding the convolution
% between two sequences
% appartus:- PC installed with Matlab Software

%% Program 1
x = input('enter the first sequence');
h = input('enter the second sequence');
y = conv(x, h);
subplot(2, 2, 1);
stem(x);
xlabel('a');
ylabel('Input Sequence');
subplot(2, 2, 2);
stem(h);
xlabel('b');
ylabel('Impulse Sequence');
subplot(2, 2, 3);
stem(y);
xlabel('c');
ylabel('output sequence');
title('Convolution between two sequences');

%% Program 2:
clc;
close all;
x = [1, 2, 3, 4]; %first signal or input signal
h = [1, 1, 1, 1]; %second signal
N1 = length(x);
N2 = length(h);
X = [x, zeros(1, N2)]; % padding of N2 zeros
H = [h, zeros(1, N1)]; % padding of N1 zeros

for i =1:N1+N2-1
    y(i)=0;
    for j=1:N1
        if(i-j+1 > 0)
            y(i) = y(i)+X(j) * H(i-j+1);
        else
        end
    end
end
stem(y);
ylabel('y[n]');
xlabel('----->n');
title('convolution of two signal');

%% Use what is in the noisy script to generate a noisy sine wave:
fs = 1e4;
t = 0:1/fs:5;
sw = sin(2*pi*262.62*t); % Middle C
n = 0.1*randn(size(sw));
swn = sw + n;

%% Use a simple lowerpass (averaging) _1ter:
b = [.25 .25 .25 .25];
a = [1 0 0 0];
y = filter(b, a, swn);
plot(t,y), axis([0 0.04 -1.1 1.1])
