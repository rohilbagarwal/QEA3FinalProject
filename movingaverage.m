function averaged_accel=movingaverage(accel)

x=length(accel(:,1));
y=length(accel(1,:));

averaged_accel = zeros(x,y);
for n=1:length(accel(1,:))
    averaged_accel(1,n) = 1/3*accel(1,n) + 1/3*accel(2,n);
    for k = 2:length(accel(:,1))-1
        averaged_accel(k,n) = 1/3*accel(k,n) + 1/3*accel(k-1,n) + 1/3*accel(k+1,n);
    end
    averaged_accel(end,n) = 1/3*accel(end,n) + 1/3*accel(end-1,n);
end