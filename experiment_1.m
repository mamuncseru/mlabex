%% (a) Unit Step
N = 21;
x = ones(1, N);
n = 0:1:N-1;
subplot(2,2,1);
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('Unit Step Sequence');


%% (b) Exponential Sequence
x2 = 0.8.^(n);
subplot(2,2,3);
stem(n, x2);
xlabel('n');
ylabel('x(n)');
title('Exponential Sequence');


%% (c) Ramp Sequence
x = input('enter the length of ramp sequence');
t = 0:x;
subplot(2,2,1);
stem(t,t);
xlabel('c');
ylabel('Amplitude');
title('Ramp Sequence');


%% (d) Exponential Sequence
x2 = 0.8.^(n);
subplot(2, 2, 3);
stem(n, x2);
xlabel('n');
ylabel('x(n)');
title('Exponential Sequence');


%% (e) Sinusoidal sequnece
t = 0:0.01:pi;
y = sin(2*pi*t);
plot(t, y);
ylabel('Amplitude');
xlabel('e');
title('Sinusoidal Sequence');


%% (f) Cosine Sequence:
t = 0:0.01:pi;
y = cos(2*pi*t);
subplot(2, 2, 1);
plot(t, y);
ylabel('Amplitude');
xlabel('f');
title('Cosine Sequence');



