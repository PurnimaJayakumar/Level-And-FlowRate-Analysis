function [y,tOut] = lph2lpm(x,tIn,varargin)
%LPH2LPM Convert flow rate from LPH to LPM

% Convert the signal
y = x ./ 60;

% Time values are unchanged
tOut = tIn;

end
