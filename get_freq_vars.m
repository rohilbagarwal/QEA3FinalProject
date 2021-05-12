function [freq,mag]=get_freq_vars(x, Fs)

% make a frequency domain plot with frequency labels
%
%   x = input signal
%   Fs = sampling frequency in Hz

if(mod(length(x),2) ~=0)
    x = x(1:end-1);
end

freq = linspace(-Fs/2, Fs/2-Fs/length(x),length(x));
mag = 1/length(x)*fftshift(abs(fft(x)));


% if(mod(length(x),2) ~=0)
%     x = x(1:end-1);
% end
% 
% freq = linspace(-Fs/2, Fs/2-Fs/length(x),length(x));
% 
% for n=1:length(1,:)
%     mag(:,n) = 1/length(x,n)*fftshift(abs(fft(x,n)));
% end
