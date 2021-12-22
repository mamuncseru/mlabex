%% Unit step sequence:
N = 21;
x = ones(1, N);
n = 0:1:N-1;
subplot(2,2,1);
stem(n, x);
xlabel('n'); ylabel('x(n)');
title('Unit step sequence');

%% Exponential Sequence:
x2 = 0.8.^(n);
subplot(2,2,2);
stem(n, x2);
xlabel('n');
ylabel('x(n)');
title('Exponential Sequence');

%% Ramp Sequence
x = input('Enter the length the length of ramp sequence');
t = 0:7;
subplot(2,2,3);
stem(t,t);
xlabel('c');
ylabel('Amplitude');
title('Ramp sequence');

%% Sinusoidal sequence:-
t = 0:0.01:pi;
y = sin(2*pi*t);
subplot(2,2,4);
plot(t, y);
ylabel('Amplitude');
xlabel('e');
title('Sinusoidal Sequence');

%% Cosine Sequence:-
t = 0:0.01:pi;
y = cos(2*pi*t);
subplot(2,2,1);
plot(t, y);
ylabel('Amplitud');
xlabel('f');
title('Cosine Sequence');

%% Convolution
x = input('enter the first sequence');
h = input('enter the second sequence');
y = conv(x, h);
subplot(2, 2, 1);
stem(x);
xlabel('a');
ylabel('Input Sequence');
subplot(2,2,2);
stem(h);
xlabel('b');
ylabel('Impulse Sequence');
subplot(2,2,3);
stem(y);
xlabel('c');
ylabel('output sequence');
title('Convolution between two sequences');

%% 
x = [1,2,1,1]; % first signal or input signal
h = [1, -1, 1, -1];
N1 = length(x);
N2 = length(h);

X = [x, zeros(1, N2)]; %padding of N2 zeros
H = [h, zeros(1, N1)]; %padding of N1 zeros
for i = 1:N1+N2-1
    y(i)=0;
    for j=1:N1
        if(i-j+1 > 0)
            y(i) = y(i) + X(j)*H(i-j+1);
        else
        end
    end
end

stem(y);
ylabel('y[n]');
xlabel('--->n');
title('convolution of two signal');

%% noisyC
fs = 1e4;
t = 0:1/fs:5;
sw = sin(2*pi*262.62*t); % Middle C
n = 0.1*randn(size(sw));
swn = sw + n;
disp(swn)

%% DFT
x = input('Enter the input sequence');
n = input('enter the length of sequence');
X = fft(x, n);
stem(x);
plot(x);
plot(X);
title('DFT of the Input sequence');

%% Q
t = 0:0.001:5;
x = sin(2*pi*50*t)+sin(2*pi*120*t);
y = x + 2*randn(size(t));
plot(1000*t(1:50), y(1:50));
xlabel('time(milliseconds)')
Y = fft(y, 512);
Pyy=Y.*conj(Y)/512;
f=1000*(0:256)/512;
plot(f, Pyy(1:257))
title('Frequency content of y')
xlabel('frequencey (HZ)')

%% auto correlation
x = input('enter the first sequence');
y = xcorr(x, x);
subplot(2,2,1);
stem(x);
xlabel('a');
ylabel('Input Sequence');
subplot(2,2,2);
stem(y);
xlabel('b');
ylabel('output sequence');
title('Auto correlation of a sequence');

%% correlation
% x(n) = [3, 11, 7, 0,-1,4,2], x = [-3,3];
% y(n) = x(n-2)+w(n)
clc;
x = [3, 11, 7, 0,-1,4,2];
ny = nx+2;
y = x;