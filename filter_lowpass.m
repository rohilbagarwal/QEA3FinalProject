function low_mag=filter_lowpass(freq,mag,Fs)

for n=1:length(mag(1,:))
    for i=1:length(freq)
        if (freq(i) >= -Fs && freq(i) <= -Fs/4) || (freq(i) >= Fs/4 && freq(i) <= Fs)
            low_mag(i,n) = mag(i,n)*.2;
        else
            low_mag(i,n) = mag(i,n);
        end
    end
end