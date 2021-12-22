% x(t) = 2 sin 2*pi*1000t
% w(n)  Haming Window
% Rect(n) = Rectangular window
% Triang(n) = Triangular window
%% sin wave
A = 2;
f = 15000;
t = linspace(0,1,500);
y = A*sin(2*pi*f*t);

%figure(1);
subplot(3, 3, 1)
plot(t, y)
title('Sine Wave')

%%% Hamming window
N = 500;
hm = 0.54 - 0.46*cos(2*pi*(0:N-1)'/(N-1));
%hm = hamming(N+1);

%figure(2);
subplot(3, 3, 2)
plot(hm)
title('Hamming window')

wx = y.*hm';
subplot(3, 3, 3)
plot(wx)
title('sine wave multiplied by Hamming window')

%%% Rectangular Window
N = 500;
% rw = rectwin(N);
rw = ones(N, 1);
subplot(3, 3, 4)
plot(rw);
title('Rectangular window');

rwx = y.*rw';
subplot(3, 3, 5)
plot(rwx)
title('sine wave multiplied by Rectangular window')

%%% Triangluar Window
N = 500;
tw = triang(N);
    
subplot(3, 3, 6)
plot(tw);
title('Triangular window');

twx = y.*tw';
subplot(3, 3, 7)
plot(twx)
title('sine wave multiplied by Triangular window')