function [ v ] = vtri( t )
v = t;
for i=1:size(t,2)
    ts = 20e-6;
    tt = mod(t(i),ts);
    if tt < 19e-6
        v(i) = tt*1e6;
    elseif tt < 19.25e-6
        v(i) = 19;
    elseif tt < 19.75e-6
        v(i) = 19-(tt-19.25e-6)*38e6;
    else
        v(i) = 0;
    end
end

