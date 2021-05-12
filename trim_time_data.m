function [trimmed_time,trimmed_accel]=trim_time_data(t,accel,Fs,trim)

trimmed_time = t(Fs*trim+1:length(t)-(Fs*trim));

for n = 1:length(accel(1,:))
    trimmed_accel(:,n) = accel(Fs*trim+1:length(t)-(Fs*trim),n);
end