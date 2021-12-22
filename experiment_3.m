% aim of experiment:- TO develop the program for finding the DFT
% appartus:- PC installed with Matlab Software

%% Program:-
x=input('enter the input sequence');
% enter the input sequence[1 2 3 4 5 7 8]
n = input('enter the length of sequence');
% enter the length of sequence8
X = fft(x, n);
figure(1)
stem(x);
figure(2)
plot(x);
figure(3)
plot(X);
title('DFT of the input sequence');
