function nongravity_mag=remove_gravity(freq,mag)

for n = 1:length(mag(1,:))
    for i = 1:length(freq)
        if freq(i) < 0.25 && freq(i) > -0.25
            mag(i,n) = mag(i,n)*0.02;
        end
    end
end

nongravity_mag = mag;