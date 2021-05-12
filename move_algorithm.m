function movename=move_algorithm(freq,mag)

threshold = 1.4;
start = 0;
stop = 0;

for f=1:length(freq)
    if (freq(f) >= -0.03) && (freq(f) <= 0.03)
        start = f;
    elseif (freq(f) >= threshold-0.03) && (freq(f) <= threshold+0.03)
        stop = f;
    end
end

[maxval,maxindex]=max(mag(start:stop,3)); %Only looking at z axis

if maxval < 0.5 
    if max(mag(1:length(freq),1)) > 1.5 %Only looking at x axis, CONSIDER CHANGING FROM 1.0 TO 1.5
        movename = 'In And Out';
    else
        movename = 'Normal Dribble';
    end
else
    movename = 'Crossover';
end
    
    
    