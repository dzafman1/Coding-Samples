%% Emmanuel Taylor
% ENEE222 - Elements of Discrete Signal Analysis
% Lab Assignment 12

% Information:
% Filter Used: High Pass Filter
% Passband: 0.15
% Stopband: 0.10
% Ripple and Attentuation Ratio: 100/100

[x, Fs] = wavread('noisy_clip_12.wav');
% Fs = 11025
N = 512;
S = spectrogram(x, 512, 0);

% These figures were used to figure out the passband and the stopband
% values
figure;
spectrogram(x, 512, 0);
title 'Spectrogram Graph of Vector x'
figure;
mesh(db(abs(S)));
title 'Mesh Graph of Vector x'
axis tight
view(100, 45);

% Using the filter function to reconstruct the vector x into a new vector
% that contains less noise.
y = filter(bb, 1, x);
soundsc(y, Fs)
wavwrite(y, Fs, 'taylor_labhw_12.wav');

% Coefficient Vector Used:
% bb =
% Columns 1 through 4
% 0.003903963595779  -0.002767188937122  -0.002792910853053  -0.003066456671143
% Columns 5 through 8
% -0.003277724700009  -0.003189770740176  -0.002648151456591  -0.001596720455544
% Columns 9 through 12
% -0.000089442883236   0.001710019616626   0.003543919897151   0.005094937897632
% Columns 13 through 16
% 0.006037072635407   0.006090637005875   0.005089896818088   0.003018571626698
% Columns 17 through 20
% 0.000050828228905  -0.003454344877944  -0.006985045426292  -0.009936334238509
% Columns 21 through 24
% -0.011698094977355  -0.011758186862093  -0.009805178812615  -0.005805596622003
% Columns 25 through 28
% -0.000059459997758   0.006795539980522   0.013827224245615   0.019900926666640
% Columns 29 through 32
% 0.023813929358348   0.024449419499167   0.020937495586755   0.012801576015143
% Columns 33 through 36
% 0.000064754463193  -0.016715425431050  -0.036480269043538  -0.057711549325729
% Columns 37 through 40
% -0.078642930493836  -0.097404084238459  -0.112256207226152  -0.121784584056740
% Columns 41 through 44
% 0.874932662082382  -0.121784584056740  -0.112256207226152  -0.097404084238459
% Columns 45 through 48
% -0.078642930493836  -0.057711549325729  -0.036480269043538  -0.016715425431050
% Columns 49 through 52
% 0.000064754463193   0.012801576015143   0.020937495586755   0.024449419499167
% Columns 53 through 56
% 0.023813929358348   0.019900926666640   0.013827224245615   0.006795539980522
% Columns 57 through 60
% -0.000059459997758  -0.005805596622003  -0.009805178812615  -0.011758186862093
% Columns 61 through 64
% -0.011698094977355  -0.009936334238509  -0.006985045426292  -0.003454344877944
% Columns 65 through 68
% 0.000050828228905   0.003018571626698   0.005089896818088   0.006090637005875
% Columns 69 through 72
% 0.006037072635407   0.005094937897632   0.003543919897151   0.001710019616626
% Columns 73 through 76
% -0.000089442883236  -0.001596720455544  -0.002648151456591  -0.003189770740176
% Columns 77 through 80
% -0.003277724700009  -0.003066456671143  -0.002792910853053  -0.002767188937122
% Column 81
% 0.003903963595779
